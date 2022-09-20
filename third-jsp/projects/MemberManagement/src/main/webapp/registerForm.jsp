<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 5:39
  Desc : Input data and request to 'registerProcess.jsp'.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Form Page</title>
</head>
<body>
<h2>Register Form Page</h2>
<form action="registerProcess.jsp" method="post">
    <table border="2">
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Register"></td>
        </tr>
    </table>
    <a href="loginForm.jsp">Goto Login</a>
</form>
</body>
</html>
