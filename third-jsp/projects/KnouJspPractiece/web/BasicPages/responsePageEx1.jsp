<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-30
  Time: 오전 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Response Example 1</title>
</head>
<body>
    <h2>Response Example Page 1</h2>
    <%
        // Refresh Page in 5 Seconds.
        response.setIntHeader("Refresh", 5);

        // Get Current Time.
        Calendar calendar = new GregorianCalendar();
        int currentHour = calendar.get(Calendar.HOUR);
        int currentMinute = calendar.get(Calendar.MINUTE);
        int currentSecond = calendar.get(Calendar.SECOND);
        out.println(currentHour + ":" + currentMinute + ":" + currentSecond);
    %>
</body>
</html>
