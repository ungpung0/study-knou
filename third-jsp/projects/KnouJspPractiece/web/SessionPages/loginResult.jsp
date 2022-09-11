<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-11
  Time: 오후 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<html>
<head>
    <title>Login Result Page</title>
</head>
<body>
<%
    String button = "Return";
    HttpSession httpSession = request.getSession(false);
    if(httpSession != null) {
        String id = (String)httpSession.getAttribute("id");
        button = "Logout";
        out.println("<h2>Login Success!</h2>");
        out.println("<p>Your ID is " + id + ".</p>");
    }else {
        out.println("<h2>Login Failed!</h2>");
        out.println("<p>There is no ID.</p>");
    }
%>
    <form action="loginMain.jsp" method="post">
        <input type="submit" value="<%=button%>">
    </form>
</body>
</html>
