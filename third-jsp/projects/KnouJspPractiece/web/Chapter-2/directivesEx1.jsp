<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 5:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    // Variable Declaration.
    String[] arrayTest = {"element1", "element2", "element3", "element4"};
    String stringTest = "Java, JSP, Spring,React;; , Android";

    // Length of Variable.
    int arrayLength = arrayTest.length;
    int stringLength = stringTest.length();

%>
<html>
<head>
    <title>Directives Example 1</title>
</head>
<body>
    <h2>Directives Example Page 1</h2><hr/>
    <!-- Iteration Statement Example with c:forEach. -->
    <c:set var="array" value="<%= arrayTest %>"/>
    <c:forEach var="i" items="${array}" begin="0" step="1" end="<%= arrayLength %>">
        ${i}<br/>
    </c:forEach>
    <!-- Iteration Statement Example with c:forTokens. -->
    <c:set var="stringBefore" value="<%= stringTest %>"/>
    <c:forTokens var="stringAfter" items="${stringBefore}" delims=", ;">
        ${stringAfter}<br/>
    </c:forTokens>
</body>
</html>
