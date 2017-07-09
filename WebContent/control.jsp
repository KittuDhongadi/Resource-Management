<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
</script>

<body>
	<%
		if(session.getAttribute("AUN")!=null && session.getAttribute("UUN")==null )
		{
			String currentUser=session.getAttribute("AUN").toString();
			session.setAttribute("currentUser", currentUser);
			response.sendRedirect("admin.jsp");
		}
		else if(session.getAttribute("AUN")==null && session.getAttribute("UUN")!=null )
		{
			String currentUser=session.getAttribute("UUN").toString();
			session.setAttribute("currentUser", currentUser);
			response.sendRedirect("faculty.jsp");
		}
		else
		{
			%>
			<script type="text/javascript">alert("SignIn First");</script>
			<% 
			
			response.sendRedirect("notLoggedIn.jsp");
		}
		
	%>
	
</body>
</html>