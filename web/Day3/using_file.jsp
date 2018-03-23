<%@ page import="java.io.File" %>
<%@ page import="java.io.Reader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.co.bit.day3.Student" %>
<%@ page import="org.apache.axis.session.Session" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>using_file</title>
</head>
<body>
<%
    ArrayList<Student> list = new ArrayList<>();
    String path = application.getRealPath("WEB-INF/file/Abc1115.txt"); //서버상에서 사용하는 주소가 일반적으로 사용하는 주소와 달라 꼭 물어봐야함
    File file = new File(path);
    Reader reader = new FileReader(file);
    BufferedReader bufferedReader = new BufferedReader(reader);

    for (int i = 0; i < 100; i++) {
        String str = bufferedReader.readLine();
        Student student = new Student(str.substring(0, 6), str.substring(6, 10), str.substring(11, 13),
                str.substring(14, 16), str.substring(17, 19), str.substring(20, 22), str.substring(23, 25),
                str.substring(25, 28), str.substring(28,29), str.substring(29,30), str.substring(30,31));
        list.add(student);

    }
    session.setAttribute("student", list);
    response.sendRedirect("list.jsp");
%>


<%--<table>--%>
    <%--<tr>--%>
        <%--<td>학번</td>--%>
        <%--<td>이메일</td>--%>
        <%--<td>국어<br>점수</td>--%>
        <%--<td>영어<br>점수</td>--%>
        <%--<td>수학<br>점수</td>--%>
        <%--<td>과학<br>점수</td>--%>
        <%--<td>국사<br>점수</td>--%>
        <%--<td>총점</td>--%>
        <%--<td>담임<br>코드</td>--%>
        <%--<td>성취도</td>--%>
        <%--<td>지역<br>코드</td>--%>
    <%--</tr>--%>
    <%--<%--%>
        <%--for (int i = 0; i < 100; i++) {--%>
    <%--%>--%>
    <%--<tr>--%>
        <%--<td><%=list.get(i).getsNo()%></td>--%>
        <%--<td><%=list.get(i).getEmail()%></td>--%>
        <%--<td><%=list.get(i).getKor()%></td>--%>
        <%--<td><%=list.get(i).getEng()%></td>--%>
        <%--<td><%=list.get(i).getMath()%></td>--%>
        <%--<td><%=list.get(i).getSci()%></td>--%>
        <%--<td><%=list.get(i).getHis()%></td>--%>
        <%--<td><%=list.get(i).getTotal()%></td>--%>
        <%--<td><%=list.get(i).getTeacher()%></td>--%>
        <%--<td><%=list.get(i).getAchiv()%></td>--%>
        <%--<td><%=list.get(i).getAreacode()%></td>--%>
    <%--</tr>--%>
    <%--<%--%>
        <%--}--%>
    <%--%>--%>
</table>
</body>
</html>
