package com.shopping.controller;

import java.io.IOException;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopping.DaoImpl.ShopingDaoImpl;
import com.shopping.model.AdminModel;
import com.shopping.model.Ragistration;
import com.shopping.model.*;

@Controller
public class ShopController {

	@Autowired
	private ShopingDaoImpl shop;
	
	@RequestMapping("/home")
	public String home(Model model) {
		List<shopping> information = shop.getInformation();

		model.addAttribute("sho", information);

		return "index";
	}	
	@RequestMapping("/information")
	public String SaveInformation(@RequestParam("name") String name,
			@RequestParam("head") String head, @RequestParam("para") String para, @RequestParam("price") int price,
		    @RequestParam("image") String image,Model model) {
		
		shopping ob = new shopping();
						  		  					
		ob.setName(name);
		ob.setHead(head);
		ob.setPara(para);
		ob.setPrice(price);
		ob.setImages(image);		
	
		model.addAttribute("shop", ob);

		int save = shop.save(ob);

		if (save > 0) {
			System.out.println("Data is inserted");
		} else {
			System.out.println("something is wrong");
		}

		return "redirect:/AdminHomepage";
	}

	@RequestMapping("/addRecord")
	public String d() {
		return "HomeData";
	}

	@RequestMapping("ragister")
	public String Ragister() {

		return "Ragistration";
	}

	@RequestMapping("/logPage")
	public String Login() {
		return "LoginPage";
	}

	@RequestMapping("/loginP")
	public String loginProcess(@RequestParam("loginUser") String email, @RequestParam("loginPassword") String password,
			Model model, HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
			Ragistration s = new Ragistration();

		s.setEmail(email);
		s.setPassword(password);

		boolean login = shop.Login(s);

		if (!login) {
			
				System.out.println("Login failed");

		} else {
			
			HttpSession session = request.getSession();
			session.setAttribute("email",s.getEmail());
			session.setAttribute("password",s.getPassword());
			request.getRequestDispatcher("/home").forward(request, resp);
			
			
		}
		return "LoginPage";
	}	
	@RequestMapping("/showProduct/{id}")
	public String showProductDetail(@PathVariable int id, Model model) {
		shopping s = new shopping();
		s.setId(id);

		shopping showProductById = shop.showProductById(id);

		model.addAttribute("shop", showProductById);

		return "showAllDetails";
	}
	@RequestMapping("/ragistrationPage")
	public String ragisterPage() {
		return "Ragistration";
	}
	@RequestMapping("/ragistrationProcess")
	public String ragisterProcess(@ModelAttribute Ragistration ragister, Model model) {

		int r = shop.RagistrationSave(ragister);

		if (r > 0) {
			System.out.println("Record successfully save");
		} else {
			System.out.println("something is wrong");
		}
		return "LoginPage";
	}
	@RequestMapping("adminLog")
	public String logAdmin()
	{
		
		return "adminLogin";
	}
	@RequestMapping("/admin")
	public String AdminLogin(@RequestParam("username")String id,@RequestParam("password")String pass,Model model,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	{			
		AdminModel add=new AdminModel();
		add.setUserId(id);
		add.setPassword(pass);
		int log = shop.adminProcess(add);
		
		if(log==1)
		{
			response.sendRedirect("AdminHomepage");
			//request.getRequestDispatcher("AdminHomepage").forward(request, response);
		}
		else {
			
			System.out.println("login failed");
		}
				
		return "adminLogin";
	}
	@RequestMapping("/AdminHomepage")
	public String adminHome(Model model)
	{
		List<shopping> information = shop.getInformation();

		model.addAttribute("sho", information);

		return "AdminHome";
	}	
	@GetMapping("/updateProduct/{myparam}")
	public String productUpdate(@PathVariable("myparam")int id,Model model,HttpServletResponse response,HttpServletRequest request) throws ServletException, IOException
	{
		
		shopping product = shop.showProductById(id);
		
		model.addAttribute("shop", product);				
						
		return "UpdateProductById";
		
	}	
	@RequestMapping(value="/updateProcess")
	public String updateProduct(@RequestParam("id")int id, @RequestParam("name")String name,@RequestParam("head")String head,@RequestParam("paragraph")String paragraph,@RequestParam("price")int price, Model model) 
	{		
		
		  shopping sho=new shopping(); 
		  sho.setId(id);
		  sho.setName(name);
		  sho.setHead(head); 
		  sho.setPara(paragraph);
		  sho.setPrice(price);
		 
		 int ud = shop.updateProductById(sho); 
		  
		 System.out.println(ud);
		  		
		return "redirect:/AdminHomepage";			
	}
	@RequestMapping("/deleteProcess/{myparam}")
	public String delete(@PathVariable("myparam")int id,Model model)
	{
		shop.deleteProcess(id);
		
		return "redirect:/AdminHomepage";
	}
	@RequestMapping("/SaveProduct")
	public String SaveProduct(@RequestParam("id")int id,@RequestParam("name")String name,@RequestParam("head")String head,@RequestParam("para")String para,@RequestParam("price")int price,@RequestParam("size")int size,@RequestParam("quantity")int quantity,Model model,HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession(false);
		
		String email =(String) session.getAttribute("email");
		
		SaveProduct sp=new SaveProduct();
		sp.setUserId(email);
		sp.setId(id);
		sp.setName(name);
		sp.setHead(head);
		sp.setPara(para);
		sp.setPrice(price);
		sp.setSize(size);
		sp.setQuanitity(quantity);
		sp.setImage("image");
		
		shop.SaveProcess(sp);				
		return "redirect:/home";
	}
	@RequestMapping("/profile/{email}")
	public String profile(@PathVariable("email")String email,Model model)
	{
		
		String em=email=email+".com";				
				
		Ragistration user = shop.getUser(email);
		System.out.println("after email");
		
		model.addAttribute("user",user);
										
		return "Profile";
	}
	@RequestMapping("/showSaveProductToUser/{id}")
	public String showProductToUser(@PathVariable("id")String email,Model model)
	{
		String em=email=email+".com";
	
		List<com.shopping.model.SaveProduct> product = shop.getProduct(em);
				
		model.addAttribute("pd", product);
											
		return "showSaleProduct";
	}
	@RequestMapping("logout/{id}")
	public String logout(@PathVariable("id")String email)
	{
			
		return "logout";
	}
}