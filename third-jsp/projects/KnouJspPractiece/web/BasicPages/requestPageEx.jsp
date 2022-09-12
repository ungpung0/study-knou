<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Example Page</title>
</head>
<body>
    <!-- Form. -->
    <form action="requestProcessEx.jsp" method="POST">
        <p>Name : <input type="text" name="name"/></p>
        <p>Password : <input type="text" name="password"/></p>
        <input type="submit" value="Send"/>
    </form>
</body>
</html>
