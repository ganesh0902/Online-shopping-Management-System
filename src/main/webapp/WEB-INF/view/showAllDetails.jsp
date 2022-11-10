<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<style type="text/css">
			
			body{
			
					background-image: url("https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074076.jpg?w=2000");
					
			}
			
			#showd{
					display: flex;;
					
			}
			#showd div{
						
						flex: 1;												
						margin-top: 70px;
						margin: 20px;
			}
			#showd #d1{
			
							margin-left: 300px;
											
			}
			#showd #d1 img{
			
							size: 100% 100%;
							height:100%;				
			}			
			#showd #d2{
						
						background-color:white;
						margin-right: 250px;
						height: 600px;						
						
			}
			#showd #d2 #size
			{
					position: relative;
					top: -50px;
					left:40px;
					margin-top: 20px;
			
			}
			#showd #d2 #sizeinput
			{	
					position: relative;
					top: -150px;
					left: 115px;
					width:70px;
					height:20px;
					margin-top: 20px;
				
			}
			#showd #d2 #quantity{
							
					position: relative;
					top: -127px;
					left: 50px;
					margin-top: 20px;
										
			}
			#showd #d2 #quantityInput
			{
					position: relative;
					top: -224px;
					left: 120px;
					width:70px;
					margin-top: 20px;
										
			}
			#showd #d2 h2{
							
							position: relative;
							top:20px;
							left:20px;
							font-size: 25px;								
							width:400px;
							text-indent: 20px;
							overflow: hidden;		
			}
			#showd #d2 #p1{
			
							position: relative;
							top:100px;
							left:15px;
							font-size: 15px;
							font-style:italic;
							width: 550px;
							height:100px;							
							overflow:scroll;			
							width: 404px;
							text-align: justify;
							text-indent: 40px;											
			}
		#showd #d2 #p2{
						position: relative;
						top: -120px;
						left: 20px;
						font-size: 25px;
						font-style: italic;
						margin-top: 50px;					
						width: 404px;	
							
		}
		#showd #d2 #dis
		{
				position: relative;
				top:-185px;
				left: 40px;
				color:green;
		
		}				
	#showd #d2 select{
						
						position: relative;
						top:70px;
						left:120px;
	}
	#showd #d2 #submit
	{
				position: relative;
				left:120px;
				top:-150px;
				text-decoration: none;				
				padding: 7px 50px 7px 50px;
				background-color: #2874A6;
				color: white;
				border-radius: 10px				
	}	
	</style>
</head>
<body>
		
<form action="${pageContext.servletContext.contextPath}/SaveProduct">		
		<section id="showd">
					
					<div id="d1">
							
							<img alt="" src="https://m.media-amazon.com/images/I/41RmyuSLXcL.jpg">	
					
					</div>			 
			 		
					<div id="d2">
								<input type="hidden" name="id" value="${requestScope.shop.getId() }">
								<input type="hidden" name="name" value="${requestScope.shop.getName() }">
								<input type="hidden" name="head" value="${requestScope.shop.getHead() }">
								<input type="hidden" name="para" value="${requestScope.shop.getPara() }">
								<input type="hidden" name="price" value="${requestScope.shop.getPrice() }">
																
								<h2> ${requestScope.shop.head }<br></h2>							
								<p id="p1">${requestScope.shop.getPara() }<br> </p>	
								<p id="p2">Price :${requestScope.shop.getPrice() }<br></p><br><br>
								<small id="dis"> 30% off</small>								
								<h4 id="size"> Size </h4><br><br>																													
								<select name="size" id="sizeinput">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>								
								</select><br><br>
								
								<h4 id="quantity"> Quantity </h4><br><br>																													
								<select name="quantity" id="quantityInput">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>								
								</select><br><br>
																								 																 
								 <input type="submit" id="submit" value="Ok">								 								 
				</div>																																																
			 
			</section>
		
		</form>
</body>
</html>