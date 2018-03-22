<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: PM 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UI</title>
</head>
<body>
    <form action="ui_data.jsp" method="post">
        Q1. 가장 자신있는 언어는? <br>
        <input type="radio" name="r1" value="JAVA"> JAVA <!-- 단일선택은 이름을 같게해야함 -->
        <input type="radio" name="r1" value="C#"> C#
        <input type="radio" name="r1" value="C++"> C++
        <input type="radio" name="r1" value="Python"> Python <br>

        <input type="checkbox" name="hobby" value="Coding"> Coding <!-- 다중선택 -->
        <input type="checkbox" name="hobby" value="Modeling"> Modeling
        <input type="checkbox" name="hobby" value="Testing"> Testing
        <input type="checkbox" name="hobby" value="Maintenance"> Maintenance <br>

        <select name="month"> <!-- 셀렉트박스 월 / 일 보기중에 선택하는거 -->
            <option value="v0">월
            <option value="v1">1
            <option value="v2">2
            <option value="v3">3
            <option value="v4">4
            <option value="v5">5
            <option value="v6">6
            <option value="v7">7
            <option value="v8">8
            <option value="v9">9
            <option value="v10">10
            <option value="v11">11
            <option value="v12">12
        </select> <br>
        <textarea rows="5" cols="80" name="comment"> Hello!</textarea>
        <input type="submit" value="전송">

    </form>
</body>
</html>
