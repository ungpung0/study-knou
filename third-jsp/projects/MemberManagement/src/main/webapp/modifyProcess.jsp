<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 6:41
  Desc: Modify data to DB from 'loginInfo.jsp'.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Use jstl core to prefix 'c'. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- bean set. -->
<jsp:useBean id="member" class="com.ungpung0.membermanagement.Model.MemberDTO" scope="page"/>
<jsp:setProperty name="member" property="*"/>
<jsp:useBean id="data" class="com.ungpung0.membermanagement.Model.MemberDAO" scope="page"/>

<html>
<head>
    <title>Modify Process Page</title>
</head>
<body>
    <h2>Modify Process Page</h2>
    <c:choose>
        <c:when test="<%=data.modifyOne(member)%>">
            <h3>Modify Success!</h3>
        </c:when>
        <c:otherwise>
            <h3>Modify Failed!</h3>
        </c:otherwise>
    </c:choose>
    <a href="loginInfo.jsp">goto Info</a>
</body>
</html>
