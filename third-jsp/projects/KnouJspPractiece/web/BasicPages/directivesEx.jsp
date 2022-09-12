<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="Template/error.jsp" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Add core taglib. -->
<html>
<head>
    <title>Directives Example</title>
</head>
<body>
    <%@ include file="Template/header.jsp" %> <!-- Include header.jsp -->
    <h2>Directives Example Page</h2><hr/>
    <!-- Sending Form -->
    <form method="get" action="directivesExResult.jsp">
        <p>ID : <input name="id"/></p>
        <p>COLOR :
            <select name="color">
                <option selected value="yellow">Yellow</option>
                <option value="blue">Blue</option>
                <option value="orange">Orange</option>
                <option value="pink">Pink</option>
            </select>
        </p>
        <input type="submit" value="SEND"/>
    </form>
    <%@ include file="Template/footer.jsp" %> <!-- Include footer.jsp -->
</body>
</html>
