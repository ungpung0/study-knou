<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-11
  Time: 오후 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<%
    HttpSession httpSession = request.getSession(false);
    if(httpSession != null) {
        httpSession.invalidate();
    }
%>
    <form action="loginProcess.jsp" method="post">
        <p>ID : <input type="text" name="id"></p>
        <p>PW : <input type="text" name="pw"></p>
        <input type="submit" value="Login">
    </form>
</body>
</html>
