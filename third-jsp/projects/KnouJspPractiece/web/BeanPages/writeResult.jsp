<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="boardBean" class="Model.Board" scope="request"/>

<html>
<head>
    <title>Write Result Page</title>
</head>
<body>
<body>
    <table>
        <tr>
            <td>Title</td>
            <td><jsp:getProperty name="boardBean" property="boardTitle"/></td>
        </tr>
        <tr>
            <td>Writer</td>
            <td><jsp:getProperty name="boardBean" property="boardWriter"/></td>
        </tr>
        <tr>
            <td>Text</td>
            <td>
                <textarea rows="20" name="boardText">
                    <jsp:getProperty name="boardBean" property="boardText"/>
                </textarea>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td><jsp:getProperty name="boardBean" property="boardPassword"/></td>
        </tr>
    </table>
</body>
</body>
</html>
