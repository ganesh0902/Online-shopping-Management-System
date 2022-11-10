<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ragistration</title>
	
	<style type="text/css">
	
	body{
			background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPNpExdYGv9BElA7DDiuRBgvAuEkSgBfUINuHQ5lTTxJMonUmOCJJO-eKtFEA0mXHn-1c&usqp=CAU");
	
	}	
	section{}
	section #first{
						position:relative;
						left:450px;
						width: 800px;
						height:700px;
						 background: rgba(0, 0, 0, 0.2);
						 		
	}
	section #first #second{
							
							position: absolute;
							top:100px;
							left:150px;							
	}	
	section #first #second input{
								
								width:250px;
								height:23px;
								border-radius: 10px;
	
	}
	section #first h2{
	
						position: relative;
						left:240px;
						margin-top: 5px;
						font-style: italic;
						font-size: 30px;
	}
	.button2{
		
		margin-left: 200px;
		margin-top: 20px;
		height: 35px;
				
	
	}
	.button2:hover {
  background-color: #2EE59D;
  box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
  color: #fff;
  transform: translateY(-7px);
}
	
	
	</style>
</head>
<body>

	<form action="ragistrationProcess" method="get">		
		<section>					
					<div id="first">
										<h2> Ragistration Form</h2>
					
							<div id="second">									
									Enter Name:<input type="text" name="fname" style="margin-left: 20px">
									<input type="text" name="lname"><br>
									<small style="margin-left: 120px;color: #E1D9D1">First Name</small>
									<small style="margin-left: 200px;color: #E1D9D1">Last Name</small>
									<br><br>
									Email :<input type="text" name="email" style="margin-left: 55px">
									<br><br>
									Password :<input type="text" name="password" style="margin-left: 38px">
									<br><br>
									Conatct:<input type="text" name="contact" style="margin-left: 50px"><br>
									<small style="margin-left: 120px;color:#E1D9D1">Contact</small>
									<br><br>									
									Gender<input type="text" name="gender" style="margin-left: 55px"><br><br>																	
									<label>Address</label>
									<input type="text" name="address1" style="margin-left: 45px"><br>
									<small style="margin-left: 100px;color: #E1D9D1">Street Address</small>									
									<br><br>									
									<input type="text" name="address2" style="margin-left: 100px"><br>
									<small style="margin-left: 100px;color: #E1D9D1">Street Address Line 2</small>
									<br><br>
									<input type="text" name="city" style="margin-left: 100px">
									<input type="text" name="State"><br>
									<small style="margin-left: 100px;color: #E1D9D1">City</small>
									<small style="margin-left: 250px;color: #E1D9D1">State /Province</small><br><br>
									<input type="text" name="pinCode" style="margin-left: 100px">
									<input type="text" name="country"><br>
									<small style="margin-left: 100px;color: #E1D9D1">Pin Code</small>
									<small style="margin-left: 250px;color: #E1D9D1">Contry</small><br><br>
																		
									<input type="submit" class="button2">
									
							</div>											
					</div>		
		</section>
	</form>
</body>
</html>