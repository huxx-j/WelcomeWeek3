<%@ page import="java.util.Random" %>
<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 21.
  Time: PM 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Word_Service</title>
</head>
<body>
<h1>
<% //스크립트립

    String proverb[] = {"엄마 말을 잘듣자","돈이 전부가 아니지만 그만한게 없다.","상대방이 이유없이 날 싫어한다면 나를 싫어하는 이유를 만들어줘라",
        "나만 힘든건 아니지만 니가 힘든걸 안다고 해도 내가 덜 힘든건 아니다","기분이 저기압 일땐 고기앞으로 가라"};

    Random r = new Random();
    int index = r.nextInt(proverb.length);
    out.println(proverb[index]);
//    int i = (int)(Math.random()*5)+1;
//    out.println(i);
//    switch (i) {
//        case 1:
//            out.println(proverb[i-1]);
//            break;
//        case 2:
//            out.println(proverb[i-1]);
//            break;
//        case 3:
//            out.println(proverb[i-1]);
//            break;
//        case 4:
//            out.println(proverb[i-1]);
//            break;
//        case 5:
//            out.println(proverb[i-1]);
//            break;
//    }


    //격언 5개를 만들어서 접속하는 클라이언트에게 하나를 선택해서 보여주는 코드작성.
%> <%-- 이 안에서는 자바 언어사용가능 --%>
</h1>
</body>
</html>
