<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet" href="invent1.css">
</head>

<body style="background-image: url(def28.jpg);">
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
				<li><a href="control.jsp">Computer Science</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			</div>
			<div id="regBut">
				<a id="log" href="index.jsp">SignIn</a>
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
	<div id="signUpNow">
			<form action="register.jlc" method="GET">
			<font color=red size=5 face="arial">${MSG}</font><br>
			<h1 style="margin-top:3%; margin-bottom:20px;">SignUp Here</h1>
			
			<input type="text" class="text" name="IID" id="IID" placeholder="Instructor ID" maxlength="20" required autofocus><br>
			<font color=black size=2 face="arial">* Enter the instructor Id in the form=> csdt+"%" </font><br>
			<font color=red size=4 face="arial">${IIDERR}</font><br>
			
			<input type="text" class="text" name="FNAME" id="fname" placeholder="First Name" maxlength="20" required autofocus><br>
			<font color=black size=2 face="arial">* Enter first name only in alphabets </font><br>
			<font color=red size=4 face="arial">${FNMERR}</font><br>
			
			
			<input type="text" class="text" name="LNAME" id="lname" placeholder="Last Name" required autofocus><br>
			<font color=black size=2 face="arial">* Enter last name only in alphabets </font><br>
			<font color=red size=4 face="arial">${LNMERR}</font><br>
			
			
			<input type="number" class="text" name="PHONE" placeholder="Mobile No" required autofocus minlength="10" maxlength="10"><br>
			<font color=black size=2 face="arial">* Mobile number should be maximum of 10 digits</font><br>
			
			<input type="email" class="text" name="EMAIL" placeholder="Email" required autofocus><br>
			<font color=black size=2 face="arial">* Enter the email</font><br>
			
			<input type="password" class="text" name="PASSWORD" placeholder="Password" required autofocus><br>
			<font color=black size=2 face="arial">* Password should be minimum of 8 characters</font><br>
			
			<input type="submit" class="button" value="SignUP"><br>
			</form>
		
	</div>
	</center>
	
</body>
</html>