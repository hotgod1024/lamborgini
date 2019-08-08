<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://humy2833.dothome.co.kr/css/custom-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});
</script>


<style type="text/css">
* {font-family:'Nanum Pen Script',cursive; font-size:20px; letter-spacing:2px;}
table tr td:nth-of-type(2) {width: 80%;}
td a {text-decoration: none; color: black;}
td a:hover {
	text-decoration: none;
	font-weight: 600;
	background-color: rgba(255, 255, 255, 0);
	color: #8585ad;
</style>
<style type="text/css">
body{text-align: center; margin-top: 150px;}
</style>


</head>
<body>

 <font style="font-weight:500; font-size:70px; ">글쓰기</font><br><br>


<form name="form1" method="post" action="${path}/board_servlet/insert.do" enctype="multipart/form-data">
<table class="table table-striped table-bordered" style="width:50%; margin:0 auto;">
 <tr>
   <td style="background-color:  #b3e6ff">이름</td>
   <td><input name="writer" id="writer"></td>
 </tr>
 <tr>
   <td style="background-color:  #b3e6ff">제목</td>
   <td><input name="subject" id="subject" size="60"></td>
 </tr>
 <tr>
   <td style="background-color:  #b3e6ff">본문</td>
   <td><textarea rows="5" cols="60" name="content" id="content">
   </textarea></td>
 </tr>
 <tr>
   <td style="background-color:  #b3e6ff">첨부파일</td>
   <td><input type="file" name="file1"></td>
 </tr>
 <tr>
   <td style="background-color:  #b3e6ff">비밀번호</td>
   <td><input type="password" name="passwd" id="passwd"></td>
 </tr>
 <tr>
   <td colspan="2" align="center">
     <input type="button" value="확인" id="btnSave">
   </td>
 </tr>
</table>
</form>
</body>
</html>