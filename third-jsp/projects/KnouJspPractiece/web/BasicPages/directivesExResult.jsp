<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Directives Example 1</title>
</head>
<body>
    <h2>Directives Example 1</h2>
    <!-- core:if. -->
    <c:if test="${param.id != null}"> <!-- param : Parameter Directives. -->
        ${param.id}
    </c:if>
    <c:if test="${param.id == null}">
        Guest
    </c:if>
    <!-- core:choose-when. -->
    <c:choose>
        <c:when test="${param.color == 'yellow'}">
            <c:set var="colorName" value="Yellow"/>
        </c:when>
        <c:when test="${param.color == 'blue'}">
            <c:set var="colorName" value="Blue"/>
        </c:when>
        <c:when test="${param.color == 'orange'}">
            <c:set var="colorName" value="Orange"/>
        </c:when>
        <c:when test="${param.color == 'pink'}">
            <c:set var="colorName" value="Pink"/>
        </c:when>
        <c:otherwise>
            <c:set var="colorName" value="Less"/>
        </c:otherwise>
    </c:choose>
    is like <font color="${param.color}">${colorName}</font> Colors.
</body>
</html>
