<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="../include/header.jsp" %>

<c:if test="${param.message=='logout'}">
	<script type="text/javascript">
		alert("로그아웃되었습니다.");
	</script>
</c:if>


<style>
ul{
list-style: none;
margin: 0px;
padding: 0px;}

ul li {
      float:left; 
      width: 150px;
      height: 50px;
      background-color: black;
      opacity: .9;
      line-height: 55px;
      text-align: center;
      font-size: 15px;
      margin-right: 30px;
      position:relative;
      list-style-type: none;}
      
ul li a{
text-decoration: none;
color: white;
display: block;}

ul li a:hover{
background-color: black;
border-bottom-style: solid; color: white;
border-bottom-color: yellow;}

ul li ul li{
display: none;}

ul li:hover ul li{
display: block;}

ul li ul li:hover{border-bottom-style: solid; color: white; border-bottom-color: yellow;}

#animation,#animation2{
           transfrom:scale(1);
           -webkit-transform:scale(1);
           -moz-transform:scale(1);
           -ms-transform:scale(1);
           -o-transform:scale(1);
           transition:all 0.7s ease-in-out;
           opacity: 0.8;} 
           
#animation:hover,#animation2:hover{
           transform:scale(1.1);
           -webkit-transform:scale(1.1);
           -moz-transform:scale(1.1);
           -ms-transform:scale(1.1);
           -o-transform:scale(1.1);
           opacity: 1;}
           
#section1,#section2{margin-left: 0; margin-right: 0;}

#animation,#animation2{
           transfrom:scale(1);
           -webkit-transform:scale(1);
           -moz-transform:scale(1);
           -ms-transform:scale(1);
           -o-transform:scale(1);
           transition:all 0.7s ease-in-out;
           opacity: 0.8;} 
#animation:hover,#animation2:hover{
           transform:scale(1.03);
           -webkit-transform:scale(1.03);
           -moz-transform:scale(1.03);
           -ms-transform:scale(1.03);
           -o-transform:scale(1.003);
           opacity: 1;      
}
#table{border-bottom: 1px solid green; width: 200px; height: 100px;}
table{ margin: auto; text-align: center; display: table; }
a {color: white;}
#aside1{width: 400px; float: right; background-color: black;}
body{
  background-image:url(../images/배경화면4.png);
 /* background-color:white; */
 background-repeat:no-repeat;
 background-size:cover; 
 color: white; text-align: center; font-family: 'Roboto', sans-serif; }
header{text-align: center; position: fixed;}
/*  */

@import url('https://fonts.googleapis.com/css?family=Roboto');

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  width: 100.5%;
  position: relative;
  margin-left: -5px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 500px) {
  .text {font-size: 11px}
}
</style>



</head>


<body>
<header style="background-color: black; width:100%; height: 100px; z-index: 10" >
<img alt="로고1" src="../images/로고1.jpg" width="250px" height="100px" style="text-align: left; float: left;">


<aside id="aside1">
<a href="#"><img alt="아이콘10" src="../images/아이콘10.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘11" src="../images/아이콘11.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘12" src="../images/아이콘12.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘13" src="../images/아이콘13.jpg" width="40" height="50"></a><br>

 <c:if test="${userid == null}">
<a href="${path}/project/session_login.jsp"><input type="button" value="Log in" style="width: 200px" ></a>
</c:if>

<c:if test="${userid != null}">
<a href="${path}/member_servlet/logout.do"><input type="button" value="Log out" style="width: 200px" ></a>
</c:if> 
</aside>

<br>


<ul>
<li><a href="#">MODELS</a>
<ul>
<a href="#"><li>Urus</li></a>
<a href="#"><li>Huracan</li></a>
<a href="#"><li>Aventador</li></a>
<a href="#"><li>Few Off</li></a>
<a href="#"><li>Concept</li></a>
</ul>
</li>
</ul>

<ul>
<li><a href="#">BRAND</a>
<ul>
<a href="#"><li>People</li></a>
<a href="#"><li>History</li></a>
<a href="#"><li>Masterpieces</li></a>
<a href="#"><li>Design</li></a>
</ul>
</li>
</ul>

<ul>
<li><a href="#">EXPERIENCE</a>
<ul>
<a href="#"><li>News</li></a>
<a href="#"><li>Events</li></a>
<a href="#"><li>Museum</li></a>
</ul>
</li>
</ul>

<ul>
<li><a href="#">MOTORSPROT</a></li>
</ul>

<ul>
<li><a href="#">STORE</a></li>
</ul>



<ul>
<c:if test="${sessionScope.userid==null}">
<li><a href="login_check.jsp">Customer Service</a>
</c:if>
<c:if test="${sessionScope.userid!=null}">
<li><a href="customer.jsp">Customer Service</a>
</c:if>
</ul>

</ul>
</li>
</ul>
</header>




<section id="section1" style="z-index: 1">
<article>
<br><br><br><br><br><br>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 5</div>
  <img src="../images/main.png" style="width:100%; height: 900px;">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 5</div>
  <img src="../images/main2.png" style="width:100%; height: 900px;">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 5</div>
  <img src="../images/main3.png" style="width:100%; height: 900px;">
  <div class="text">Caption three</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 5</div>
  <img src="../images/main4.png" style="width:100%; height: 900px;">
  <div class="text">Caption four</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">5 / 5</div>
  <img src="../images/main5.png" style="width:100%; height: 900px;">
  <div class="text">Caption Text</div>
</div>



</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>

</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}

</script>
</article>
</section>


<section id="section2">
<div id="div1">
<figure>
<a href="#">
<img id="animation" src="../images/main6.png" style="position: relative; margin-left:-48px;  width: 105.3%" height="600px" >
</a></figure> 
</div>

