<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 21.
  Time: PM 5:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test1</title>
</head>
<body>
<%
    for (int i = 2; i <= 9; i++) {
        for (int k = 1; k <= 9; k++) {
            out.print(String.format("%d * %d = %d &nbsp;&nbsp;&nbsp;", k,i,i*k));
        }
        out.println("<br/>");
    }
%>
<br>
<%
    for (int i = 2; i <= 9; i++) {
        for (int k = 1; k <= 9; k++) {
            out.println(i + " * " + k + " = " + i * k + "<br/>");

        }
        out.println("<br/>");
    }
%>
</body>
</html>
