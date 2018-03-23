<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: AM 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cal_serv</title>
</head>
<body>
<%
    int year = Integer.parseInt(request.getParameter("year"));
    int month = Integer.parseInt(request.getParameter("month"));

    Calendar calendar = Calendar.getInstance();
    calendar.set(year, month-1, 1);

    int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    int space = calendar.get(Calendar.DAY_OF_WEEK)-1;

    String[] num = new String[37];
    for (int i = 0; i < space; i++) { //공백출력
        num[i] = "";

    }
    for (int i = space; i <= lastDay; i++) { //숫자출력
        num[space] = String.valueOf(space-(space-1));

    }
%>


</body>
</html>
