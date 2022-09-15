<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>User Insert Page</title>
</head>
<body>
<%
    // from UserForm.jsp
    request.setCharacterEncoding("UTF-8");
    String userName = request.getParameter("user_name");
    String userPassword = request.getParameter("user_pw");
    String userTel = request.getParameter("user_tel");

    // DB Connection.
    Class.forName("org.mariadb.jdbc.Driver");
    String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
    String dbUser = "study_user";
    String dbPass = "root";
    try (
            Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            Statement statement = connection.createStatement();
    ) {
        String sqlInsert =
                String.format("INSERT INTO users (user_name, user_pw, user_tel) VALUES ('%s', '%s', '%s')", userName, userPassword, userTel);
        int result = statement.executeUpdate(sqlInsert);

        // is Successed?
        if (result == 1)
            out.println("<h3>INSERT SUCCESS!</h3>");
        else
            out.println("<h3>INSERT FAILED!</h3>");
    }
%>
<h3><a href="UserList.jsp">Return to List</a></h3>
</body>
</html>
