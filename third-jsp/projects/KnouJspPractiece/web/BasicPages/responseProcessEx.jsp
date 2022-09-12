<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Response Process Page</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String userId = request.getParameter("id");
        String userPw = request.getParameter("pw");

        if(userId.equals("admin") && userPw.equals("root")) {
            response.sendRedirect("responseSuccess.jsp");
        }else {
            response.sendRedirect("responseFailure.jsp");
        }
    %>
</body>
</html>
