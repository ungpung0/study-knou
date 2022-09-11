<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-11
  Time: 오후 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Login Process</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    if(id.equals("admin") && pw.equals("1234")) {
        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("id", id);
    }
    response.sendRedirect("loginResult.jsp");
%>
</body>
</html>
