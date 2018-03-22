<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: PM 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UI Data 처리</title>
</head>
<body>
<%
    String r1 = request.getParameter("r1");
    String[] hobby = request.getParameterValues("hobby"); //getParameterValues는 여러개 선택시 배열로 받아오는데 참조 주소를 받아옴
    String month = request.getParameter("month");
    String comment = request.getParameter("comment");
    out.print(r1 + ", " + Arrays.toString(hobby) + ", " + month + ", " + comment); //배열을 출력할땐 Array클래스에 toString을 호출해야함

%>
</body>
</html>
