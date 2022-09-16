<%@ page import="Model.UsersDTO" %>
<%@ page import="Model.UsersDAO" %><%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-17
  Time: 오전 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Update Process</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    UsersDTO usersDTO = new UsersDTO();
    usersDTO.setUserId(Integer.parseInt(request.getParameter("userId")));
    usersDTO.setUserName(request.getParameter("userName"));
    usersDTO.setUserPassword(request.getParameter("userPassword"));
    usersDTO.setUserTel(request.getParameter("userTel"));
    new UsersDAO().updateOne(usersDTO);
%>
    <h3><a href="UserList.jsp">Return to List Page</a></h3>
</body>
</html>
