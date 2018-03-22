<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: AM 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Times Table</title>
</head>
<body>
<%

    for (int i = 2; i < 10; i++) {
        for (int k = 1; k < 10; k++) {
            out.print(i + " * " + k + " = " + i * k + "<br/>");
        }

    }

    out.print("2 * 1 = 2 <br>");
    out.print("2 * 2 = 4 <br>");
    out.print("2 * 3 = 6 <br>");
    out.print("2 * 4 = 8 <br>");
    out.print("2 * 5 = 10 <br>");
    out.print("2 * 6 = 12 <br>");
    out.print("2 * 7 = 14 <br>");
    out.print("2 * 8 = 16 <br>");
    out.print("2 * 9 = 18 <br>");

%>
</body>
</html>
