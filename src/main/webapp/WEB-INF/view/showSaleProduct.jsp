<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Show order </title>
	
	<style type="text/css">
		
		#displ{
					position:relative;
					left:50px;
					width:350px;					
					background-color: rgb(205, 92, 92); 
					box-shadow: 10px 10px 8px #888888;
					border-radius: 10px;
					float: left;
					margin: 60px;								
		}
		#displ div{
					
				height: 500px;	
		
		
		}
		#displ div img{
		
						width:350px;
						height:200px;
						border-radius: 2px
														
		}	
		#displ div input[type=submit]
		{
				position:relative;
				left:100px;
				top:-110px;			
				width:150px;
				height:30px;				
				align-items: center;
				color:white;	
				background-color: #34495E ;
				border-radius: 10px;					
		}
		#displ div #pName{
			
			position: relative;
			left:100px;
			font-size: 25px;
			top:-10px;
			overflow: hidden;
					
		}	
		#displ div #para{
		
		position: relative;
		 left:10px;
		top:-60px;
		width:300px;
		font-size: 15px;
		text-align:justify;
		text-indent:20px;		
		overflow:hidden;		
		}	
		#displ div #update
		{
				text-decoration: none;
				position: relative;
				left:-150px;
				top:-110px;				
				padding:6px 20px 6px 20px;
				color: white;		
				align-items: center;				
				background-color: #34495E ;
				border-radius: 10px;
				 
		}
		#displ div #delete
		{
				text-decoration: none;
				position: relative;
				left:20px;
				top:-110px;							
				padding:6px 20px 6px 20px;
				color: white;
				align-items: center;		
				background-color: #34495E ;
				border-radius: 10px;
		}		
				
	</style>	
</head>
<body>
			  		
	<c:forEach var="id" items="${requestScope.pd}">					  		
		<section id="displ">							
						<div>					 										 	
					 	<img alt="" src="https://m.media-amazon.com/images/I/41RmyuSLXcL.jpg">
					 	<p id="pName"><c:out value="${id.getName()}"></c:out> </p><br>
					 	<p id="para"><c:out value="${id.getHead()}"></c:out> </p>					 			
						<p style="position: relative;left:30px;top:-70px;font-size: 20px" >Price :<c:out value="${id.getPrice() }"></c:out></p>
						<p style="position: relative;left:220px;top:-123px;font-size: 20px" >Size :<c:out value="${id.getSize() }"></c:out></p>
						<p style="position: relative;left:30px;top:-120px;font-size: 20px" >Quantity :<c:out value="${id.getQuanitity() }"></c:out></p>
						<p style="position: relative;left:180px;top:-170px;font-size: 20px" >Total Bill :<c:out value="${id.getTotalAmount() }"></c:out></p>
						<p style="position: relative;left:20px;top:-150px;font-size: 20px" > date :<c:out value="${id.getDates() }"></c:out></p>																							
					     <a href="showProduct/${i.getId() }"><input type="submit" value="Buy" id="btn"></a> 																								
						 <a href="updateProduct/${i.getId() }" id="update"> Update</a> 											
						 <a href="deleteProcess/${id.getId()}" id="delete"> Delete</a>																																								 					 										 					 					 							
						</div>																																					
			</section>			
		</c:forEach>	
</body>
</html>