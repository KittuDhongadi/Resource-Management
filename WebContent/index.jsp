<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">	
	var imageID=0;
	function changeimage(every_seconds){
	    //change the image
	    if(!imageID){
	        document.getElementById("myimage").src="proj1.jpg";
	        imageID++;
	    }
	    else if(imageID==1){
	        document.getElementById("myimage").src="lap1.jpg";
	        imageID++;
	    } 
		
		else if(imageID==2){
	        document.getElementById("myimage").src="proj2.jpg";
	      imageID++;  
	    }
		else if(imageID==3){
	        document.getElementById("myimage").src="lap2.jpg";
	      imageID++;  
	    }
		else if(imageID==4){
	        document.getElementById("myimage").src="proj3.jpg";
	      imageID++;  
	    }
		else if(imageID==5){
	        document.getElementById("myimage").src="lap3.png";
	      imageID++;  
	    }
		else if(imageID==6){
	        document.getElementById("myimage").src="proj.jpg";
	      imageID=0;  
	    }
		
		
		
	    //call same function again for x of seconds
	    setTimeout("changeimage("+every_seconds+")",((every_seconds)*3000));
	}
	
	
function logIn() {alert("This department is not yet Working only CSE");}
function facultyLogin() {
			document.getElementById("fac").style.background="cyan";
			document.getElementById("adm").style.background="white";
			//document.getElementById("faculty").innerHTML='<input id="fac" type="button" style="width:100%; height:35px;background-color: cyan;" value="Faculty" onclick="facultyLogin()"/>';
			//document.getElementById("admin").innerHTML='';
			document.getElementById("LoginForm").innerHTML='<form action="login.jlc" method="post">'+
															'<font color=red size=4 face="arial" style="margin-bottom: 1%;">${MSG}</font>'+
															'<input type="text" class="text" name="username" id="uname"  placeholder="Username" required autofocus/><font color=red size=4 face="arial">${UNMERR}</font><br>'+
															'<input type="password" class="text" name="password" placeholder="Password" required autofocus/><font color=red size=4 face="arial">${PWDERR }</font><br>'+
															'<input type="submit"  value="SignIn" class="button" /><br>'+
															'<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Forgot Password? <a id="lol"  href="forgotpw.jsp">Help me</a><br>'+
															'<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp New User? <a id="lol" href="register.jsp">SignUp</a>Here'+
															'</form>';
			document.getElementById("uname").focus();	
						
		}
function adminLogin() {
			
			document.getElementById("fac").style.background="white";
			document.getElementById("adm").style.background="cyan";
			
			document.getElementById("LoginForm").innerHTML='<form action=\"admin.jlc\" method="post">'+
														   '<font color=red size=4 face="arial" style="margin-bottom: 1%;">${MSG}</font>'+
														   '<input type="text" class="text" name="username" id="uname"  placeholder="Username"required autofocus/><font color=red size=4 face="arial">${UNMERR}</font><br>'+
														   '<input type="password" class="text" name="password" placeholder="Password" required autofocus/><font color=red size=4 face="arial">${PWDERR }</font><br>'+
														   '<input type="submit"  value="SignIn" class="button" /><br>'+
														   '<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Forgot Password? <a id="lol"  href="forgotpw.jsp">Help me</a><br>'+
														   '<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp New User? <a id="lol" href="register.jsp">SignUp</a>Here'+
														   '</form>';
			document.getElementById("uname").focus();
			
}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet" href="invent1.css">
	
	<header id="headerTop" style="width:100%;">
			<div id="logo" style="width:6%; ">
				<img src="i.jpeg">
			</div>
			<div id="cname" style="width:44%;">
				<h2>INVENTORY MANAGEMENT SYSTEM</h2>
				<h4>SDM College Of Engineering And Technology,Dhavalgiri,Dharwad</h4>
			</div>
			<div id="menu" style="width:50%;">
				<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="control.jsp">Computer Science</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="contact.jsp">Contact</a></li>
			</ul>
			</div>
	</header>
</head>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<body onload="changeimage(1)">
	<marquee style="background-color: orange;padding:0.5%; margin-left: 0.5%; margin-right: 2%;"><b>This application has been developed for <strong>CSE dept</strong></b></marquee>
	<div id="bigWrapper" >
		<div id="BackImg" style="height:400px;">
			<img id="myimage"  style="width:100%;height:400px;" name="DivBtn1" src="proj.jpg" >
		</div>
		<div id="signInForm" style="height:400px;">
			
			<center>
			<h1 style="margin-top: 10%; margin-bottom: 10%" >SignIn Here</h1>
			<div id="tab1" style="width:90%; height:35px; margin:5%;margin-top:0%;float: left;">
				
				<b></b><div id="faculty" style="width:50%;float:left;background-color: blue;" >
					<input id="fac" type="button" style="width:100%; height:35px;background-color: cyan;" value="Faculty" onclick="facultyLogin()"/>
				</div>
				<div id="admin" style="width:50%;float:left;background-color: blue;">
					<input id="adm" type="button" style="width:100%; background-color: white; height:35px;" value="Admin" onclick="adminLogin()"/>
				</div></b>
				
			</div>
			
			<div id="LoginForm">
			<form action="login.jlc" method="post">
			
			<font color=red size=4 face="arial" style="margin-bottom: 1%;">${MSG}</font>
			<input type="text" class="text" name="username"  placeholder="Username" required autofocus/><font color=red size=4 face="arial">${UNMERR}</font><br>
			<input type="password" class="text" name="password" placeholder="Password" required autofocus/><font color=red size=4 face="arial">${PWDERR }</font><br>
			<input type="submit"  value="SignIn" class="button" /><br>
			
			<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Forgot Password? <a id="lol"  href="forgotpw.jsp">Help me</a><br>
			
			<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp New User? <a id="lol" href="register.jsp">SignUp</a>Here
			
			</form>
			</div>
			</center>
		</div>
	</div>
		<br>

	<div id="footer" style="height: 70px;">
		<h4>Copy right @ 2017-18 :</h4>
	</div>
</body>
</html>