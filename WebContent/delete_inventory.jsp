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
	<div id="headerTop" style="width:100%">
			<div id="logo" style="width:6%;">
				<img src="i.jpeg">
			</div>
			<div id="cname" style="width:30%;">
				<h3>INVENTORY MANAGEMENT SYSTEM</h3>
				<h5>SDM College Of Engineering And Technology,Dhavalgiri,Dharwad</h5>
			</div>
			<div id="menu" style="width:50%;">
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
	<div id="bookingForm" style="width:100%; height:auto; padding:1%;">
		<fieldset>
			<legend>Delete Inventory form</legend>
			<h2 style="margin-top: 2%;margin-bottom: 1%;">Delete Inventory Here</h2>
			<font color=red size=4 face="arial" style="margin-bottom: 1%;margin-top: 1%;">${MSG}</font>
			<form action="delete.jlc" method="post" name="myForm">
				<input name="ItemId" type="text" style="width:20%; height:35px; padding:0.5%; margin:1%; " placeholder="ItemId" required autofocus/>
				<br><font color=black size=2>Check Item Id</font><br>
				
				<input type="submit" style="width:21.5%; height:35px; padding:0.5%; margin:1%;" value="Delete"/>
			</form>
		</fieldset>
	</div>
	</center>

</body>
</html>