<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.jlcindia.to.*"%>

<html>
<body>
<%
		if(session.getAttribute("UUN")==null)
		{
			response.sendRedirect("index.jsp");
		}
%>
<center><h1><b>AVAILABLE INVENTORIES</b></font></h1>
<table align="center" height="80%" width="80%" cellpadding="10" border="1" class="textStyle" cellspacing="0">
	<tr bgcolor="white">
		<th style="background-color:blue;color:white;" align="left">ITEM ID</th>
		<th style="background-color:blue;color:white;" align="left">ITEM NAME</th>
		<th style="background-color:blue;color:white;" align="left">ITEM DEPARTMENT</th>
		<th style="background-color:blue;color:white;" align="left">ITEM CATEGORY</th>
		<th style="background-color:blue;color:white;" align="left">ITEM DESCRIPTION</th>
		<th style="background-color:blue;"></th>
	</tr>
<%int x=-1; String color="#fdeaff"; %>
<%  
// retrieve your list from the request, with casting 
List<OrderTo> list = (ArrayList<OrderTo>) session.getAttribute("ORDER_FOUND");

// print the information about every category of the list
for(OrderTo o : list) {
	//String itemId=o.getItemID();
	%>
	<tr>
		<td style="background-color:lightblue;"><% out.println(o.getItemID()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getItemName()); %></td>
    	<td style="background-color:lightblue;" align="center"><% out.println(o.getItemDept()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getItemcat()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getItemdesc()); %> </td>
    	<td style="background-color:lightblue;">
    	<form action="book1.jsp" method="post">
    		<input type="hidden" name="itemIdS" value="<%=o.getItemID()%>">
    		<input type="submit" style="background-color:cyan;" value="BookNow">
    	   </form>
    	</td>
    </tr>
    
<% 
}
%>
<c:forEach var="customer" items="session.getAttribute("ORDER_FOUND");">
   <c:out value="${o.getItemID()}" />
   <c:out value="${o.getItemName()}" />
   <c:out value="${o.getItemDept()}" />
   <c:out value="${o.getItemcat()}" />
   <c:out value="${o.getItemdesc()}" />
</c:forEach>
</table>








</center>
</body>
</html>