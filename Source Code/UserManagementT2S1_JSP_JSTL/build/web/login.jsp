<%-- 
    Document   : login
    Created on : Jan 22, 2024, 8:36:05 AM
    Author     : Long Dinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
    </head>
    <body>
        <h1>Input your information</h1>
        <form action="MainController" method="POST">
            UserID<input type="text" name="userID"/></br>
            Password<input type="password" name="password"/></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/></br>
        </form>
        ${requestScope.ERROR}
        <br><a href="MainController?action=Top1">Top 1 User Controller</a>
    </body>
</html>
