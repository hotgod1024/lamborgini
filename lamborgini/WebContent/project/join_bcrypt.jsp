<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function join(){
	if($("#userid").val()==""){
		alert("아이디를 입력하세요.");
		$("#userid").focus();
		return;
	}
	if($("#passwd").val()==""){
		alert("비밀번호를 입력하세요.");
		$("#passwd").focus();
		return;
	}
	if($("#passwd2").val()==""){
		alert("비밀번호 확인을 입력하세요.");
		$("#passwd2").focus();
		return;
	}
	if($("#name").val()==""){
		alert("이름을 입력하세요.");
		$("#name").focus();
		return;
	}

	if($("#email").val()==""){
		alert("이메일을 입력하세요.");
		$("#email").focus();
		return;
	}
	if($("#hp").val()==""){
		alert("전화번호를 입력하세요.");
		$("#hp").focus();
		return;
	}
	if($("#zipcode").val()==""){
		alert("우편번호를 입력하세요.");
		$("#zipcode").focus();
		return;
	}
	if($("#address").val()==""){
		alert("주소를 입력하세요.");
		$("#address").focus();
		return;
	}
	if($("#gender").val()==""){
		alert("성별을 입력하세요.");
		$("#gender").focus();
		return;
	}
	  $.ajax({
			 type: "post",
			 url: "/jsp02/member_servlet/join_bcrypt.do",
			 data: param,
			 success: function(){
				 alert("회원이 되신것을 환영합니다.");
				 location.href="../project/session_login.jsp";
			 }
		
		  });
	
/* 	
	document.form1.action="${path}/member_servlet/join_bcrypt.do";
	document.form1.submit(); 
	alert("가입되었습니다."); */
}

/* 
  $(function(){ 
   $("#btnJoin").click(function(){
	  //?userid=kim&passwd=1234&name=김철수
	 var param="userid="+$("#userid").val()
	 +"&passwd="+$("#passwd").val()
	 +"&name="+$("#name").val()
	  +"&email="+$("#email").val()
	   +"&hp="+$("#hp").val()
	    +"&address1="+$("#address1").val()
	     +"&bir="+$("#bir").val()
	    +"&join_date="+$("#join_date").val()
	 
	    
	    $.ajax({
		 type: "post",
		 url: "/jsp02/member_servlet/join_bcrypt.do",
		 data: param,
		 success: function(){
			 alert("회원이 되신것을 환영합니다.");
			 location.href="../project/session_login.jsp";
		 }
	
	  });
  });	
});  
 */
</script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto');

body{
    
    margin: auto;
    margin-top:30px;
    margin-bottom: 70px;
	padding: 0;
	display:table;
	background-image: url(../images/배경화면4.png); 
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
}
table{
    background :rgba(0, 0, 0, .5);
    color: white;
	text-align: center; 
	margin-top :100px;
	display: table;
	padding: 0;}
table{
    border-top-right-radius: 10em;
    border-bottom-right-radius:10em;
    border-top-left-radius: 10em;
    border-bottom-left-radius: 10em;
}
table caption {color:black; font-size: 60px; color: white; text-shadow: 1px 1px 10px black;
margin-bottom: 30px;}
#join,#initialization{height: 50px;
      transfrom:scale(1);
      -webkit-transform:scale(1);
      -moz-transform:scale(1);
      -ms-transform:scale(1);
      -o-transform:scale(1);}


#join:hover,#initialization:hover{
                color: white;
                transform:scale(1.1);
                -webkit-transform:scale(1.1);
                -moz-transform:scale(1.1);
                -ms-transform:scale(1.1);
                -o-transform:scale(1.1);}
 
                
                
#join td a { text-decoration:none; color: white; }

input{ display: inline-block;
       background-color: black;
       width: 300px;
}
#userid,#passwd,#passwd2,#name,#hp,#email,#address1,#bir{ padding: 20px;border:2px solid #aaa; border-radius: 4px; 
		  margin:8px 0; box-sizing: border-box; transition: .3s;
		  box-shadow: 0 0 8px 0 dodgerblue; color: white;}
	 

</style>
</head>
<body>


<form action="${path}/jsp02/member_servlet/join_bcrypt.do" method="post">
<table>
<caption>Enter member information</caption>
<tr>
<td><h3>ID</h3></td>
<td colspan="2">
<input id="userid" name="userid" type="text" maxlength="20" placeholder="Please enter your ID"
                             required="required"  ></td>
<td></td>
</tr>
<tr>
<td><h3>Password</h3></td>
<td colspan="2">
<input id="passwd" name="passwd" type="password" maxlength="20" placeholder="Enter password"
                             required="required" height="4" ></td>
<td></td>
</tr>
<tr>
<td ><h3>Confirm password</h3></td>
<td colspan="2">
<input id="passwd2" name="passwd2" type="password" maxlength="20" placeholder="Enter password"
                      required="required"  height="4" ></td>
<td></td>
</tr>
<tr>
<td ><h3>Your name</h3></td>
<td colspan="2">
<input id="name" name="name" type="text" maxlength="20" placeholder="Please enter a name"
                             required="required"  height="4" ></td>
<td></td>
</tr>
<tr>
<td ><h3>Your email</h3></td>
<td colspan="2">
<input id="email" name="email" type="text" maxlength="20" placeholder="Please enter a email"
                             required="required"  height="4" ></td>
<td></td>
</tr>
<tr>
<td ><h3>Cell phone number</h3></td>
<td colspan="2">
<input id="hp" name="hp" type="text" maxlength="20" placeholder="Please enter your cell phone number"
                             required="required" height="4" ></td>
<td></td>
<tr>
<td><h3>address</h3></td>
<td colspan="2">
<input id="address1" name="address1" type="text" maxlength="20" placeholder="Please enter your address"
                             required="required"  height="4" ></td>
<td></td>
</tr>
<tr>
<td ><h3>birthday</h3></td>
<td colspan="2">
 <input id="bir" name="bir" type="date" maxlength="20" placeholder="Enter birthday"
                             required="required"  height="4" ></td>
<td></td>
</tr>
<tr>
<td><h3>Male</h3><input type="radio" name="gender" value="Male"></td>
<td><h3>Female</h3><input type="radio" name="gender" value="Female"></td>
</tr>



<tr id="join">
<td>
<input id="btnJoin" type="submit"  value="Join in" 
     style="color: white; border-radius: 30px; width: 450px; height: 50px;
     font-size: 20px; outline: none;" onclick="join()" ></td>

<td><input id="initialization" type="reset" name="reset" value="Initialization" 
     style="color: white; border-radius: 30px; width: 450px; height: 50px;
     font-size: 20px;"></td>
</tr>
</table>
</form>

</body>
</html>