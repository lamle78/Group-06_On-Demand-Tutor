<%-- 
    Document   : ViewCart
    Created on : Feb 26, 2024, 8:46:22 AM
    Author     : Long Dinh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.sp24.t2s1.weapon.Weapon"%>
<%@page import="sample.sp24.t2s1.weapon.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>
    </head>
    <body>
        <h1>Your selected Items</h1>
        <c:if test="${not empty sessionScope.CART}">
            <c:choose>
                <c:when test="${not empty sessionScope.CART.cart}">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <td>Remove</td>
                                <td>Edit</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="count" value="1"/>
                            <c:set var="total" value="0"/>
                            <c:forEach var="weapon" items="${sessionScope.CART.cart}">
                                <c:set var="subtotal" value="${weapon.value.price * weapon.value.quantity}"/>
                                <c:set var="total" value="${total + subtotal}"/>
                                <tr>
                            <form action="MainController">
                                <td>${count}</td>
                                <td>
                                    ${weapon.value.id}
                                    <input type="hidden" name="id" value="${weapon.value.id}"/>
                                </td>
                                <td>${weapon.value.name}</td>
                                <td>${weapon.value.price}$</td>
                                <td>
                                    <input type="number" name="quantity" value="${weapon.value.quantity}" min="1" required=""/>
                                </td>
                                <td>${subtotal}$</td>
                                <td>
                                    <input type="submit" name="action" value="Remove"/>
                                </td>
                                <td>
                                    <input type="submit" name="action" value="Edit"/>
                                </td>
                            </form>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <h1>Total: ${total}</h1>
        </c:when>
    </c:choose>
</c:if>
<a href="shopping.jsp">Add more</a>

</body>
</html>
