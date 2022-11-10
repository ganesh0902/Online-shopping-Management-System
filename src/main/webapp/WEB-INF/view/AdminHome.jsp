<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">		

	

<style type="text/css">
			
			
			body{
				
				padding:0px;
				margin: 0px;
			
			}
			
			#header{
												
							background-color:#454545;
							color:white;
							display: flex;
							margin-left:5px;
							margin-right:5px;
																
			}
			#header #head1{
			
					position: relative;		
					left: -170px;					
					width:500px;								
			}					
			#header div{
					
					flex: 1;
					margin-left: 100px;	
					margin-top: 10px;																					
			}	
			#header #head2 ul li{
					
					position: relative;
					left:350px;
								
			
			}		
			#header div ul{
										
					list-style-type: none;
					padding-left: 50px;
					
								
			}
			#header div ul li{
			
					display:inline-block;
					padding-left: 40px;
					
			}	
			
			#head{							
					
					padding-top:10px;
					background-color: 	#022C52;					
					height: 150px;
					color: white;					
					margin-left:5px;
					margin-right:5px;
			
			}
			#head h2{
						
						font-size: 30px;
						color: white;
						margin-left: 20px;
			
			}
			#head select{
							
							padding: 10px 30px 10px 30px;
							position: absolute;
							left:544px;
							top:120px;		
							border-radius: 15px 0px 0px 15px;		
							 
			}
			#head input{
							
							width:300px;
							height:32px;
							position: absolute;
							left:709px;
							top:120px;	
							
			
			}
			#head button{
							
						padding: 10px 30px 8px 30px;
						position: absolute;
						left:1016px;
						top:120px;	
						background-color:#1d63ba;
						color:white;						
						border-radius: 0px 15px 15px 0px;
			
			}
			#head #l1{
						position: absolute;
						left:1300px;
						top:120px;	
			}
			#head #p1{
						
						position: absolute;
						left:1300px;	
						top:120px;			
			}
			#head #p2{
						position: absolute;
						left:1400px;
						top:120px;	
			}
			#head #l2{
						position: absolute;
						left:1450px;
						top:120px;	
			}
			#menu{
				
					background-color: #f69e31;					
					padding-top:10px;					
					height: 50px;
					border-top: 5px solid red;	
					margin-left:5px;
					margin-right:5px;					
			}
			#menu ul{
									
					list-style-type: none;
			
			}
			#menu ul li{
						
						display: inline-block;
						padding-left: 50px;
											
			}
			#show{
						margin-left:5px;
						margin-right:10px;
						width:1510px;
						height:200px;
						background-color: cyan;
						margin-top: 1px;
						background-image: url("https://m.media-amazon.com/images/I/61c2Py7xhVL._SX3000_.jpg");
						background-size: cover;											
			}
			#data{
					margin-top: 20px;
					margin-left: 10px;
					margin-right: 10px;						
			}
		/*  About product */	
		
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
				top:-20px;				
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
				top:-18px;				
				padding:6px 20px 6px 20px;
				color: white;
				align-items: center;		
				background-color: #34495E ;
				border-radius: 10px;
		}		
		#header #head1 .fa{
				color:red;
		}	
		#header #head2 .fa{
				color:red;
		}	
		#head fa{
		
				width:20px;
		}
	</style>

</head>
<body>

		 	<section id="header">
			
			<div id="head1"> 
			
				<ul>
						<li><i class="fa fa-phone" aria-hidden="true">    </i> 9595956150</li>
						<li><i class="fa fa-envelope" aria-hidden="true">   </i> ganeshs2987@gmail.com</li>
						<li><i class="fa fa-map-marker" aria-hidden="true"></i>    banglore</li>				
				</ul>
			
			</div>
			<div id="head2">
			
					<ul>
						<li><i class="fa fa-inr" aria-hidden="true"></i> INR</li>
						<li><i class="fa fa-user-circle" aria-hidden="true"></i> My Account</li>										
					</ul>							
			
			</div>							
	</section>
	
	
	<section id="head">
		
							<h2> Online Shopping </h2>
							<select>
										<option> All Categories</option>
										<option> H3e</option>
							</select>
							<input type="text" placeholder="Search here">
							<button> Search</button>
							<label id="l1"><i class="fa fa-github-alt" aria-hidden="true"></i></label>
							<p id="p1"> Github</p>
							<label id="l2"><i class="fa fa-shopping-cart" aria-hidden="true"></i></label>
							<p id="p2">Your Card</p>
			
		</section>
		
		<section id="menu">
						
						<ul>
							<a href="addRecord"><li>Add new Record </li></a> 
							<li>UpdateRecord </li>
							<li>Delete Record </li>
							<li>Display All Record </li>
							<li>Kind wear </li>
							<li>Furnitures </li>
							<li>Home Appliances </li>
							<li>Electronic gadgets </li>						
						</ul>				
		</section>
		
		<div id="show">
					
					<!-- Image  Has display here -->														
		</div>
								
				 <c:forEach var="i" items="${requestScope.sho }">
					<section id="displ">				
						<div>					 										 	
					 	<img alt="" src="https://m.media-amazon.com/images/I/41RmyuSLXcL.jpg">
					 	<p id="pName"><c:out value="${i.getName() }"></c:out> </p><br>
					 	<p id="para"><c:out value="${i.getHead() }"></c:out> </p>					
						<p style="position: relative;left:80px;top:-70px;font-size: 25px" >Price :<c:out value="${i.getPrice() }"></c:out></p>					
					     <a href="showProduct/${i.getId() }"><input type="submit" value="Buy" id="btn"></a> 																								
						 <a href="updateProduct/${i.getId() }" id="update"> Update</a> 											
						 <a href="deleteProcess/${i.getId()}" id="delete"> Delete</a>
																																								 					 										 					 					 							
						</div>																		
					</section>
				</c:forEach>				 				
		</body>
	</html>