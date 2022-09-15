<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Write Page</title>
</head>
<body>
    <form action="writeProcess.jsp" method="post">
        <table>
            <tr>
                <td>Title</td>
                <td><input type="text" name="boardTitle" size="50"></td>
            </tr>
            <tr>
                <td>Writer</td>
                <td><input type="text" name="boardWriter"></td>
            </tr>
            <tr>
                <td>Text</td>
                <td><textarea rows="20" name="boardText"></textarea></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="boardPassword"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Confirm">
                    <input type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
