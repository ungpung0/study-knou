<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 6:47
  Desc: Delete data to DB from 'loginInfo.jsp'.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Use jstl core to prefix 'c'. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="data" class="com.ungpung0.membermanagement.Model.MemberDAO" scope="page"/>
<html>
<head>
    <title>Delete Process Page</title>
</head>
<body>
    <% String name = request.getParameter("name"); %>
    <c:choose>
        <c:when test="<%=data.deleteOne(name)%>">
            <c:redirect url="logoutProcess.jsp"/>
        </c:when>
        <c:otherwise>
            <h3>Delete Failed!</h3>
            <a href="loginInfo.jsp">Goto Info</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
