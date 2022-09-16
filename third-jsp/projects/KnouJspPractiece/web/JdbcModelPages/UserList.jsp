<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-17
  Time: 오전 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.UsersDTO" %>
<%@ page import="Model.UsersDAO" %>
<html>
<head>
    <title>User List Page</title>
</head>
<body>
    <h3>Welcome to List</h3>
    <table border="1">
        <th>ID</th>
        <th>Name</th>
        <th>Password</th>
        <th>Tel</th>
        <th>Menu</th>
<%
    ArrayList<UsersDTO> userList = new UsersDAO().selectAll();
    for(UsersDTO user : userList) {
        String linkUpdate = String.format("<a href='UserFormUpdate.jsp?id=%s'>Update</a>", user.getUserId());
        String linkDelete = String.format("<a href='UserDelete.jsp?id=%s'>Delete</a>", user.getUserId());
        out.println("<tr>");
        out.println("<td>" + user.getUserId() + "</td>");
        out.println("<td>" + user.getUserName() + "</td>");
        out.println("<td>" + user.getUserPassword() + "</td>");
        out.println("<td>" + user.getUserTel() + "</td>");
        out.println("<td>" + linkUpdate + "/" + linkDelete + "</td>");
        out.println("</tr>");
    }
%>
    </table>
    <h3><a href="UserForm.jsp">Go to Insert Page</a></h3>
</body>
</html>
