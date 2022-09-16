<%@ page import="Model.UsersDAO" %>
<%@ page import="Model.UsersDTO" %><%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-17
  Time: 오전 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form Page</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("id"));
    UsersDTO usersDTO = new UsersDAO().selectOne(id);

%>
<h3>Welcome to Modification.</h3>
<form action="UserUpdate.jsp" method="post">
    <table border="2">
        <input type="hidden" name="userId" value="<%=usersDTO.getUserId()%>">
        <tr>
            <td>Name</td>
            <td><input type="text" name="userName" value="<%=usersDTO.getUserName()%>"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="userPassword" value="<%=usersDTO.getUserPassword()%>"></td>
        </tr>
        <tr>
            <td>.Tel</td>
            <Td><input type="text" name="userTel" value="<%=usersDTO.getUserTel()%>"></Td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Confirm">
                <input type="reset" value="Reset">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
