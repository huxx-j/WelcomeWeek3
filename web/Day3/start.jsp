<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h>웹 서비스를 선택하세요</h>
<form action="middle.jsp" method="get">
    <input type="radio" name="select" value="0"> 설문조사
    <input type="radio" name="select" value="1"> 달력보기
    <input type="radio" name="select" value="2"> 로그인
    <input type="submit" value="선택">
</form>
</body>
</html>
