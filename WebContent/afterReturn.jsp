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
		if(session.getAttribute("currentUser")==null)
		{
			%>
				<script type="text/javascript">
					alert("SignIn First");
				</script>
			<%
			response.sendRedirect("index.jsp");
		}
	%>
	<center>
		<fieldset style="width: 70%; background-color:lightblue; margin-top: 5%;">
			<legend>Acknowledgement</legend>
		<h2>Returned</h2>
			<font color=blue size=5>Your Inventory successfully Returned Mr : 
				<%Object obj=session.getAttribute("currentUser"); 
					if(obj!=null){out.print(obj);}%> !!! <br>ThanQ for using IMS........</font>
			<h3><input style="width:100px; height:40px; background-color: cyan;" type="button" value="Goto Home" onclick="location.href='control.jsp'"/> </h3></center>
		</fieldset>
</body>
</html>

