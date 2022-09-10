<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-10
  Time: 오전 6:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Process</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    if(id.equals("admin") && pw.equals("1234")) {
        Cookie cookie = new Cookie("id", id);
        response.addCookie(cookie);
        response.sendRedirect("loginResult.jsp");
    }else {
        Cookie cookie = new Cookie("id", "0");
        response.addCookie(cookie);
        response.sendRedirect("loginResult.jsp");
    }
%>
</body>
</html>
