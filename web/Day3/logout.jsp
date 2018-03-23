<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그아웃</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("start.jsp");
%>
</body>
</html>
