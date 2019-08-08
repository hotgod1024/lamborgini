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
	display: table;
	padding: 0;
	background-image: url(../images/배경화면4.png);
	background-repeat: no-repeat;
	background-size: cover;
}
table{
    margin-left: 700px;
    margin-top: 250px;
    background :rgba(0, 0, 0, .5); 
    color: white; 
	text-align: center; 
	display: table;
	}

table{
    border-top-right-radius: 10em;
    border-bottom-right-radius:10em;
    border-top-left-radius: 10em;
    border-bottom-left-radius: 10em;
}
#btncustomer, #btnLogout , #btnhome{
border-radius: 15%; width: 300px; height: 50px;
background-color: black; color: white; font-size: 20px;
 }

#btncustomer, #btnLogout , #btnhome{
      transfrom:scale(1);
      -webkit-transform:scale(1);
      -moz-transform:scale(1);
      -ms-transform:scale(1);
      -o-transform:scale(1);
      }
#btncustomer:hover,#btnLogout:hover ,#btnhome:hover {background-color: none;
                transform:scale(1.1);
                -webkit-transform:scale(1.1);
                -moz-transform:scale(1.1);
                -ms-transform:scale(1.1);
                -o-transform:scale(1.1);
                }



</style>
<%@ include file="../include/header.jsp" %>
<%-- <%@ include file="../include/session_check.jsp" %> --%>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnLogout").click(function(){
		location.href="${path}/member_servlet/logout.do";
	});
});
$(function(){
	$("#btncustomer").click(function(){
		location.href="${path}/project/customer.jsp";
	});
});
$(function(){
	$("#btnhome").click(function(){
		location.href="${path}/project/my_project.jsp";
	});
});
</script>

<c:if test="${param.message == 'login'}">
<script>
 alert("로그인 되었습니다.")
</script>
</c:if>

</head>
<body>
<table  style="width: 500px; height: 500px;">
<tr>
<td><button  type="button" id="btnhome" style="margin-top: 60px;">Home</button></td>
</tr>
<tr>
<td><button  type="button" id="btncustomer">customer 페이지로 이동</button></td>
</tr>
<tr>
<td><button  type="button" id="btnLogout" style="margin-bottom: 70px;">Log out</button></td>
</tr>
</table>
</body>
</html>