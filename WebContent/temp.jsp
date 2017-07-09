<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Inventory</title>
<link rel="stylesheet" href="invent1.css">
</head>
<body style="background-image: url(def28.jpg);">
	<%
		if(session.getAttribute("AUN")==null)
		{
			response.sendRedirect("index.jsp");
		}
	%>
	
	<div id="headerTop">
			<div id="logo">
				<img src="i.jpeg">
			</div>
			<div id="cname">
				<h3>INVENTORY MANAGEMENT SYSTEM</h3>
				<h5>SDM College Of Engineering And Technology,Dhavalgiri,Dharwad</h5>
			</div>
			<div id="menu">
				<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="#">Department</a>
					<ul>
						<li><a href="cse.jsp">Computer Sc</a></li>
						<li><a onclick="logIn()">Civil</a></li>
						<li><a onclick="logIn()">Chemical</a></li>
						<li><a onclick="logIn()">Information Sc</a></li>
						<li><a onclick="logIn()">Electrical</a></li>
						<li><a onclick="logIn()">Electronics</a></li>
						<li><a onclick="logIn()">Mechanical</a></li>
					</ul>
				</li>
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
				<%Object obj=session.getAttribute("AUN"); 
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
	<div id="addForm" style="background-image: url(def16.jpg); width:30%;">
		<fieldset>
			<legend>Add Inventory</legend>
				<font color=red size=4 face="arial">${MSG}</font>
					<form action="add_inventory.jlc" method="GET">
						<input type="text" placeholder="Item Id" style="width:80%; height:35px; padding:0.5%; margin:1%;" name="ITEM_ID" value="${ITID}"/><br>
						<font color=red size=4 face="arial">${ITIDERR}</font><br>
						
						<input type="text" placeholder="Item Name" style="width:80%; height:35px; padding:0.5%; margin:1%;" name="ITEM_NAME" value="${ITNM}"/><br>
						<font color=red size=4 face="arial">${ITNMERR}</font><br>
						
						<select name="department" style="width:80%; height:35px; padding:0.5%; margin:1%;" ><option value="0">Choose Department</option><option value="1">Chemical</option><option value="2">civil</option><option value="3">CS</option><option value="4">EE</option><option value="5">EC</option><option value="6">Mechanical</option></select><br>
						<font color=red size=4 face="arial">${deptERR}</font><br>
						
						<select name="category" style="width:80%; height:35px; padding:0.5%; margin:1%;" ><option value="Choose Your Category">Choose Category</option><option value="laptop">LAPTOP</option><option value="projector">PROJECTOR</option></select><br>
						<font color=red size=4 face="arial">${CYCERR}</font><br>
						
						<input type="text" placeholder="Item Description" style="width:80%; height:35px; padding:0.5%; margin:1%;" name="ITEM_DES" value="${ITDE}"/><br>
						<font color=red size=4 face="arial">${ITNDERR}</font><br>
						
						<input type="submit" style="width:80%; height:35px; padding:0.5%; margin:1%;" value="Add"/><br>
					</form>
		</fieldset>
	</div>
	</center>
</body>
</html>