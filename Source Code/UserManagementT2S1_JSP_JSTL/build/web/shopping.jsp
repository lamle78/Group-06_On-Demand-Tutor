<%-- 
    Document   : shopping
    Created on : Feb 26, 2024, 8:42:09 AM
    Author     : Long Dinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shopping with </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Gun for life</h1>
        <form action="MainController" method="POST">
            Select your weapon:<select name="weapon">
                <option value="w001-glock-200">Sung - 200$</option>
                <option value="w002-Luu dan-100">Lụ dan - 100$</option>
                <option value="w003-Xe tang-1000">Xe tang - 1000$</option>
                <option value="w004-Dao phay-50">Dao phay - 50$</option>
                <option value="w005-May bay-5000">May bay - 5000$</option>
            </select>
            Quantity<select name="quantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="10">10</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>
        </form>
        ${requestScope.MESSAGE}
    </body>
</html>
