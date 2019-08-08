<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
//Enumeration을 사용해 세션의 key set을 가져옴
Enumeration<String> attr = session.getAttributeNames();
while(attr.hasMoreElements()){//다음요소가 있으면
	String key=attr.nextElement();//다음 요소를 읽음
    Object value=session.getAttribute(key); // return
    out.println("변수명:"+key);
    out.println(",값:"+value+"<br>");
}

String id=(String)session.getAttribute("id");
int age=0;
//sesssion을 지운후 NullPointerException이 안나오게 하려면 if문 처리해야함
if(session.getAttribute("age") != null){
	age=(int)session.getAttribute("age");
}
double height=0;
if(session.getAttribute("height") != null){
	height=(double)session.getAttribute("height");
}
%>
아이디 : <%=session.getAttribute("id") %><br>
나이 : <%=age %><br>
키 : <%=height %><br>

<a href="deleteSession.jsp">세션삭제</a>

</body>
</html>