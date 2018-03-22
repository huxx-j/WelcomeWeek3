<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: PM 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>설문조사</title>
</head>
<body>
<!-- 아이돌 투표 -->
<form action="poll_service.jsp" method="post">
    <input type="radio" name="p" value="0"> 빅뱅
    <input type="radio" name="p" value="1"> 레드벨벳
    <input type="radio" name="p" value="2"> 느와르
    <input type="radio" name="p" value="3"> BTS
    <input type="radio" name="p" value="4"> 워너원 <br>

    <input type="submit" value="제출">
</form>
</body>
</html>
