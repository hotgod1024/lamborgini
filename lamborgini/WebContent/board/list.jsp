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
function list(curPage){
	location.href="${path}/board_servlet/list.do?curPage="+curPage;
};
</script>



<script type="text/javascript">
$(function(){
	$("#btnWrite").click(function(){		
		location.href="${path}/board/write.jsp"
	})
});
function gb_search(){
	document.form1.action="${path}/board_servlet/search.do";
	document.form1.submit();
}
</script>
<style type="text/css">
body{text-align: center; font-size: 20px; margin-bottom: 60px;}
* {font-family:'Nanum Pen Script',cursive;  letter-spacing:2px;}
th {font-weight:400; text-align:center;}
td a {text-decoration: none; color: black;}
td a:hover {
	text-decoration: none;
	font-weight: 600;
	background-color: rgba(255, 255, 255, 0);
	color: #8585ad;
</style>

</head>
<body>
<div class="container text-center">    
  <div class="container">
  <font size="200px"><strong>What We Do</strong></font><br>
  <p><strong>If you want to go to the page, please press the button below.</strong></p><br><br>   
  <a href="../project/customer.jsp"><button type="button" class="btn btn-sm btn-primary" style="width: 600px; font-size: 25px;">Customer Service</button></a><br><br>         
  <a href="../guestbook/index.jsp"><button type="button" class="btn btn-info active" style="width: 300px; font-size: 25px;" >방명록</button></a>
  <a href="../board/index.jsp"><button type="button" class="btn btn-warning active" style="width: 300px; font-size: 25px;">게시판</button></a>
  
  </div> 
</div>
<br><br><br>
<font size="10px;">게시판</font><br>

<!-- 검색폼 -->
<form name="form1" id="form1" method="post">
<select name="searchkey" id="searchkey">

  <option value="writer" selected>이름</option>
  <option value="subject">내용</option>
  <option value="writer_subject">이름+내용</option>

</select>
<input name="search" id="search" value="${search}">
<input type="button" value="조회" onclick="gb_search()">
</form>




<fieldset style="width:90%; border:none; margin:0 auto;">
<br><br>
<button class="btn btn-sm btn-primary" id="btnWrite" style="font-size:20px;">글쓰러 가기</button><p><br>
<div class="table-responsive">


<table class="table table-striped table-bordered" style="width:100%; margin:0 auto; font-size:20px;">
<tr>
  <th>번호</th>
  <th>이름</th>
  <th>제목</th>
  <th>날짜</th>
  <th>조회수</th>
  <th>첨부파일</th>
  <th>다운로드</th>
</tr>
<c:forEach var="dto" items="${list}">
<c:choose> 
  <c:when test="${dto.show == 'y'}">

<tr>
<td>${dto.num}</td>
<td>${dto.writer}</td>
<td>
<!-- 답글 들여쓰기 -->
<c:forEach var="i" begin="1" end="${dto.re_level}">
   &nbsp;&nbsp;
</c:forEach>
<a href="${path}/board_servlet/view.do?num=${dto.num}">
${dto.subject}</a>
<!-- 댓글갯수 표시  -->
<c:if test="${dto.comment_count > 0}">
<span style="color:red;">(${dto.comment_count})</span>
</c:if>
</td>
<td>${dto.reg_date}</td>
<td>${dto.readcount}</td>

  <td align="center">
    <c:if test="${dto.filesize > 0}">
      <a href="${path}/board_servlet/download.do?num=${dto.num}">
       <img src="../images/file.gif">
      </a> 
  </c:if>
  </td>
  <td>${dto.down}</td>
</tr>
</c:when>
<c:otherwise>
 <tr>
   <td>${dto.num}</td>
   <td colspan="6" align="center">
     삭제된 게시물입니다.
   </td>
 </tr>
</c:otherwise>
</c:choose>
</c:forEach>
</table>

<c:if test="${page.curPage > 1}">
        <a href="#" onclick="list('1')">[처음]</a>
      </c:if>
      <c:if test="${page.curBlock > 1}">
        <a href="#" onclick="list('${page.prevPage}')">[이전]</a>
      </c:if>
      <c:forEach var="num" begin="${page.blockStart}" 
      end="${page.blockEnd }">
        <c:choose>
          <c:when test="${num == page.curPage }">
            <span style="color:red">${num}</span>
          </c:when>
          <c:otherwise>
            <a href="#" onclick="list('${num}')">${num}</a>
          </c:otherwise>
        </c:choose>
      </c:forEach>
      <c:if test="${page.curBlock < page.totBlock }">
        <a href="#" onclick="list('${page.nextPage}')">[다음]</a>
      </c:if>
      <c:if test="${page.curPage < page.totPage}">
        <a href="#" onclick="list('${page.totPage}')">[끝]</a>
      </c:if>

</div>
</fieldset>


</body>
</html>