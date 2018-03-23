<%@ page import="kr.co.bit.day3.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("fullname");
    MemberVO vo = new MemberVO(id,pw,name);
    session.setAttribute("member",vo);
//    out.print(String.format("%s %s %s", id,pw,name));
    response.sendRedirect("intro.jsp");
%>

</body>
</html>
