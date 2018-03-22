<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: AM 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>데이터 전송 using form tag</title>
</head>
<body>
<!-- 데이터를 보내는 데 사용되는 태그 -->
<form action="data_service.jsp" method="post"> <!-- method="post"는 url에서 ?뒤에 나오는 데이터를 숨겨줌 -->
    ID : <input type="text" name="id">
    <input type="submit" value="전송">
</form>

</body>
</html>
