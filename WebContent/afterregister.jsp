<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inventory</title>
</head>
<body>
	<%
		if(session.getAttribute("UN")==null)
		{
			response.sendRedirect("index.jsp");
		}
		
	%>
	<center>
		<fieldset style="width: 70%; background-color:lightblue; margin-top: 5%;">
			<legend>Acknowledgement</legend>
		<h2>Registration Completed</h2>
			<font color=purple size=5>You have been successfully registered Mr : 
				<%Object obj=session.getAttribute("UN"); 
					if(obj!=null){out.print(obj);}%> !!!<br><br><b>Note : </b>Your <u>Instructor Id</u> is your Username and the Password is that <u>you provided</u> during registration!!!</font>
			<h3><input style="width:100px; height:40px; background-color: cyan;" type="button" value="Login Now" onclick="location.href='index.jsp'"/> </h3></center>
		</fieldset>
</body>
</html>

