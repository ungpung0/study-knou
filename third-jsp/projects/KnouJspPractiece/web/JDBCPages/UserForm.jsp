<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form Page (INSERT)</title>
</head>
<body>
<form action="UserInsert.jsp" method="post">
    <table border="1">
        <tr>
            <th>NAME</th>
            <td><input type="text" name="user_name"></td>
        </tr>
        <tr>
            <th>PW</th>
            <td><input type="password" name="user_password"></td>
        </tr>
        <tr>
            <th>.TEL</th>
            <td><input type="text" name="user_tel"></td>
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
