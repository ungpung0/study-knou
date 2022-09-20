<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 6:47
  Desc: Delete session to logout.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout Process Page</title>
</head>
<body>
    <h2>Logout Process Page</h2>
    <%
        // Delete session.
        String name = (String)session.getAttribute("name");
        if(name != null)
            session.invalidate();
    %>
    <h3>Logout Success!</h3>
    <a href="loginForm.jsp">Goto Login</a>
</body>
</html>
