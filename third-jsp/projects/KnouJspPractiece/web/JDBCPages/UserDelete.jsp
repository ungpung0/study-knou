<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-16
  Time: 오전 7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>User Delete Page</title>
</head>
<body>
<%
    // from UserList.jsp
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String sql = String.format("DELETE FROM users WHERE user_id = %s", id);

    // DB Connection.
    Class.forName("org.mariadb.jdbc.Driver");
    String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
    String dbUser = "study_user";
    String dbPass = "root";

    try (
            Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            Statement statement = connection.createStatement();
    ) {
        int result = statement.executeUpdate(sql);
        if (result == 1) {
            out.println("Record Delete Successed.");
        } else {
            out.println("Record Delete Failed.");
        }
    }
%>
<a href="UserList.jsp">Return to List</a>
</body>
</html>
