<%--
  Created by IntelliJ IDEA.
  User: Ideapad
  Date: 9/9/2020
  Time: 5:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>`
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/product?action=create">Add New User</a>
    </h2>
    <form method="post">
        <h2>Search by product name </h2>
        <input type="hidden" name="action" value="search">
        <input type="text" name="productName" value="" placeholder="Product Name">
        <input type="submit" value="Search">
    </form>
</center>
<div align = "center">
    <table border="1" cellpadding="8">
        <caption><h2>Product List</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Color</th>
            <th>Description</th>
            <th>Category</th>
            <th>Action</th>
        </tr>
        <c:forEach var="product" items="${listProduct}">
            <tr>
                <td><c:out value="${product.productNumber}"/></td>
                <td><c:out value="${product.productName}"/></td>
                <td><c:out value="${product.price}"/></td>
                <td><c:out value="${product.quantity}"/></td>
                <td><c:out value="${product.color}"/></td>
                <td><c:out value="${product.description}"/></td>
                <td><c:out value="${product.category}"/></td>
                <td>
                    <a href="/product?action=edit&productNumber=${product.productNumber}">Edit</a>
                    <a href="/product?action=delete&productNumber=${product.productNumber}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

