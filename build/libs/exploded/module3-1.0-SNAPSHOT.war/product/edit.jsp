<%--
  Created by IntelliJ IDEA.
  User: Ideapad
  Date: 9/9/2020
  Time: 5:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="products?action=products">Edit Product</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Edit Product</h2>
            </caption>
            <c:if test="${product!=null}">
                <input type="hidden" name="productNumber"
                       value="<c:out value='${product.productNumber}'/>"/>
            </c:if>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="productName" size="45"
                           value="<c:out value='${product.productName}'/> "/>
                </td>
            </tr>
            <tr>
                <th>Price:</th>
                <td>
                    <input type="text" name="price" size="45"
                           value="<c:out value='${product.price}'/> "/>
                </td>
            </tr>
            <tr>
                <th>Quantity:</th>
                <td>
                    <input type-="text" name="quantity" size="45"
                           value="<c:out value='${product.quantity}'/> "/>
                </td>
            </tr>
            <tr>
                <th>Color:</th>
                <td>
                    <input type-="text" name="color" size="45"
                           value="<c:out value='${product.color}'/> "/>
                </td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type-="text" name="description" size="45"
                           value="<c:out value='${product.description}'/> "/>
                </td>
            </tr>
            <tr>
                <th>Category:</th>
                <td>
                    <input type-="text" name="category" size="45"
                           value="<c:out value='${product.category}'/> "/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

