<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-20
  Time: 오후 6:31
  Desc: Show data from DB, via Session.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.ungpung0.membermanagement.Model.MemberDTO" %>
<!-- bean set. -->
<jsp:useBean id="data" class="com.ungpung0.membermanagement.Model.MemberDAO" scope="page"/>
<%
    MemberDTO member = data.selectOne((String)session.getAttribute("name"));
    request.setAttribute("member", member);
%>

<html>
<head>
    <title>Login Info Page</title>
</head>
<body>
    <h2>Login Info Page</h2>
    <form action="modifyProcess.jsp" method="post">
        <table border="2">
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" value="${member.name}"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" value="${member.password}"></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td><input type="text" name="phone" value="${member.phone}"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" value="${member.email}"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Modify"></td>
            </tr>
        </table>
        <a href="logoutProcess.jsp">Logout</a><br>
        <a href="deleteProcess.jsp?name=${member.name}">Delete</a>
    </form>
</body>
</html>
