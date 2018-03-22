<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: AM 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- ㅇㄴㄹㄴㅇㄹ-->
    <title>데이터 전송</title>
    <style type="text/css">
        input {text-align: center;
            color: red;
        }

        #result { <%-- 특정 부분만 적용하려면 id를 지정하고 이코드처럼 써준다. --%>
            color: red;
        }

    </style>
</head>
<body>

<%
    String result = request.getParameter("result");
    if (result == null) {
        result = "";
    }
    String num1 = request.getParameter("num1");
    if (num1 == null) {
        num1 = "";
    }
    String num2 = request.getParameter("num2");
    if (num2 == null) {
        num2 = "";
    }
    String cal = request.getParameter("cal");
    if (cal == null) {
        cal = "";
    }
%>

<form action="cal_service.jsp" method="post">
    <input type="text" name="num1" size="5" value="<%=num1%>"> <!-- out.print(num);은 =num1 과 같은 -->
    <input type="text" name="cal" size="2" value="<%=cal%>">
    <input type="text" name="num2" size="5" value="<%=num2%>">
    <input type="submit" value="=" size="2">
    <input type="text" name="result" size="5" value="<%=result%>" id="result">

</form>
</body>
</html>
