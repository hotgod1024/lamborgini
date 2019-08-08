<!-- http://192.168.0.9/web02/ch01/my_joinmembership2.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto');

body {
    font-family: Verdana, sans-serif;
    margin: auto;
	display: table;
	padding: 0;
	background-image: url(images/배경화면4.png);
	background-repeat: no-repeat;
	background-size: cover;
}
table{
    background :rgba(0, 0, 0, .5); 
    color: white; 
	text-align: center; 
	margin-top :200px;
	display: table;
	padding: 0;}

table{
    border-top-right-radius: 10em;
    border-bottom-right-radius:10em;
    border-top-left-radius: 10em;
    border-bottom-left-radius: 10em;
}

#join{ width:100px; height: 80px;}



</style>
</head>
<body>

<%
request.setCharacterEncoding("utf-8");
String userid=request.getParameter("user_id");
String pwd=request.getParameter("pw");
String pw1=request.getParameter("pw1");
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String birthday=request.getParameter("birthday");
String message="";
%>
<%=message %> 

<table>
<tr>
<td style="font-size: 100px">
<%=name %> <font size="50px">Member.</font>
<br>
<font size="50px">Thank you for joining <br> </font>
<strong>Lamborghini</strong><br><br>
</td>
</tr>

<tr>
<td>
<a href="my_project2.html"><input type="submit" name="submit" value="Join"  
     style="color: black; border-radius: 30px; width: 450px; height: 50px;
     font-size: 20px;" ></a>
</td>
</tr>
</table>


</body>
</html>