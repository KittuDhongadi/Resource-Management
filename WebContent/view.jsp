<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	

<c:if test="${list not empty }">
    <table>
        <c:forEach items="${list}" var="record">
            <tr>
                <td>${record.id }</td>
                <td>${record.firstName }</td>
                <td>${record.lastName }</td>
                <td>${record.subject }</td>
                <td>${record.year }</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>