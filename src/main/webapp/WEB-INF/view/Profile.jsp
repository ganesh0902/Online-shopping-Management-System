<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
	
	<style type="text/css">
		
		
		body{
		
				 background-image: url("https://images.unsplash.com/photo-1665686306574-1ace09918530?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8b25saW5lJTIwc2hvcHBpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60");
				background-size: cover;
				color: white; 
		}
		
		#home{
				
				display: flex;		
		
		}
		#home div{
					
					flex: 1;												
		
		}
		#home #d1{
		
					flex: 1;
					position: relative;
					background-color: cyan;
					background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPQ9zc8tZXu9SR5TiNy-ZHvsW0LnClYmR8uWxnH-BT&s");
					
		}
		#home #d1 #l1{
				
				position: relative;
				top: 50px;
				margin-left: 20px;
				font-size: 20px;
		}
		#home #d1 #name{
				
				position: relative;
				top: 50px;
				left: 50px; 
				font-size: 25px;
		}
		#home #d1 #l2{
				
				position: relative;
				top: 50px;
				left:30px; 
				font-size: 25px;
				
				
		}
		#home #d1 #email{
				
				position: relative;
				top: 50px;
				margin-left: 20px;
				font-size: 20px;
				
		}
		#home #d1 img{
						
						position:relative;
						top:50px;
						left:120px;
						width: 200px;
						height:150px;
						border-radius: 90px;
		
		}
		#home #d2{
		
				flex: 2;
				
				margin-left: 20px;
				padding-left: 50px;
				padding-top: 50px;
				width: 500px;		
				background-color: white;
				color: black;		
				
				
		}
		 #home #d2 label{
		 	
		 	
		 	font-size: 22px;
		 	font-style: italic;		 		 
		 }
		 #home #d2 #fname{
		 
		 		padding-left: 120px;
		 		
		 }
		  #home #d2 #lname{
		 
		 		padding-left: 125px;
		 }
		  #home #d2 #email{
		 
		 		padding-left: 156px;
		 }
		  #home #d2 #contact{
		 
		 		padding-left: 140px;
		 }
		  #home #d2 #gender{
		 
		 		padding-left: 130px;
		 } #home #d2 #address1{
		 
		 		padding-left: 120px;
		 }
		  #home #d2 #address2{
		 
		 		padding-left: 115px;
		 }
		  #home #d2 #city{
		 
		 		padding-left: 160px;
		 }
		 #home #d2 #state{
		 
		 		padding-left: 150px;
		 }
		  #home #d2 #pincode{
		 
		 		padding-left: 120px;
		 }
		  #home #d2 #country{
		 
		 		padding-left: 120px;
		 		padding-bottom: 40px;
		 }
		  #home #d2 input[type="submit"]
		  {
		  
		  background-color: black;
		  color:white;
		  
		  }
		
	</style>
</head>
<body>
	
	<form action="">
	
			<section id="home">
						<div id="d1">
									
									<img alt="" src="https://p.kindpng.com/picc/s/475-4750705_school-administrator-icon-png-transparent-png.png"><br><br>
									<label id="l1"> Name </label>
									<label id="name">${requestScope.user.getFname() }</label>
									<br><br>
									<label id="email">Email id</label>
									<label id="l2">${requestScope.user.getEmail() } </label>	
																							
						</div>	
						<div id="d2">
								
								<label> First Name </label>
								<label id="fname">${requestScope.user.getFname() } </label>														
								
								<label style="padding-left: 100px"> Last Name</label>
								<label id="lname">${requestScope.user.getLname() } </label>
								<br><br>
								<hr>
								<br>	
								<label> Email</label>
								<label id="email">${requestScope.user.getEmail() }</label>								
									
								<label style="padding-left: 120px">contact</label>
								<label id="contact"> ${requestScope.user.getContact() } </label>
								<br><br>
								<hr>
								<br>	
								<label> Gender</label>
								<label id="gender">${requestScope.user.getGender() }</label>
								
								<label style="padding-left: 130px"> Address1 </label>
								<label  id="address1">${requestScope.user.getAddress2() }</label>
								<br><br>
								<hr>
								<br>	
								<label> Address2 </label>
								<label  id="address2">${requestScope.user.getAddress2() }</label>
									
								<label style="padding-left: 180px">  city</label>
								<label  id="city">${requestScope.user.getCity() }</label>
								<br><br>
								<hr>
								<br>	
								<label> State</label>
								<label  id="state">${requestScope.user.getState() }</label>
								
								<label style="padding-left: 150px"> pincode </label>
								<label  id="pincode">${requestScope.user.getPinCode() } </label>
								<br><br>
								<hr>
								<br>	
								<label>  country</label>
								<label  id="country">${requestScope.user.getCountry() }</label>
									
								<input type="submit" value="Update " style="margin-left: 100px;margin-top:10px;padding: 10px 40px 10px 40px">
								<br><br>
								<hr>												
							
						</div>		
			</section>			
	</form>
</body>
</html>