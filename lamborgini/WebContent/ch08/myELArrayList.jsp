<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.util.ArrayList" %>

<%
ArrayList<String> items = new ArrayList<>();
items.add("사원번호 :"+"001");
items.add("사원이름 :"+"홍길동");
items.add("직      책 :"+"대리");
items.add("부      서 :"+"전산");
items.add("입사일자 :"+"2019년1월1일");
items.add("연      봉 :"+"3000만");
request.setAttribute("items", items);
%>
<jsp:forward page="myELArrayList_result.jsp"></jsp:forward>


</body>
</html>