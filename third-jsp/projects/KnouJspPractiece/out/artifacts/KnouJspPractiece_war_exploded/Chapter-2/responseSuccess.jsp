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
    <title>Response Success Page</title>
</head>
<body>
    <h2>You are Succeed to Login!!!</h2>
    <%
        response.setHeader("Cache-control", "use_cache");
        response.addHeader("ContentType", "text/html; charset=utf-8");
        response.setDateHeader("date", 1L);
    %>
    <%-- --%>
</body>
</html>
