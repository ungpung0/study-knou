<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response Failure Page</title>
</head>
<body>
    <!-- <h2>You are Failed to Login!!!</h2> -->
    <%
        response.sendError(444, "You have Failed to Login!!!");
    %>

</body>
</html>
