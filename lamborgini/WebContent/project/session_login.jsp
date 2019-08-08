<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>

<c:if test="${param.message == 'error' }">
    <script>
      alert("아이디 or 비번을 다시 확인하세요.");
    </script>
</c:if>
<c:if test="${param.message == 'logout' }">
    <script>
      alert("로그아웃.");
    </script>
</c:if>

<c:if test="${param.message == 'login' }">
    <script>
      alert("로그인 되었습니다.");
    </script>
</c:if>


<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto');

body {
    font-family: Verdana, sans-serif;
    margin: auto;
	display: table;
	padding: 0;
	background-image: url(../images/배경화면4.png);
	background-repeat: no-repeat;
	background-size: cover;
	
}

#caption {font-size:70px; color: white; text-shadow: 5px 5px 10px white;}
table{
    background :rgba(0, 0, 0, .5); 
    color: white; 
	text-align: center; 
	display: table;
     margin-top: 120px;
     margin-left: 50px;
    }
table{
    border-top-right-radius: 10em;
    border-bottom-right-radius:10em;
    border-top-left-radius: 10em;
    border-bottom-left-radius: 10em;
}

#join,#login,#home{height: 50px;
      transfrom:scale(1);
      -webkit-transform:scale(1);
      -moz-transform:scale(1);
      -ms-transform:scale(1);
      -o-transform:scale(1);}
#join td:hover,#login td:hover,#home td:hover {background-color: none;
                transform:scale(1.1);
                -webkit-transform:scale(1.1);
                -moz-transform:scale(1.1);
                -ms-transform:scale(1.1);
                -o-transform:scale(1.1);}
#join td a { text-decoration : none; color: white; }

.lo1 {font-size: 30px;}
#userid { padding: 20px;border:2px solid #aaa; border-radius: 4px; 
		  margin:8px 0; box-sizing: border-box; transition: .3s;
		  box-shadow: 0 0 8px 0 dodgerblue;
		  color: white;}

#passwd { padding: 20px;border:2px solid #aaa; border-radius: 4px; 
		  margin:8px 0; box-sizing: border-box; transition: .3s;
		  box-shadow: 0 0 8px 0 dodgerblue;
		  color:white;}
}

</style>

<!-- JSTL 명령어 -->
<!-- c: 코어태그 -->
<!--  param.변수 => request.getParameter("변수")  
null도 자동처리되는 등의 장점이 있다.
-->

<%-- <% if(request.getParameter("message") != 
null && request.getParameter("message").equals("error")) { %>
  <script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
  </script>
<% } %> --%>

</head>
<body>

<form method="post" name="form1" action="${path}/member_servlet/login_bcrypt.do">
                
		<table>
			<tr>
				<td colspan="3"><br>
			<font id="caption">LOGIN</font><br>
				<h1>Welcome</h1>
					<br>
					<h3>TO</h3> <br>
				<h1>Lamborghini</h1>
					<br>
				<br></td>
			</tr>
			<tr></tr>
			<tr>
				<td colspan="3"><input id="userid" name="userid" type="text"
					style="background-color: black;" maxlength="20"
					placeholder="Please enter your ID" required="required" size="100px"><br>
					<input id="passwd" name="passwd" type="password" maxlength="20"
					style="background-color: black"
					placeholder="Please enter password." required="required"
					size="100px" height="5"></td>
			</tr>
		    
			<tr id="login">		
				<td colspan="3">
				<input
						id="login" name="login" type="submit" value="Login"
						style="border-radius:24px; width: 450px; height: 50px; background-color: black; color: white; font-size: 20px;
						margin-top: 100px;">
				</td>
			</tr>
			<tr>
				<td colspan="3"></td>
			</tr>
			<tr id="join">
				<td class="join1"><a href="/jsp02/project/join_bcrypt.jsp"><input
						name="join" type="button" value="회원가입"
						style="border-radius: 24px; width: 450px; height: 50px; background-color: black; color: white; font-size: 20px;"></a></td>
			</tr>
			<tr>
				<td colspan="3"></td>
			</tr>
			
			<tr id="home">
				<td class="home"><a href="/jsp02/project/my_project.jsp"><input id="home" name="home" type="button" value="홈으로가기" style="border-radius: 24px; width: 450px; 
	height: 50px; background-color: black; color: white; font-size: 20px; text-align: center;  "></a></td>
			</tr>
		</table>
	</form>
	<!-- <a href="/jsp02/my_project.jsp"><input id="home" name="home" type="button" value="홈으로가기" style="border-radius: 50%; width: 450px; 
	height: 50px; background-color: black; color: white; font-size: 20px; text-align: center;  margin-top: 150px;
     margin-left: 750px;"></a> -->
</body>
</html>