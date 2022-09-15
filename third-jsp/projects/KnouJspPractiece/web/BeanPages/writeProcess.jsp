<%--
  Created by IntelliJ IDEA.
  User: Juwon
  Date: 2022-09-15
  Time: 오후 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="boardBean" class="Model.Board" scope="request"/>
<jsp:setProperty name="boardBean" property="*"/>
<jsp:forward page="writeResult.jsp"/>

<html>
<head>
    <title>Write Process</title>
</head>
<body>

</body>
</html>
