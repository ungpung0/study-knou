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
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>User Form Page (UPDATE)</title>
</head>
<body>
<%
    // from UserList.jsp
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String sql = String.format("SELECT FROM users WHERE user_id = '%s'", id);

    // DB Connection.
    Class.forName("org.mariadb.jdbc.Driver");
    String dbUrl = "jdbc:mariadb://localhost:3306/study_db";
    String dbUser = "study_user";
    String dbPass = "root";

    String userName;
    String userPass;
    String userTel;
    int userId;
    try (
            Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql)
    ) {
        userName = resultSet.getString("user_name");
        userPass = resultSet.getString("user_pw");
        userTel = resultSet.getString("user_tel");
        userId = resultSet.getInt("user_id");
    }

%>
<form action="UserUpdate.jsp" method="post">
    <input type="hidden" name="user_id" value="<%=userId%>">
    <table border="1">
        <tr>
            <th>NAME</th>
            <td><input type="text" name="user_name" value="<%=userName%>"></td>
        </tr>
        <tr>
            <th>PW</th>
            <td><input type="password" name="user_password" value="<%=userPass%>"></td>
        </tr>
        <tr>
            <th>.TEL</th>
            <td><input type="text" name="user_tel" value="<%=userTel%>"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Insert">
                <input type="reset" value="Cancel">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
