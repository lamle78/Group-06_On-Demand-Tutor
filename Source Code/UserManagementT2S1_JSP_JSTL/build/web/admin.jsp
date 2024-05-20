<%-- 
    Document   : admin
    Created on : Jan 22, 2024, 8:39:43 AM
    Author     : Long Dinh
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import= "sample.sp24.t2s1.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        

        <h1>Hello Admin: ${sessionScope.LOGIN_USER.fullName} </h1>
        </br>
        <c:url var="logoutLink" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>

        <a href="${logoutLink}">Logout JSTL</a>
        <br><a href="MainController?action=Logout">Logout URL Rewriting</a>
        <form action="MainController">
            <input type="submit" name="action" value="Logout" />
        </form>
        <form action="MainController" method="POST">
            Search:<input type="text" name="search" value="${param.search}" />
            <input type="submit" name="action" value="Search" />
        </form>

        <a href="<c:url value="MainController?action=Create_User_Page" />">Create user</a>
        <form action="<c:url value="MainController" />" method="post">
            <input type="hidden" name="action" value="Create_User_Page" />
            <input type="submit" value="Create User Page"/>
        </form>


        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full Name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                        <form action="MainController">
                            <tr>
                                <td>${counter.count}</td>
                                <td>
                                    <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                </td>
                                <td>
                                    <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                </td>
                                <td>${user.password}</td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="search" value="${param.search}"/>
                                </td>
                                <td>
                                    <a href="MainController?search=${param.search}&action=Delete&userID=${user.userID}">Delete url writing</a>
                                    <input type="submit" name="action" value="Delete"/>
                                    <c:url var="delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                    </c:url>
                                    <a href="${delete}">Delete JSTL</a>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>

                </tbody>
            </table>
            ${requestScope.ERROR}
        </c:if>
    </c:if>

</body>
</html>
