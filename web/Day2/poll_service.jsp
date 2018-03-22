<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 22.
  Time: PM 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Poll_Data</title>
    <style type="text/css">
        .per { <%-- 같은 속성의 텍스트를 클래스화 시켜 한번에 수정 --%>
            text-align: center;
        }
    </style>
</head>
<body>
<%! //이렇게 하면 누적됨
    int[] votes = null;
    int sum;

    public void jspInit() { //life cycle
        votes = new int[5];
        System.out.println("jsp instance create");
    }

    public void jspDestroy () {
        System.out.println("jsp instance destroy");
        System.out.println("resource free");
    }

%>

<%
    String name = request.getParameter("p");
    switch (name) {
        case "0":
            votes[0]++;
            break;
        case "1":
            votes[1]++;
            break;
        case "2":
            votes[2]++;
            break;
        case "3":
            votes[3]++;
            break;
        case "4":
            votes[4]++;
            break;
    }

    sum = votes[0]+votes[1]+votes[3]+votes[4];


    String[] r = {"","","","",""};

    for (int i = 0; i <5; i++) {
            float f = 0;
            if (votes[i]!=0) {
                f = (votes[i]/(float)sum)*100;
                r[i]=String.format("%.2f",f);
            }
    }

%>

<table>
    <tr><td>Q1. </td><td>아이돌 그룹 득표수</td><td><%=sum%></td><td>득표율</td></tr>
    <tr><td>1.</td><td>빅뱅</td><td><%=votes[0]%></td><td class="per"><%=r[0]%></td></tr>
    <tr><td>2.</td><td>레드벨벳</td><td><%=votes[1]%></td><td class="per"><%=r[1]%></td></tr>
    <tr><td>3.</td><td>느와르</td><td><%=votes[2]%></td><td class="per"><%=r[2]%></td></tr>
    <tr><td>4.</td><td>BTS</td><td><%=votes[3]%></td><td class="per"><%=r[3]%></td></tr>
    <tr><td>5.</td><td>워너원</td><td><%=votes[4]%></td><td class="per"><%=r[4]%></td></tr>

</table>

</body>
</html>
