<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-27
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello JSP</title>
  </head>
  <body>
    <h2>My First JSP Page.</h2>
    <%
      int a = 10, b = 20;
      out.print(a + b);
      out.print("<br>");
    %>
  </body>
</html>
