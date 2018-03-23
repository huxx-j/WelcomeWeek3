<%@ page import="Ex.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 24.
  Time: AM 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> list = (List)session.getAttribute("list");

%>
<table>
    <tr>
        <td>학번</td>
        <td>이메일</td>
        <td>국어<br>점수</td>
        <td>영어<br>점수</td>
        <td>수학<br>점수</td>
        <td>과학<br>점수</td>
        <td>국사<br>점수</td>
        <td>총점</td>
        <td>담임<br>코드</td>
        <td>성취도</td>
        <td>지역<br>코드</td>
    </tr>
        <%
        for (int i = 0; i < 100; i++) {
    %>
    <tr>
        <td><%=list.get(i).getsNo()%></td>
        <td><%=list.get(i).getEmail()%></td>
        <td><%=list.get(i).getKor()%></td>
        <td><%=list.get(i).getEng()%></td>
        <td><%=list.get(i).getMath()%></td>
        <td><%=list.get(i).getSci()%></td>
        <td><%=list.get(i).getHis()%></td>
        <td><%=list.get(i).getTotal()%></td>
        <td><%=list.get(i).getTeacher()%></td>
        <td><%=list.get(i).getAchiv()%></td>
        <td><%=list.get(i).getAreacode()%></td>
    </tr>
        <%
        }
    %>
</body>
</html>