<div id="div2">
<figure>
<a href="#">
<img id="animation2" src="../images/main7.png" style="position: relative; margin-left:-48px; width: 105.3%" >
</a></figure><br>
<a href="#"></a><br>
</div>
</section>
<br><br><br>

<font size="50px" color="white">NEWS</font>
<section>
<div>
<table>
<tr>
<td colspan="2"><a href="#"><img src="../images/뉴스1.png" width="800" height="400"></a></td>
<td></td>
<td rowspan="2"><a href="#"><img src="../images/뉴스4.png" width="400" height="800"></a></td>
</tr>
<tr>
<td><a href="#"><img src="../images/뉴스2.png" width="400" height="400"></a></td>
<td><a href="#"><img src="../images/뉴스3.png" width="400" height="400"></a></td>
<td></td>
</tr>
</table>
</div>
</section>

<div><h1>EVENTS</h1>
<table>
<tr>
<td><a href="#"><img src="../images/이벤트1.png" width="500" height="500"></a></td>
<td><h2 style="color: red;">2019 season of the Lamborghini<p> 
Super Trofeo Middle East</h2></td>
<td style="text-align: left;">15 - 16 February<P>
Round 1: Dubai<P>
Super Trofeo Middle East<P>
The 5.39 km of the Dubai Autodrome inaugurate the<p>
2019 season of the Lamborghini Super Trofeo Middle East.<P> 
Discover more<P></td>
</tr>
</table>

<table>
<tr>
<td rowspan="3"><figure>
<a href="#"><img src="../images/이벤트2.png" width="350" height="600"></a></figure></td>
<td><a href="#"><img src="../images/이벤트3.png" width="300" height="300"></a></td>
<td><a href="#"><img src="../images/이벤트4.png" width="300" height="300"></a></td>
<tr>
<tr>
<td></td>
<td><a href="#"><img src="../images/이벤트5.png" width="300" height="300"></a></td>
<td><a href="#"><img src="../images/이벤트6.jpg" width="300" height="300"></a></td>
<tr>
</table>

</div>

<div  style="1200px; font-size: 20px;"  >
<a href="https://www.lamborghini.com/en-en/company"><span>COMPANY</span></a>
<a href="https://www.lamborghini.com/en-en/careers"><span>CAREERS</span></a>
<a href="https://www.lamborghini.com/en-en/contact-us"><span>CONTACT US</span></a>
<a href="https://media.lamborghini.com/english"><span>MEDIA CENTER</span></a>
<a href="https://www.lamborghini.com/en-en/privacy-legal"><span>PRIVACY&LEGAL</span></a>
<a href="https://www.lamborghini.com/en-en/sitemap"><span>SITEMAP</span></a>
<a href="http://cloud.unica.lamborghini.com/Newsletter"><span>NEWSLECTTER</span></a>
<a href="https://www.lamborghinistore.com/row/"><span>STORE</span></a>

<br><br>

<table style="text-align: center; width: 1200px; font-size: 20px;">
<tr>
<th><a href="#" style="color: yellow;">Models</a> </th>
<th><a href="#" style="color: yellow;">Brand</a> </th>
<th><a href="#" style="color: yellow;">Ownership</a> </th>
<th><a href="#" style="color: yellow;">Experience</a> </th>
</tr>
<tr>
<td>Urus </td>
<td>People </td>
<td>Financial Services </td>
<td>News </td>
</tr>
<tr>
<td>Huracan </td>
<td>History </td>
<td>Dealer locator </td>
<td>Events </td>
</tr>
<tr>
<td>Aventador </td>
<td>Masterpieces </td>
<td>Service locator </td>
<td>Accademia </td>
</tr>
<tr>
<td>Few Off </td>
<td>Design </td>
<td>Accessori Originali </td>
<td>Museum </td>
</tr>
<tr>
<td>Concept </td>
<td>Forged Composites® </td>
<td>Spare parts </td>
<td>Esperienza </td>
</tr>
<tr>
<td>Ad Personam </td>
<td>Carbon Fiber </td>
<td>Services </td>
<td>Mobile App </td>
</tr>
</table>
<br>

<table>
<tr>
<th>Follow Us</th>
<th><a href="https://www.facebook.com/lamborghini/"><img alt="" src="../images/아이콘1.jpg"></a></th>
<th><a href="https://twitter.com/lamborghini"><img alt="" src="../images/아이콘2.jpg"></a></th>
<th><a href="https://www.youtube.com/c/lamborghini"><img alt="" src="../images/아이콘3.jpg"></a></th>
<th><a href="https://www.instagram.com/lamborghini/"><img alt="" src="../images/아이콘4.jpg"></a></th>
<th><a href="https://www.linkedin.com/company/automobili-lamborghini-s-p-a-"><img alt="" src="../images/아이콘5.jpg"></a></th>
<th><a href="https://pinterest.com/lamborghini/"><img alt="" src="../images/아이콘6.jpg"></a></th>
<th><a href="https://plus.google.com/+Lamborghini"><img alt="" src="../images/아이콘7.jpg"></a></th>
</tr>
</table>
</div>

<footer style="background-color: gray;">
<h5 >Copyright ⓒ 2017 Automobili Lamborghini S.p.A. a sole shareholder company part of Audi Group. All rights reserved. VAT no. IT 00591801204
</h5>
<h5>Fuel consumption and emission values of all vehicles promoted on this page -Fuel consumption and emission: 6,4 - 4,4 km/l ; CO2-emissions combined: 408 g/km - 278 g/km 
</h5>
</footer>

</body>
</html>