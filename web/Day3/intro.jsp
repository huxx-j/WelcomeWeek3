<%@ page import="kr.co.bit.day3.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>intro</title>
</head>
<body>
<%
    MemberVO vo = (MemberVO)session.getAttribute("member");
    if ( vo != null) {
        out.print(vo.getName()+"님 반갑습니다.");
    }
%>

</body>
</html>
