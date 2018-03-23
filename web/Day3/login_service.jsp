<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: PM 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login_service</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String str="";
    if (id.equals("admin") && pw.equals("1234")) {
        str = "반갑습니다.";
        session.setAttribute("member",id); //key & value로 전체페이지에서 참조가능
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("intro.jsp");
        requestDispatcher.forward(request, response);
    } else {
        response.sendRedirect("login.jsp?str=1");
    }
    out.print(str);
%>

</body>
</html>
