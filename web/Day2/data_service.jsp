<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: AM 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>데이터 처리 페이지</title>
</head>
<body>
<%
    String value = request.getParameter("data"); //send_data.jsp에서 전달한 데이터를 받아옴
    String user = request.getParameter("id");

    out.print(value + " = " + user);

%>
</body>
</html>
