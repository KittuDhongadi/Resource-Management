
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>                                                  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Inventory</title>
</head>
<body>


<center>
<h1>Available Inventory</h1>
<table border="1" cellpadding="10" cellspacing="0">
<tr>
<th>ITEM ID</th>
<th>ITEM NAME</th>
<th>ITEM DNUM</th>
<th>ITEM CATEG</th>
<th>ITEM DESCRIPTION</th>
<th>STATUS</th>
</tr>


<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
String query="select * from items2 where item_id in (select item_id from items2 minus select item_id from aquired_by2)";
Connection con = DriverManager.getConnection(url, "krishna", "Krishna123");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>

    <tr><td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getInt(3) %></td>
     <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
       <td><b><a href="book.jsp">BookNow</a></b></td></tr>
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

<h1>Booked Inventory</h1>
<table border="1" cellpadding="10" cellspacing="0">
<tr>
<th>INSTRUCTOR ID</th>
<th>ITEM ID</th>
<th>DATE AQUIRED</th>
<th>START TIME</th>
<th>END TIME</th>
</tr>


<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
//String query="select * from items2 where item_id in (select item_id from aquired_by2)";
String query1="select * from aquired_by2";

Connection con = DriverManager.getConnection(url, "krishna", "Krishna123");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
//ResultSet rs=stmt.executeQuery(query);
ResultSet rs1=stmt1.executeQuery(query1);
while( rs1.next())
{
	
%>

    <tr><td><%=rs1.getString(1)%></td>
    <td><%=rs1.getString(2) %></td>
    <td><%=rs1.getString(3) %></td>
     <td><%=rs1.getString(4) %></td>
     <td><%=rs1.getString(5) %></td></tr>
 <%
	
}
%>
   	</table>
   </center>
    <%
    rs1.close();
    stmt.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</body>
</html>