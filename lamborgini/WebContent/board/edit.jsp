<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap&subset=korean" rel="stylesheet">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		document.form1.action="${path}/board_servlet/update.do";
		document.form1.submit();
	});
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/board_servlet/delete.do";
			document.form1.submit();			
		}
	});
});
</script>

<style type="text/css">
* {font-family:'Nanum Pen Script',cursive; font-size:20px; letter-spacing:2px;}
#aaa { text-align: center; font-size: 50px; }
#bbb { text-align: center; font-size: 55px; }
body{text-align: center; margin-top: 50px;}
</style>

</head>

<body>
<div id="aaa">게시물 보기</div>

<form name="form1" method="post" enctype="multipart/form-data">
<table border="5" class="table table-bordered" style="color: gray; width: 900px; text-align: center; margin-left: 500px;">
	<tr>
		<td style="background-color:  #b3e6ff">이름</td>
		<td><input name="writer" id="writer"
			value="${dto.writer}"></td>
	</tr>
	<tr>
		<td style="background-color:  #b3e6ff">제목</td>
		<td><input name="subject" id="subject" size="60"
			value="${dto.subject}"></td>
	</tr>
	<tr>
		<td style="background-color:  #b3e6ff">본문</td>
		<td><textarea rows="5" cols="60"
			name="content" id="content">${dto.content}</textarea></td>
	</tr>
	<tr>
		<td style="background-color:  #b3e6ff">첨부파일</td>
		<td >
			<c:if test="${dto.filesize > 0 }">
				${dto.filename} ( ${dto.filesize / 1024} KB )
				<input type="checkbox" name="fileDel">첨부파일 삭제
				<br>
			</c:if>
			<input type="file" name="file1" class="btn btn-sm btn-info">
		</td>
	</tr>
	<tr>
		<td style="background-color:  #b3e6ff">비밀번호</td>
		<td><input type="password" name="passwd" id="passwd"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<!-- 수정,삭제를 위한 글번호 -->
			<input type="hidden" name="num" value="${dto.num}">
			<input type="button" value="수정" id="btnUpdate"  class="btn btn-sm btn-primary">
			<input type="button" value="삭제" id="btnDelete"  class="btn btn-sm btn-warning">
		</td>
	</tr>
</table>
</form>

</body>
</html>

	