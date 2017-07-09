<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Inventory</title>
	<link rel="stylesheet" href="invent1.css">
	
	<header id="headerTop">
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
				<li><a href="control.jsp">Computer Science</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			</div>
			<div id="regBut">
				<a id="log" name="signI" onclick="logNow()">SignIn</a>
				<a id="log" name="signU" href="register.jsp">SignUp</a>
			</div>
	</header>
	</head>
	
	<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
		<center>
		
		<fieldset style="width: 60%;">
		
			<legend>Change Password</legend>
		
			<h1 style="margin-bottom: 2%; margin-top: 2%;">Change password</h1>
				<h2 style="margin-bottom: 2%; margin-top: 2%;">-----Password assistance form-----</h2>
					<font color=red size=5><%Object obj=request.getAttribute("MSG");
											 if(obj!=null){out.println(obj);}%>
					</font>
		
		<form action="forgotpw.jlc" method="post">
			<font color=red size=4 face="arial" style="margin-bottom: 1%;">${EML}</font>
			<table>
				<tr>
					<td>
						<input type="email" class="text" name="emails" placeholder="Enter Email" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input class="button" type="submit" value="Submit"/>
					</td>
				</tr>
			</table>
		</form>
		<input type="button" value="I Know the Password" class="button" style="width: 20%; margin-top: 0%; margin-bottom: 1%;" onclick="location.href='index.jsp'"/>

		</fieldset>
		</center>
		
	</body>
</html>