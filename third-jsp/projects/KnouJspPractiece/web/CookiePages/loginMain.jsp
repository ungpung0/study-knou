<%--
  Created by IntelliJ IDEA.
  User: ungpung0
  Date: 2022-09-10
  Time: 오전 6:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <form action="loginProcess.jsp" method="post">
        <p>ID: <input type="text" name="id"></p>
        <p>PW: <input type="text" name="pw"></p>
        <input type="submit" value="Login">
    </form>
</body>
</html>
