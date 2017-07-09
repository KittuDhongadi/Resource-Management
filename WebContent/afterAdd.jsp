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
		if(session.getAttribute("AUN")==null)
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
		<fieldset style="width: 70%; margin-top: 5%;">
			<legend>Acknowledgement</legend>
		<h2>Item Added</h2>
			<font color=blue size=5>Inventory successfully Added Mr :
				<%Object obj=session.getAttribute("AUN"); 
					if(obj!=null){out.print(obj);}%> !!! ThanQ for using IMS........<br><b></font>
			<form action="control.jsp">
			<b><input style="width:100px; height:40px; background-color: cyan;" type="submit" value="Goto Home"/> </b>
			</form>
			
			</center>
		</fieldset>
</body>
</html>

