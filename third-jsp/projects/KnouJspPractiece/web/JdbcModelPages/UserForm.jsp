<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-17
  Time: 오전 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Form Page</title>
</head>
<body>
    <h3>Welcome to Registration</h3>
    <form action="UserInsert.jsp" method="post">
        <table border="2">
            <tr>
                <td>Name</td>
                <td><input type="text" name="userName"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="userPassword"></td>
            </tr>
            <tr>
                <td>.Tel</td>
                <Td><input type="text" name="userTel"></Td>
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
