<%@ page import="javax.sound.midi.Soundbank" %><%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Controller Page</title>
</head>
<body>
<%
    String value = request.getParameter("select");
    String url = "error.jsp";
    if (value.equals("0")) { //상위폴더는 ../    현재폴더는 안붙여도 되지만 명확하게 표현하면 ./
        String id = (String)session.getAttribute("member");

        if (id == null) {
            url = "./login.jsp";
        } else {
            url = "../Day2/poll.jsp";
        }
    } else if (value.equals("1")) {
        url = "./request_calendar.jsp";

    } else if (value.equals("2")) {
        url = "./login.jsp";
    }

    RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
    requestDispatcher.forward(request, response);
//    System.out.println(value);
//    response.sendRedirect("back.jsp"); 이렇게만 하면 데이터가 back.jsp 로 넘어가지 않는다.

// 이런 연결은 1페이지 이상 하는건 좋지 않음
%>
</body>
</html>
