<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>


<%-- <%
session.setAttribute("num", "001");
session.setAttribute("name", "홍길동");
session.setAttribute("position", "대리");
session.setAttribute("dept", "전산");
session.setAttribute("date", "2019년1월1일");
session.setAttribute("pay", "3000만");
%> --%>


<c:set var="num" value="001" scope="session"/>
<c:set var="name" value="홍길동" scope="session"/>
<c:set var="position" value="대리" scope="session"/>
<c:set var="dept" value="전산" scope="session"/>
<c:set var="date" value="2019년1월1일" scope="session"/>
<c:set var="pay" value="3000만" scope="session"/>

세션 변수가 생성되었습니다.<br>
<a href="myEL_result.jsp">확인</a>


</body>
</html>