<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 23.
  Time: AM 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>달력요청</title>
</head>
<body>
<form action="calendar.jsp" method="get">
    <select name="year">
        <option> 년도
        <option value="2001"> 2001
        <option value="2002"> 2002
        <option value="2003"> 2003
        <option value="2004"> 2004
        <option value="2005"> 2005
        <option value="2006"> 2006
        <option value="2007"> 2007
        <option value="2008"> 2008
        <option value="2009"> 2009
        <option value="2010"> 2010
    </select>

    <select name="month">
        <option value=""> 월
        <option value="1"> 1
        <option value="2"> 2
        <option value="3"> 3
        <option value="4"> 4
        <option value="5"> 5
        <option value="6"> 6
        <option value="7"> 7
        <option value="8"> 8
        <option value="9"> 9
        <option value="10"> 10
        <option value="11"> 11
        <option value="12"> 12
    </select>

    <input type="submit" value="요청">

</form>

</body>
</html>
