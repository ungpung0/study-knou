<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-10
  Time: 오전 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Result Page</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String button = "Logout";

    if(cookies != null && cookies.length > 0) {
        for(int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("id")) {
                if(cookies[i].getValue().equals("0")) {
                    out.println("<h2>Login Failed.</h2>");
                    out.println("There is no ID!");
                    button = "Return";
                }else {
                    out.println("<h2>Login Successed.</h2>");
                    out.println("Your ID is " + cookies[i].getValue() + ".");
                }
            }
        }
    }else {
        out.println("<h2>Cookie Not Founded.</h2>");
        out.println("There is no Cookie!");
    }
%>
    <form action="loginOut.jsp" method="post">
        <input type="submit" value="<%=button%>">
    </form>
</body>
</html>
