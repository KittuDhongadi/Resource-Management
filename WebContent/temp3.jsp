
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>                                                  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form method="post">

<table border="2">
<tr>
<th>ITEM_ID</th>
<th>ITEM_NAME</th>
<th>ITEM_DNUM</th>
<th>ITEM_CATEG</th>
<th>ITEM_DESCRIPTION</th>
<th>STATUS</th>
</tr>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
String query="select * from items2";
Connection con = DriverManager.getConnection(url, "krishna", "Krishna123");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
if(rs.next())
{
	
}
while(rs.next())
{

%>

    <tr><td><%=rs.getString(1)  %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getInt(3) %></td>
     <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
      <td><b><a href="#">BookNow</a></b></td></tr>
 <%
}
%>
    </table>
    
    <%
    rs.close();
    stmt.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</html>