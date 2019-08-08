<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%-- <% 
String num=(String)session.getAttribute("num");
String name=(String)session.getAttribute("name");
String position=(String)session.getAttribute("position");
String dept=(String)session.getAttribute("num");
String date=(String)session.getAttribute("date");
String pay=(String)session.getAttribute("pay");
%>
사원번호 : <%=num %><br>
사원이름 : <%=name %><br>
직      책 : <%=position %><br>
부      서 : <%=dept %><br>
입사일자 : <%=date %><br>
연      봉 : <%=pay %><br> --%>

사원번호 : ${sessionScope.num }<br>
사원이름 : ${sessionScope.name }<br>
직      책 : ${sessionScope.position }<br>
부      서 : ${sessionScope.dept }<br>
입사일자 : ${sessionScope.date }<br>
연      봉 : ${sessionScope.pay }<br>


</body>
</html>