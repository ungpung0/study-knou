<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-16
  Time: 오전 8:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<html>
<head>
    <title>User Update Page</title>
</head>
<body>
<%
    // from UserFormUpdate.jsp
    request.setCharacterEncoding("UTF-8");
    int userId = Integer.parseInt(request.getParameter("user_id"));
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
        String sqlUpdate =
                String.format("UPDATE users SET user_name='%s', user_pw='%s', user_tel='%s' WHERE user_id='%d'", userName, userPassword, userTel, userId);
        int result = statement.executeUpdate(sqlUpdate);

        // is Successed?
        if (result == 1)
            out.println("<h3>UPDATE SUCCESS!</h3>");
        else
            out.println("<h3>UPDATE FAILED!</h3>");
    }
%>
</body>
</html>
