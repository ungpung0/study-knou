<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-08-29
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Directives Example 2</title>
</head>
<body>
    <h2>Directives Example Page 2</h2><hr/>
    <c:set var="now" value="<%=new Date()%>"/>
    <c:set var="str" value="JSP is Easy to Learn,Hard to Use."/>
    
    <h3>Formatting Tag(taglib)</h3>
    <p>Current Date : ${now}</p>
    <!-- Formatting Date. -->
    <p>yyyy:m:d : <fmt:formatDate value="${now}" type="date"/></p>
    <p>time : <fmt:formatDate value="${now}" type="time"/></p>
    <p>both : <fmt:formatDate value="${now}" type="both"/></p>
    <p>default : <fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/> </p>
    <p>short : <fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/></p>
    <p>medium : <fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/></p>
    <p>long : <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/></p>
    <p>full : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></p>
    <p>pattern : <fmt:formatDate value="${now}" pattern="yyyy:MM:dd, hh:mm:ss"/></p><hr/>

    <h3>Functions Tag(taglib)</h3>
    <p>Original String : ${str}</p>
    <!-- String Manipulation Functions -->
    <p>length : ${fn:length(str)}</p>
    <p>substring : ${fn:substring(str, 0, 11)}</p>
    <p>substringAfter : ${fn:substringAfter(str, ",")}</p>
    <p>substringBefore : ${fn:substringBefore(str, ",")}</p>
    <p>toUpperCase : ${fn:toUpperCase(str)}</p>
    <p>toLowerCase : ${fn:toLowerCase(str)}</p>
    <p>replace : ${fn:replace(str, "JSP", "Java")}</p>
    <p>indexOf : ${fn:indexOf(str, "Learn")}</p>
    <p>startsWith : ${fn:startsWith(str, "Java")}</p>
    <p>endWith : ${fn:endsWith(str, ".")}</p>
    <p>contains : ${fn:contains(str, "jsp")}</p>
    <p>containsIgnoreCase : ${fn:containsIgnoreCase(str, "jsp")}</p>
    <!-- Conversion String => Array with fn:split. -->
    <c:set var="array" value="${fn:split(str,' ')}"/>
    <p>join : ${fn:join(array, "[BLANK]")}</p>

</body>
</html>
