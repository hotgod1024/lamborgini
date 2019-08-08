<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	location.href="${path}/guestbook_servlet/list.do?curPage="+curPage;
};

</script>

<script type="text/javascript">
function gb_search(){
	document.form1.action="${path}/guestbook_servlet/list.do";
	document.form1.submit();
}
</script>
<style type="text/css">

* {font-family:'Nanum Pen Script',cursive;  letter-spacing:2px;}
body{text-align: center; font-size: 20px; margin-bottom: 30px; }
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
}
</style>
</head>
<body>



<div class="container text-center">    
  <div class="container">
  <font size="200px"><strong>What We Do</strong></font><br>
  <p><strong>If you want to go to the page, please press the button below.</strong></p><br><br>            
  <a href="../project/customer.jsp"><button type="button" class="btn btn-sm btn-primary" style="width: 600px; font-size: 25px;">Customer Service</button></a><br><br>
  <a href="../guestbook/index.jsp"><button type="button" class="btn btn-info active" style="width: 300px; font-size: 25px;">방명록</button></a>
  <a href="../board/index.jsp"><button type="button" class="btn btn-warning active" style="width: 300px; font-size: 25px;">게시판</button></a>
  </div> 
</div>
<br><br>
<font size="10px;">방명록</font><br>
<font size="5px;">**${count}개의 글이 있습니다.**</font>
<!-- 검색폼 -->
<form name="form1" id="form1" method="post">
<select name="searchkey" id="searchkey">
<c:choose>
  <c:when test="${searchkey == 'name' }">
  <option value="name" selected>이름</option>
  <option value="content">내용</option>
  <option value="name_content">이름+내용</option>
  </c:when>
  <c:when test="${searchkey == 'content' }">
  <option value="name">이름</option>
  <option value="content" selected>내용</option>
  <option value="name_content">이름+내용</option>
  </c:when>
  <c:when test="${searchkey == 'name_content' }">
  <option value="name">이름</option>
  <option value="content">내용</option>
  <option value="name_content" selected>이름+내용</option>
  </c:when>
</c:choose>  
</select>
<input name="search" id="search" value="${search}">
<input type="button" value="조회" onclick="gb_search()">
</form>

<br>
<%-- <input type="button" value="글쓰러 가기" class="btn btn-sm btn-primary" id="btnWrite" style="font-size:20px;"
onclick="location.href='${path}/guestbook/write.jsp'"><br><br><br><hr> --%>

<button type="button" class="btn btn-sm btn-primary" id="btnWrite" style="font-size:20px; font-family:'Nanum Pen Script',cursive;"
onclick="location.href='${path}/guestbook/write.jsp'">글쓰러 가기</button><br><br><hr>

<c:forEach var="dto" items="${list}">
<form method="post" 
action="${path}/guestbook_servlet/passwd_check.do">
<!-- 편집을 위해서는 게시물 번호가 필요함 -->
<input type="hidden" name="idx" value="${dto.idx}">

<table width="830px"  >
	<tr>
		<td style="font-size: 15px"><input type="button" value="name" id="button1"> </td>
		<td style="width:20%; font-size: 20px"><strong>${dto.name}</strong></td>
		<td style="font-size: 15px"><input type="button" value="email" id="button1"></td>
		<td style="width:50%;"><strong>${dto.email}</strong></td>
		<td style="width:30%; font-size: 15px;">(${dto.post_date})</td>
	</tr>	
	<tr>
		<td colspan="6"><img src="../images/화살표!.png" style="width: 18px; height: 15px;">  ${dto.content}</td>
	</tr>
	<tr>
		<td colspan="6" style="font-size: 8px; ">	
			Pwd <input type="password" name="passwd">
			<input type="submit" value="수정/삭제">
		</td>
	</tr>	
	
	
</table>
<hr><br>
</form>
</c:forEach>

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

</body>
</html>
