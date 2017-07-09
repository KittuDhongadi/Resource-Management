<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet" href="invent1.css">
</head>

<body>
	<%
		if(session.getAttribute("UUN")==null)
		{
			response.sendRedirect("index.jsp");
		}
	%>
	
	
	<div id="headerTop" style="width:100%">
			<div id="logo" style="width:6%">
				<img src="i.jpeg">
			</div>
			<div id="cname" style="width:30%">
				<h3>INVENTORY MANAGEMENT SYSTEM</h3>
				<h5>SDM College Of Engineering And Technology,Dhavalgiri,Dharwad</h5>
			</div>
			<div id="menu" style="width:50%">
				<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="control.jsp">Computer Science</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			</div>
			<div id="regBut">
				<form action="logout.jlc" method="post">
				<input type="submit" style="background-color: lightblue;color:white;padding:0.5%;text-decoration: none;"  value="SignOut" />
				</form>
				<div>
				<font color=blue size=4>Signed In as 
				<%Object obj=session.getAttribute("UUN"); 
					if(obj!=null){out.print(obj);}%> !!!</font>
				</div>
			</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<center>
		<h2 style="background-color: orange; padding:0.2%; margin-left: 1%; margin-right: 1%;">Computer Science & Engineering</h2>
		<div id="bigWrapper" style="height:400px;">
		
		<div id="signInForm" style="height:400px;">
			
			<h2 style="margin-bottom:15%;margin-top:15%;text-align: center;">Choose Options</h2>
			
			<form action="all.jlc" method="get">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;" name="viewI" id="pass" value="Book Inventory"><br>
			</form>
			
			<form action="booked.jlc" method="get">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;" name="viewI" id="pass" value="View Booked Inventory"><br>
			</form>
			
			<input type="button" style="padding:4%; width:82%; margin:0.5%;" onclick="location.href='return.jsp'" name="return" id="pass" value="Return inventory"><br>
			<input type="button" style="padding:4%; width:82%; margin:0.5%;" onclick="" id="lecturer" value="Lecturer Details"><br>
			
			<input type="button" style="padding:4%; width:82%; margin:0.5%;" name="Time table" id="pass" value="Time tables"><br>
			
		</div>
		<div id="BackImg1">
			<div id="place"><img src="computer.jpg" style="width: 100%; height: 400px;"></div>
		</div>
	</div>	
	</center>
	<div id="footer" style="width:100%; height:50px;">
		<h4>Copyright @ 2017-2018:</h4>
	</div>
</body>
</html>