<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 5:57
  Desc : Input data and request to 'loginProcess.jsp'.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form Page</title>
</head>
<body>
    <h2>Login Form Page</h2>
    <form action="loginProcess.jsp" method="post">
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
                <td colspan="2"><input type="submit" value="Login"></td>
            </tr>
        </table>
        <a href="registerForm.jsp">Goto Register</a>
    </form>
</body>
</html>