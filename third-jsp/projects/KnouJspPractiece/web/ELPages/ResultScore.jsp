<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-18
  Time: 오전 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
    <jsp:useBean id="scores" class="Model.Score" scope="page"/>
    <jsp:setProperty name="scores" property="korean" value="${param.koreanScore}"/>
    <jsp:setProperty name="scores" property="math" value="${param.mathScore}"/>
    <jsp:setProperty name="scores" property="english" value="${param.englishScore}"/>
    <jsp:setProperty name="scores" property="social" value="${param.socialScore}"/>
    <jsp:setProperty name="scores" property="moral" value="${param.moralScore}"/>

    <h3>Result Table</h3>
    <table border="2">
        <tr>
            <td>Korean</td>
            <td>${scores.korean}</td>
        </tr>
        <tr>
            <td>Math</td>
            <td>${scores.math}</td>
        </tr>
        <tr>
            <td>English</td>
            <td>${scores.english}</td>
        </tr>
        <tr>
            <td>Social</td>
            <td>${scores.social}</td>
        </tr>
        <tr>
            <td>Moral</td>
            <td>${scores.moral}</td>
        </tr>
        <tr>
            <td>Average</td>
            <td>${scores.average()}</td>
        </tr>
    </table>
</body>
</html>
