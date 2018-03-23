<%@ page import="java.util.List" %>
<%@ page import="Ex.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.Reader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.BufferedReader" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 24.
  Time: AM 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> list = new ArrayList<>();
    String path = application.getRealPath("WEB-INF/file/Abc1115.txt");
    File file = new File(path);
    Reader reader = new FileReader(file);
    BufferedReader bufferedReader = new BufferedReader(reader);

    for (int i=0; i<100; i++) {
        String str = bufferedReader.readLine();
        Student student = new Student(str.substring(0, 6), str.substring(6, 10), str.substring(10, 13),
                str.substring(13, 16), str.substring(16, 19), str.substring(19, 22), str.substring(22, 25),
                str.substring(25, 28), str.substring(28,29), str.substring(29,30), str.substring(30,31));
        list.add(student);
    }

    session.setAttribute("list", list);
    response.sendRedirect("list.jsp");
%>

</body>
</html>
