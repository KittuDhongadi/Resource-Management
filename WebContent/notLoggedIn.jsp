<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Redirect to Home</title>
<script type="text/javascript">
	function redirect()
	{
		location.href="index.jsp";
	}
	
	setTimeout("redirect()",3000);
</script>
</head>
<body>
	<center><h1>SignIn First to Access IMS</h1>
		<h2>You will be redirected in 3 seconds.............</h2>
	</center>
</body>
</html>