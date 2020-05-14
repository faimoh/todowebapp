<%-- 
    Document   : newError
    Created on : 3 May 2020, 12:42:44
    Author     : Faisal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ToDoApp - Create New Account</title>
    </head>
    <body>
        <h1>Create New Account</h1>
        <p>Hello! ${sessionScope.account.firstName}</p>        
        <a href="<c:url value="/app/admin/accounts/dashboard"/>">Dashboard</a> 
        <a href="<c:url value="/app/admin/accounts/new"/>">New Account</a>
        <a href="<c:url value="/app/users/profile"/>">My Profile</a>
        <a href="<c:url value="/app/logout"/>">Logout</a>
        <br><br>
        <b>${requestScope.message}</b>
        <br><br>        
        <form method="POST" action="<c:url value="/app/admin/accounts/create"/>">
            <fieldset>
                <legend>New account details</legend>
                All form fields are required.
                <br><br>
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${requestScope.username}" required><br><br>
                <label for="firstName">First name:</label>
                <input type="text" id="firstName" name="firstName" value="${requestScope.firstName}" required><br><br>
                <label for="lastName">Last name:</label>
                <input type="text" id="lastName" name="lastName" value="${requestScope.lastName}" required><br><br>
                <input type="submit" value="Create">
            </fieldset>
        </form>
    </body>
</html>
