<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-10
  Time: 오후 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout Process</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null && cookies.length > 0) {
        for(int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("id")) {
                Cookie cookie = new Cookie("id", "");
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                response.sendRedirect("loginMain.jsp");
            }
        }
    }
%>
</body>
</html>
