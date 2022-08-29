<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 8:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Process Page</title>
</head>
<body>
    <%
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");

    %>
    <h3>Request Information</h3>
    <p>Client IP : <%=request.getRemoteAddr()%></p>
    <p>Client Protocol : <%=request.getProtocol()%></p>
    <p>Content Length : <%=request.getContentLength()%></p>
    <p>Content Encoding : <%=request.getCharacterEncoding()%></p>
    <p>Content Type : <%=request.getContentType()%></p>
    <p>Request Method : <%=request.getMethod()%></p>
    <p>Request URI : <%=request.getRequestURI()%></p>
    <p>Context Path : <%=request.getContextPath()%></p>
    <p>Server Name : <%=request.getServerPort()%></p>
    <p>Server Port : <%=request.getServerPort()%></p>
    <p>Query Statement : <%=request.getQueryString()%></p>

    <h3>Request Values</h3>
    <p>Your Name : <%=name%></p>
    <p>Your Password : <%=password%></p>
</body>
</html>
