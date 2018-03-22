<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: AM 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cal Service</title>
</head>
<body>
<%
    double num1 = Double.parseDouble(request.getParameter("num1"));
    double num2 = Double.parseDouble(request.getParameter("num2"));
    String cal = request.getParameter("cal");
    double result=0;

    if (cal.equals("+")) {
        result = num1+num2;
    } else if (cal.equals("*")) {
        result = num1*num2;
    } else if (cal.equals("/")) {
        result = num1/num2;
    } else if (cal.equals("-")) {
        result = num1-num2;
    }
    String r2 = String.format("%.2f",result); //%.2f는 소수점 둘째자리까지 표현

    String data = String.format("&%s=%s&%s=%s&%s=%s","num1",num1,"num2",num2,"cal",cal);
    response.sendRedirect("cal.jsp?result="+r2+data);
//    response.sendRedirect("cal.jsp?result="+r2+"&num1="+num1+"&num2="+num2+"&cal="+cal); //cal.jsp 화면으로 다시 감
    out.print(num1 + " " + cal + " " + num2 + " = " + result);
%>
</body>
</html>
