<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-30
  Time: 오후 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Page Example</title>
</head>
<body>
    <h2>Request Page Example</h2>

    <!-- Direct Access via Servlet. -->
    <h3>Direct Access</h3>
    <a href="/HelloServlet">HelloServlet</a>

    <!-- GET Request to Servlet. -->
    <h3>GET Request</h3>
    <form action="/HelloServlet" method="get">
        <p>Name : <input type="text" name="name"/></p>
        <input type="submit" name="SEND"/>
    </form>

    <!-- POST Request to Servlet. -->
    <h3>POST Request</h3>
    <form action="/HelloServlet" method="post">
        <p>Name : <input type="text" name="name"/></p>
        <input type="submit" name="SEND">
    </form>
</body>
</html>
