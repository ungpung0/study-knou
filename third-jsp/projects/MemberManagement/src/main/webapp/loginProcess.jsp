<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 5:57
  Desc: Create Session. if data in DB is valid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Use jstl core to prefix 'c'. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Set Request Encoding to 'UTF-8'. -->
<% request.setCharacterEncoding("UTF-8"); %>
<!-- Set bean. -->
<jsp:useBean id="member" class="com.ungpung0.membermanagement.Model.MemberDTO" scope="page"/>
<jsp:setProperty name="member" property="*"/>
<jsp:useBean id="data" class="com.ungpung0.membermanagement.Model.MemberDAO" scope="page"/>

<html>
<head>
    <title>Login Process Page</title>
</head>
<body>
    <h2>Login Proccess Page</h2>
    <c:choose>
        <c:when test="<%=!data.memberValidation(member.getName(), member.getPassword())%>">
            <h3>Login Failed!</h3>
            <a href="loginForm.jsp">Try Again</a>
        </c:when>
        <c:otherwise>
            <% session.setAttribute("name", member.getName()); %> <!-- Set session attribute. -->
            <h3>Login Success!</h3>
            <a href="loginInfo.jsp">Your Info</a>
        </c:otherwise>
    </c:choose>
</body>
</html>
