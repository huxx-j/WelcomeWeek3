<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 1:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String str = request.getParameter("str");
    if (str == null) {
        str = "";
    } else if (str.equals("1")) {
        str = "해당하는 회원이 없습니다.";
    }
%>
<form action="login_service.jsp" method="get">
    ID : <input type="text" name="id" size="6"> &nbsp;&nbsp;
    PW : <input type="password" name="pw" size="6">
    <input type="submit" value="Login"> &nbsp;&nbsp;
    <%=str%>
    <%--<input type="text" value="<%=str%>">--%>
</form>
</body>
</html>
