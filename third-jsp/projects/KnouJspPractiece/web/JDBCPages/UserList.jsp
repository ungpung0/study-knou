<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>User Select Page</title>
</head>
<body>
<table>
    <th>ID</th>
    <th>NAME</th>
    <th>.TEL</th>
    <th>MENU</th>
    <%
        // DB Connection.
        Class.forName("org.mariadb.jdbc.Driver");
        String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
        String dbUser = "study_user";
        String dbPass = "root";

        try (
                Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
        ) {
            while (resultSet.next()) {
                out.println("<tr>");
                out.println("<td>" + resultSet.getString("user_id") + "</td>");
                out.println("<td>" + resultSet.getString("user_name") + "</td>");
                out.println("<td>" + resultSet.getString("user_tel") + "</td>");

                String update = String.format("<a href='UserFormUpdate.jsp?id=%s'>Update</a>", resultSet.getString("user_id"));
                String delete = String.format("<a href='UserDelete.jsp?id=%s'>Delete</a>", resultSet.getString("user_id"));
                out.println("<td>" + update + delete + "</td>");
                out.println("</tr>");
            }
        }
    %>
</table>
<h3><a href="UserList.jsp">Create User</a></h3>
</body>
</html>
