<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customer</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers?action=create" >Create Customer</a>
</p>
<table border="1px" >
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
<%--            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>--%>
<%--            <td>${customer.getEmail()}</td>--%>
<%--            <td>${customer.getAddress()}</td>--%>
<%--            <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>--%>
<%--            <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td><--%>
        </tr>
    </c:forEach>

</table>

</body>
</html>
