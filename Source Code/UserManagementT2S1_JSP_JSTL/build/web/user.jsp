<%-- 
    Document   : user
    Created on : Jan 22, 2024, 8:40:06 AM
    Author     : Long Dinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import= "sample.sp24.t2s1.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>Your information:</h1>
        
        UserID: ${sessionScope.LOGIN_USER.userID}<br/> 
        FullName: ${sessionScope.LOGIN_USER.fullName}<br/> 
        RoleID: ${sessionScope.LOGIN_USER.roleID}<br/> 
        Password: ${sessionScope.LOGIN_USER.password}<br/>
        <a href="MainController?action=Shopping_Page">Shopping</a>
    </body>
</html>
