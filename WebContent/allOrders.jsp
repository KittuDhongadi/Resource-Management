<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.jlcindia.to.*"%>

<html>
<body>
<center>
<br/>
<table align="center" width="80%" class="textStyle" cellspacing="0">
<core:if test="${session.getAttribute("ORDER_FOUND") eq null}">

<td align="center">
<font color="black" size="5"><b>Not order information found</b></font>
 session.getAttribute("ORDER_FOUND");
</td>
</core:if>
<core:if="${session.getAttribute("ORDER_FOUND") ne null}">
<font color="red" size="5"><b>ALL INVENTORIES</b></font>
<tr bgcolor="black">
<td align="center">
<font color="yellow" size="4"><b>Item Id</b></font>
</td>

<td align="center">
<font color="yellow" size="4"><b>Item Name</b></font>
</td>

<td align="center">
<font color="yellow" size="4"><b>Item dnum</b></font>
</td>

<td align="center">
<font color="yellow" size="4"><b>Item cat</b></font>
</td>

<td align="center">
<font color="yellow" size="4"><b>Item desc</b></font>
</td>
</tr><%int x=-1; String color="#fdeaff"; %>
<core:forEach var="oto" items=session.getAttribute("ORDER_FOUND")}">
<%
x++;
if(x==3) 	x=0;
if(x==0) color="#fdeaff";
if(x==1) color="#fdeefe";
if(x==2) color="#e1ffde";
%>

<td align="center">

<!-- form action="showorderinfo.jlc" method="post">
<input type="hidden" value="${oto.orderId}" name="orderID"/>
<input type="hidden" value="allOrders.jsp" name="page"/>
<input type="submit" value="${oto.orderId}" name="tableButton"/>
</form -->



<!--input type="hidden" value="${oto.orderId}" name="orderID"/-->
<input type="hidden" value="allOrders.jsp" name="page"/>
<!--input type="submit" value="${oto.orderId}" name="tableButton"/-->
</td>
</core:forEach>
</core:if>
</table>
</center>

</body>
</html>