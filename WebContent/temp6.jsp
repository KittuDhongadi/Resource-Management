
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>                                                  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
<form action=book.jlc method="post">

<table border="2">
<tr>
<td>ITEM_ID</td>
<td>ITEM_NAME</td>
<td>ITEM_DNUM</td>
<td>ITEM_CATEG</td>
<!--  td>ITEM_DESCRIPTION</td-->>
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
HttpSession sess=request.getSession();
sess.setAttribute("ITEM_ID", "ITEM_ID");
while(rs.next())
{

%>
    <tr><td><%=rs.getString("ITEM_ID")%></td>
    <td><%=rs.getString("ITEM_NAME") %></td>
    <td><%=rs.getInt("ITEM_DNUM") %></td>
     <td><%=rs.getString("ITEM_CATEGORY") %></td>
     <td><!-- input type="button" name="edit" value="book" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getString(1)%>);" ></td></tr -->
      <input type="submit" value="submit">
      <!--tr><td><%=rs.getString("ITEM_DESCRIPTION") %></td></tr-->
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