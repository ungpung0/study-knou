<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-18
  Time: 오전 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input Score Page</title>
</head>
<body>
    <h3>Insert your Score...</h3>
    <form action="ResultScore.jsp" method="post">
        <p>Korean : <input type="number" name="koreanScore"></p>
        <p>Math : <input type="number" name="mathScore"></p>
        <p>English : <input type="number" name="englishScore"></p>
        <p>Social : <input type="number" name="socialScore"></p>
        <p>Moral : <input type="number" name="moralScore"></p>
        <input type="submit" value="Calculate">
    </form>
</body>
</html>
