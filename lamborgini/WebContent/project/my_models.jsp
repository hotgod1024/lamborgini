<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
      list-style-type: none;
}
ul li a{
text-decoration: none;
color: white;
display: block;
}
ul li a:hover{
background-color: black;
border-bottom-style: solid; color: white;
border-bottom-color: yellow;
}
ul li ul li{
display: none;}

ul li:hover ul li{
display: block;
}

ul li ul li:hover{border-bottom-style: solid; color: white; border-bottom-color: yellow;}


#animation,#animation2{
           transfrom:scale(1);
           -webkit-transform:scale(1);
           -moz-transform:scale(1);
           -ms-transform:scale(1);
           -o-transform:scale(1);
           transition:all 0.7s ease-in-out;
           opacity: 0.5;
} 
#animation:hover,#animation2:hover{
           transform:scale(1.1);
           -webkit-transform:scale(1.1);
           -moz-transform:scale(1.1);
           -ms-transform:scale(1.1);
           -o-transform:scale(1.1);
           opacity: 1;      
}

table{ margin: auto; text-align: center; display: table;}
@import url('https://fonts.googleapis.com/css?family=Roboto');
table{ margin: auto; text-align: center; }
a {color: white;}
#aside1{width: 400px; float: right; background-color: black;}
body{
 background-image:url(../images/배경화면4.png);
 background-repeat:no-repeat;
 background-size:cover; 
 color: white; text-align: center; font-family: 'Roboto', sans-serif; }
header{text-align: center; position: fixed;}
/*  */

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  width: 100%;
  position: relative;
  margin: auto;
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
<header style="background-color: black; width:100%; height: 100px; z-index: 10; " >
<img alt="로고1" src="../images/로고1.jpg" width="250px" height="100px" style="text-align: left; float: left;"  >

<aside id="aside1">
<a href="#"><img alt="아이콘10" src="../images/아이콘10.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘11" src="../images/아이콘11.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘12" src="../images/아이콘12.jpg" width="40" height="50"></a>
<a href="#"><img alt="아이콘13" src="../images/아이콘13.jpg" width="40" height="50"></a><br>
<a href="my_login.html"><input type="button" value="Log in" style="width: 200px" height="150px"></a>
<!-- <input type="button" value="Log out" style="width: 200px" height="150px" onclick="check()"></a> -->
</aside>
<br>

<ul>
<li><a href="my_models.html">MODELS</a>
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
<li><a href="my_brand.html">BRAND</a>
<ul>
<a href="#"><li>People</li></a>
<a href="#"><li>History</li>
<a href="#"><li>Masterpieces</li>
<a href="#"><li>Design</li>
</ul>
</li>
</ul>

<ul>
<li><a href="my_ownership1.html">OWNERSHIP</a>
<ul>
<a href="#"><li>Lacators</li></a>
<a href="#"><li>Pre-Owned</li></a>
<a href="#"><li>Accessori Originall</li></a>
</ul>
</li>
</ul>

<ul>
<li><a href="my_experience.html">EXPERIENCE</a>
<ul>
<a href="#"><li>News</li></a>
<a href="#"><li>Events</li></a>
<a href="#"><li>Museum</li></a>
</ul>
</li>
</ul>

<ul>
<li><a href="my_motorsport.html">MOTORSPROT</a>
</ul>

<ul>
<li><a href="my_store.html">STORE</a>
<ul>

</ul>
</li>
</ul>


</header>

<section style="z-index: 1">
<article>
<br><br><br><br><br><br>


<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 4</div>
  <img src="../images/차5.jpg" style="width:70%; height: 900px;">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 4</div>
  <img src="../images/차6.jpg" style="width:70%; height: 900px;">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 4</div>
  <img src="../images/차7.jpg" style="width:70%; height: 900px;">
  <div class="text">Caption Three</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">4 / 4</div>
  <img src="../images/차8.jpg" style="width:70%; height: 900px;">
  <div class="text">Caption four</div>
</div>

</div>
<br>

<div style="text-align:center">
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
<section>
<figure><img src="../images/urus.png" width="300px" height="100px"></figure><br>
<article>
Lamborghini Urus is the world’s first Super Sport Utility Vehicle, in which luxury, sportiness and<br>
 performance meet comfort and versatility. It offers best-in-class driving dynamics, alongside its unmistakable elegance of design.<br>
 Urus embodies the characteristics of multiple souls: sporty, elegant and off-road, and has a suitability for everyday driving in a range of<br>
  environments. With its surprisingly distinct engine sound, combined with high performance, Lamborghini Urus is anything but typical.<br>
</article>
<figure><img src="../images/urus1.png" width="100%" height="700px"></figure><br>

<article>
<font size="500px">HURACAN</font><br>
From our past, we've learned perfection. This is how the first model of the Lamborghini Huracán was born. More performance, more control, more innovation. <br>
The Huracán is equipped with a powerful V10 engine and the latest technologies to perform at its absolute best.<br> 
Engineered to guarantee the best performance and control under any driving condition, it's easy to take to the limit, not to mention extremely fun, <br>
thanks to technology like the Lamborghini Doppia Frizione (LDF) dual clutch gearbox and the electronically-controlled four-wheel drive. Enjoy the best driving experience, ever.<br> 
Discover all the Lamborghini Huracán models. <br>
</article>
<figure><img src="../images/huracan2.png" width="100%" height="700px"></figure><br>

<article>
<font size="500px">AVENTADOR</font><br>
The Aventador has been created to anticipate the future, as demonstrated by the use of innovative technology, including a V12 engine and the extensive use of carbon fiber.<br>
 The authentic design masterpieces together stark dynamism with aggression to produce a cutting edge carbon fiber monocoque.<br>
  The interior of the Aventador combines high-level technology and luxury equipment with premium-quality materials, skilfully crafted with the expertise characteristic of the finest Italian traditions.<br>
   A supercar family that has already become a legend in its own right. Discover technical specifications, dimensions, performance, and the detailed features of all the new Lamborghini Aventador models.<br>
</article>
<figure><img src="../images/aventader2.png" width="100%" height="700px"></figure><br>

<article>
<font size="500px">FEW OFF</font><br>
The Few-Off Lamborghini are the most exclusive, limited editions to meet a small and select number of clients. Truly representing the state of the art in the domain of super cars,<br>
the Few-Off models express the highest Lamborghini spirit in every respect. Indeed, they are equipped with the most advanced features available in the fields of design and technology.<br>
</article>
<figure><img src="../images/fewoff2.png" width="100%" height="700px"></figure><br>

<article>
<font size="500px">concept</font><br>
The most visionary models, these unique specimens are set to define the highest limits of technology and design. Unveiled at the most prestigious international Motor Shows, <br>
they offer an exclusive look at the most innovative solutions that Lamborghini may adopt in its future series-production models.<br>
</article>
<figure><img src="../images/concept2.png" width="100%" height="700px"></figure><br>
</section>

<div>
<a href=#><img id="animation" src="../images/company.png" width="700px" height="500px"></a>
<a href=#><img id="animation2" src="../images/adpersonam.png" width="700px" height="500px"></a>
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
