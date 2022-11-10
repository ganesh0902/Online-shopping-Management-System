<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<style type="text/css">
		
		body{
			
			background-image: url("https://static.toiimg.com/photo/msid-64414041/64414041.jpg");
			background-size: cover;
		
		}		
		#first{
				width:600px;
				height:600px;
				background-color: red;
				position: absolute;
				left:400px;
				top:50px;
				background-image: url("https://www.freecodecamp.org/news/content/images/2021/06/w-qjCHPZbeXCQ-unsplash.jpg");		
		}
		#first label{
							
					font-size:20px;
					font-style:itelic;
					margin-left: 70px;
		
		}
		#first input{
								
					width:400px;
					height:23px;
					margin-left: 70px;		
		}
		#first input[type="submit"]
		{
				
				width:250px;
				height:40px;
				border-radius: 20px;
				background-color:navy;
				color:white ;	
		}
		#second{
				position: absolute;
				top: 70px;		
		}		
	</style>
</head>
<body>	
	<form action="information"  method="get">	
		<section>
				<div id="first">
					<div id="second">														 			
						<label>Name</label><br>
						<input type="text" name="name"><br><br>
						<label>Head</label><br>
						<input type="text" name="head"><br><br>
						<label>Paragraph</label><br>
						<input type="text" name="para"><br><br>
						<label>Price</label><br>									
						<input type="text" name="price"><br><br>
						<label>Image</label><br>
						<input type="file" name="image" ><br><br>																		
						<input type="submit">					
					</div>
				</div>		
	</section>			
	</form>		
</body>
</html>