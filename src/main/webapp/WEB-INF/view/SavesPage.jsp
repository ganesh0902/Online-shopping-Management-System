<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
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
		#displ div img{
		
						width:350px;
						height:200px;
						border-radius: 2px
						
						
		
		}	
		#displ div input[type=submit]
		{
				position:relative;
				left:100px;
				top:-20px;
				width:150px;
				height:30px;
				background-color: black;
				color:white;						
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
	</style>
</head>
<body>			 <c:forEach var="i" items="${requestScope.sho }">
				<section id="displ">				
				<div>					 										 	
					 	<img alt="" src="https://m.media-amazon.com/images/I/41RmyuSLXcL.jpg">
					 	<p id="pName"><c:out value="${i.getName() }"></c:out> </p><br>
					 	<p id="para"><c:out value="${i.getHead() }"></c:out> </p>					
						<p style="position: relative;left:80px;top:-70px;font-size: 25px" >Price :<c:out value="${i.getPrice() }"></c:out></p>					
						<a href="showProduct/${i.getId() }"><input type="submit" id="btn"></a>																							 					 										 					 					 								
				</div>																		
				</section>
				 </c:forEach>																																							
</body>
</html>