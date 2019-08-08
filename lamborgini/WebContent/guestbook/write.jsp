<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function check(){
	document.form1.action="${path}/guestbook_servlet/insert.do";
	document.form1.submit();
}
</script>
<style type="text/css">
/*body{text-align: center;}
table{margin: 0 auto; border-collapse: collapse;}
th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}
#button1 {
  background-color: white;
  color: black;
  border: 2px solid #4CAF50; /* Green */
/*  }*/
body {
	font-family: sans-serif;
	background-image:url("img/45.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	text-align: center;
	
}
table{margin: 0 auto; border-collapse: collapse;}
 
#div {
	
	width: 800px;
	padding-top: 40px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: white;
	text-align: center;
	margin-top: 200px;
	border: 2px solid lightgray;
	border-radius: 24px;
}

 h1 {
	opacity: .8;
	color: black;
	text-transform: uppercase;
	font-weight: 500;
}

table td #email,#name,#passwd {
	opacity: .8;
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #3498db;
	/* padding: 14px 10px; */
	width: 200px;
	outline: none;
	color: black;
	border-radius: 24px;
	transition: 0.25s;
}
table td #content {
	opacity: .8;
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #ffcc66;
	padding: 14px 10px;
	width: 500px;
	outline: none;
	color: black;
	border-radius: 24px;
	transition: 0.25s;
}

table td #name:focus, #email:focus , #passwd:focus {
	opacity: .8;
	width: 280px;
	border-color: #2ecc71;
}
 
#button1 {
	opacity: .8;
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #2ecc71;
	padding: 14px 40px;
	width: 200px;
	outline: none;
	color: black;
	border-radius: 24px;
	transition: 0.25s;
	cursor: pointer;
} 

#button1:hover {
	opacity: .8;
	background: #2ecc71;
}

</style>
</head>
<body>
<div class="container text-center">    
  <div class="container">
  <h1><strong>What We Do</strong></h1><br>
  <p><strong>If you want to go to the page, please press the button below.</strong></p><br><br>      
  <a href="../customer.jsp"><button type="button" class="btn btn-sm btn-primary" style="width: 600px; font-size: 25px;">Customer Service</button></a><br><br>
  <a href="../guestbook/index.jsp"><button type="button" class="btn btn-info active" style="width: 300px; font-size: 25px;">방명록</button></a>
  <a href="../board/index.jsp"><button type="button" class="btn btn-info active" style="width: 300px; font-size: 25px;">게시판</button></a>

  </div> 
</div>
<br><br><br>
<h1>방명록 작성</h1>
<br><br><br><br>

<div id="div">
<form name="form1" id="form1" method="post">


<table class="box" width="500px">
 
 <tr>
   <td>이름</td>
   <td><input name="name" id="name" size="40" placeholder="name" ></td>
 </tr>
 <tr>
   <td>이메일</td>
   <td><input name="email" id="email" size="40" placeholder="email" ></td>
 </tr>
 <tr>
   <td>비밀번호</td>
   <td><input type="password" name="passwd" id="passwd" size="40"placeholder="passwd" ></td>
 </tr>
 <tr align="center">
   <td colspan="2"><textarea rows="5" cols="55" name="content"
    id="content" placeholder="Please enter your content..." ></textarea></td>
 </tr>
 <tr align="center">
   <td colspan="2">
     <input id="button1" type="button" value="확인" onclick="check()"> 
   </td>
 </tr>
</table>
</div>
</form>

</body>
</html>