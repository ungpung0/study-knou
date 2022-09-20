<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 5:57
  Desc : Insert data to DB from 'registerForm.jsp'.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Use jstl core to prefix 'c'. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bean set. -->
<jsp:useBean id="member" class="com.ungpung0.membermanagement.Model.MemberDTO" scope="page"/>
<jsp:setProperty name="member" property="*"/> <!-- request elements name == dto data name -->
<jsp:useBean id="data" class="com.ungpung0.membermanagement.Model.MemberDAO" scope="page"/>

<html>
<head>
    <title>Register Process Page</title>
</head>
<body>
    <h2>Register Proccess Page</h2>
    <c:choose>
        <c:when test="<%=!data.memberValidation(member.getName(), member.getPassword())%>">
            <c:choose>
                <c:when test="<%=data.insertOne(member)%>">
                    <h3>Register Success!</h3>
                    <a href="loginForm.jsp">Goto Login</a>
                </c:when>
                <c:otherwise>
                    <h3>Register Failed!</h3>
                    <a href="registerForm.jsp">Try Again</a>
                </c:otherwise>
            </c:choose>
        </c:when>
    </c:choose>
</body>
</html>
