<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jlcindia.to.*"%>

<html>
<body>
<%
		if(session.getAttribute("UUN")==null)
		{
			response.sendRedirect("index.jsp");
		}
%>
<font><center><h1><b>BOOKED INVENTORIES</b></font></h1></center>
<table align="center" height="80%" width="80%" cellpadding="10" border="1" class="textStyle" cellspacing="0">
	<tr bgcolor="white">
		<th style="background-color:blue;color:white;" align="left">Inst ID</th>
		<th style="background-color:blue;color:white;" align="left">ITEM ID</th>
		<th style="background-color:blue;color:white;" align="left">acquired date</th>
		<th style="background-color:blue;color:white;" align="left"> start time</th>
		<th style="background-color:blue;color:white;" align="left"> end time</th>
		<th style="background-color:blue;color:white;" align="left"> purpose</th>
		<th style="background-color:blue;"></th>
	</tr>
<%int x=-1; String color="#fdeaff"; %>
<%  
// retrieve your list from the request, with casting 
List<BookedTO> list = (ArrayList<BookedTO>) session.getAttribute("ORDER_FOUND1");

// print the information about every category of the list
for(BookedTO o : list) {
	%>
	<tr>
		<td style="background-color:lightblue;"><% out.println(o.getItem_ID()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getInst_id()); %></td>
    	<td style="background-color:lightblue;" align="center"><% out.println(o.getDateAquired()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getStartTime()); %></td>
    	<td style="background-color:lightblue;"><% out.println(o.getEndTime()); %> </td>
    		<td style="background-color:lightblue;"><% out.println(o.getPurpose()); %> </td>
    	<td style="background-color:lightblue;">
    	</td>
    </tr>
    
<% 
}
%>
<c:forEach var="customer" items="session.getAttribute("ORDER_FOUND1");">
   <c:out value="${o.getItem_ID()}" />
   <c:out value="${o.getInst_id()}" />
   <c:out value="${o.getDateAquired()}" />
   <c:out value="${o.getStartTime()}" />
   <c:out value="${o.getEndTime()}" />
   <c:out value="${o.getPurpose()}" />
</c:forEach>
</table>

</body>
</html>