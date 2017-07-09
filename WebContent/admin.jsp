<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript">
		function Show() {
			//location.href="SignIn";
			//location.href="ShowInvent";
			document.getElementById("place").innerHTML='<h2 style="margin-top: 1%;">Inventory Details</h2>';
		}
		function ManageInvent() {
			document.getElementById("place").innerHTML='<h2 style="margin-top: 1%;">Manage Inventory</h2>'+
													   '<input type=\"button\" value=\"Add Inventory\" onclick=\"addInvent()\" class=\"text1\"><br>'+
													   '<input type=\"button\" value=\"Delete Inventory\" onclick=\"deleteInvent()\" class=\"text1\"><br>'+
													   '<input type=\"button\" value=\"Update Inventory\" class=\"text1\">';
		}
		function addInvent() {
			document.getElementById("place").innerHTML='<h1>Add Inventory</h1>'+
													   '<form action=\"add.jlc\" method=\"post\">'+
													   '<font color=red size=5 face=\"arial\">${MSG}</font><br>'+
													   '<input type=\"text\" placeholder=\"Item Id\" class=\"text1\" name=\"itemId\"><br>'+
													   '<input type=\"text\" placeholder=\"Item Name\" class=\"text1\" name=\"itemName\"><br>'+
													   '<select name="dept" class="text1"><option value="0">Choose Department</option><option value="1">CIVIL</option><option value="2">Chemical</option><option value="3">Computer Science</option><option value="6">Information Science</option><option value="4">Electronics</option><option value="5">Electrical</option><option value="7">Mechanical</option></select><br>'+
													   '<select name="cat" class="text1"><option value="0">Choose Category</option><option value="DESKTOP">DESKTOP</option><option value="PROJECTOR">PROJECTOR</option><option value="LAPTOP">LAPTOP</option><option value="6">Information Science</option>	</select><br>'+
													   '<input type=\"text\" placeholder=\"Item Description\" class=\"text1\" name=\"itemDesc\"><br>'+
													   '<input type=\"submit\" placeholder=\"Add Item\" class=\"text\" ><br>'+
													   '</form>';
		}
		
		function openWindow(path)
		{
		var myWin = window.open(' " + pdfFileName + " ','place','width=400,height=200');
		}
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
<link rel="stylesheet" href="invent1.css">
</head>

<body>
	<%
		if(session.getAttribute("AUN")==null)
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
		<h2 style="background-color: cyan;margin-left: 1%;margin-right: 1%;">Computer Science & Engineering</h2>
		<div id="bigWrapper" >
		
		<div id="signInForm"  style="height: 400px;">
			
			<h2 style="margin-bottom:10%;margin-top:15%;text-align: center;">Choose Options</h2>
			
	
			<form action="addInventory.jsp">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;"  name="viewI" id="pass" value="Add Inventory"><br>
			</form>
			
			<form action="delete_inventory.jsp">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;"  name="viewI" id="pass" value="Delete Inventory"><br>
			</form>
			
			<form action="all.jlc" method="POST">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;"  name="viewI" id="pass" value="Book Inventory"><br>
			</form>
			
			<form action="return.jlc" method="POST">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;"  name="viewI" id="pass" value="Return Inventory"><br>
			</form>
			
			<form action="booked.jlc" method="POST">
			<input type="submit" style="padding:4%; width:82%; margin:0.5%;"  name="viewI" id="pass" value="View Booked Inventory"><br>
			</form>
			
		
		</div>
		<div id="BackImg1">
			<div id="place"><img src="computer.jpg" style="width: 100%; height: 430px;"></div>
		</div>
	</div>	
	</center>
	<div id="footer">
		<h4>Copy right @ 2017-18 :</h4>
	</div>
</body>
</html>