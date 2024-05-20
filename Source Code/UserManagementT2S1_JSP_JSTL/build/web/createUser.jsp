<%-- 
    Document   : createUser
    Created on : Feb 21, 2024, 1:47:11 AM
    Author     : Long Dinh
--%>

<%@page import= "sample.sp24.t2s1.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
    </head>
    <body>
        
        <form action="MainController" method="POST">
            User ID:<input type="text" name="userID" required=""/>${requestScope.USER_ERROR.userID}
            </br>Full Name<input type="text" name="fullName" required=""/>${requestScope.USER_ERROR.fullName}
            </br>Role ID<select name="roleID">
                <option value="AD">AD</option>
                <option value="US">US</option>
            </select>
            </br>Password<input type="password" name="password" required=""/>
            </br>Confirm<input type="password" name="confirm" required=""/>${requestScope.USER_ERROR.confirm}
            </br><input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
            
        </form>
    </body>
</html>
