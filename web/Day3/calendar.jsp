<%@ page import="java.util.Calendar" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: AM 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table {
            width: 500px;
            height: 400px;
            border-collapse: collapse; <%-- 이중선 업애기 --%>
            border: 1px solid black; /* 선 굵기, 실선, 색깔 */
            text-align: center;
        }
        td {
            border: 1px solid black;
        }
        .sun {
            color: red;
        }
        .sat {
            color: blue;
        }
        #week {
            text-align: center;
        }
        .left {
            text-align: left;
            vertical-align: text-top;
        }
    </style>
</head>
<body>
<table>
    <%
        int year = Integer.parseInt(request.getParameter("year"));
        int month = Integer.parseInt(request.getParameter("month"));

        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month-1, 1);

        int lastDay = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
        int space = calendar.get(Calendar.DAY_OF_WEEK)-1;

        String[] num = new String[42];
        Arrays.fill(num,"");
//        for (int i = 0; i < space; i++) { //공백출력
//        num[i] = 0;
//
//        }
        int day = 1;
        for (int i = 0; i < lastDay; i++) { //숫자출력
            num[space + i] = String.valueOf(day++);

        }
    %>

    <tr><td colspan="7" align="center"><%=year%>년 <%=month%>월</td></tr> <!-- colspan 7칸 합치기! -->
    <tr id="week">
        <td class="sun">일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td class="sat">토</td>
    </tr>
    <% for (int i= 0; i<num.length; i+=7) {
        if (i>27 && num[28].equals("") || i > 31 && num[35].equals("")) {
            break;
        }
    %>
    <tr class="left">
        <td class="sun"><%=num[i]%></td>
        <td><%=num[i+1]%></td>
        <td><%=num[i+2]%></td>
        <td><%=num[i+3]%></td>
        <td><%=num[i+4]%></td>
        <td><%=num[i+5]%></td>
        <td class="sat"><%=num[i+6]%></td>
    </tr>
    <%
        }
    %>


    <%--<tr class="left">
        <td class="sun"><%=num[7]%></td><td><%=num[8]%></td><td><%=num[9]%></td><td><%=num[10]%></td><td><%=num[11]%></td><td><%=num[12]%></td><td class="sat"><%=num[13]%></td>
    </tr>

    <tr class="left">
        <td class="sun"><%=num[14]%></td><td><%=num[15]%></td><td><%=num[16]%></td><td><%=num[17]%></td><td><%=num[18]%></td><td><%=num[19]%></td><td class="sat"><%=num[20]%></td>
    </tr>

    <tr class="left">
        <td class="sun"><%=num[21]%></td><td><%=num[22]%></td><td><%=num[23]%></td><td><%=num[24]%></td><td><%=num[25]%></td><td><%=num[26]%></td><td class="sat"><%=num[27]%></td>
    </tr>

    <tr class="left">
        <td class="sun"><%=num[28]%></td><td><%=num[29]%></td><td><%=num[30]%></td><td><%=num[31]%></td><td><%=num[32]%></td><td><%=num[33]%></td><td class="sat"><%=num[34]%></td>
    </tr>
    <%
        if (space == 6) {
    %>
    <tr class="left">
        <td class="sun"><%=num[35]%></td><td><%=num[36]%></td><td><%=num[37]%></td><td><%=num[38]%></td><td><%=num[39]%></td><td><%=num[40]%></td><td class="sat"><%=num[41]%></td>
    </tr>
    <%
        }
    %>
--%>
</table>
</body>
</html>
