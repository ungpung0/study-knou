<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오전 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Random" %> <!-- Import Random Library. -->
<%@ page import="java.util.Calendar" %> <!-- Import Calendar Library. -->
<%!
    // Sum Method.
    public int sum(int numberStart, int numberLast) {
        int result = 0;
        for(int i = numberStart; i <= numberLast; i++) {
            result += i;
        }
        return result;
    }
%>
<%
    // Randomize number with Time Seed.
    long seed = System.currentTimeMillis();
    Random random = new Random(seed);
    int number = random.nextInt();

    // Current Time with Calendar Lib.
    Calendar calendar = Calendar.getInstance();
    int timeHour = calendar.get(Calendar.HOUR_OF_DAY);
    int timeMinute = calendar.get(Calendar.MINUTE);
    int timeSecond = calendar.get(Calendar.SECOND);

%>
<html>
<head>
    <title>Scripting Elements Example</title>
</head>
<body>
    <h2>Scripting Elements Example Page</h2>
    <p>Random : <%= number %></p>
    <p>CurrentTime : <%= timeHour %>:<%= timeMinute%>:<%= timeSecond %></p>
    <p>Sum 5 to 10 : <%= sum(5, 10) %></p>
    <!-- AM/PM with if statement. -->
    <% if(timeHour >= 12) { %>
        <p>Now is PM</p>
    <% } else { %>
            <p>Now is AM</p>
    <% } %>
</body>
</html>
