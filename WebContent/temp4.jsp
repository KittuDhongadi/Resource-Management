<%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">
<%
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String query="select * from items2";
	Connection con = DriverManager.getConnection(url, "krishna", "Krishna123");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery(query);
if(rs.next()){
%>
<tr>
<tr><td>Name</td><td><input type="text" name="name" value="<%=rs.getString(1)%>"></td></tr>
<tr><td>Address</td><td><input type="text" name="address" value="<%=rs.getString(2)%>"></td></tr>
<tr><td>Contact No</td><td><input type="text" name="contact" value="<%=rs.getInt(3)%>"></td></tr>
<tr><td>Email</td><td><input type="text" name="email" value="<%=rs.getString(4)%>"></td></tr>
<%
}
}
catch(Exception e){}
%>
</table>