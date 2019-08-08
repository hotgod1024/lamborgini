<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

</style>

</head>
<body>
<header style="background-color: black; width:100%; height: 100px; z-index: 10;" >
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
<figure><img src="../images/brand.png" width="100%" height="900px"></figure><br>
<article>
<font size="500px">LAMBORGHINI</font><br>
In just fifty years, Automobili Lamborghini has not only manufactured exceptional cars, <br>
but true masterpieces that have made history.<br>
There are many people who have contributed to creating Lamborghini's excellence, starting from Ferruccio Lamborghini, founder and visionary genius.
</article>
<figure><img src="../images/brand1.png" width="100%" height="500px"></figure><br>

<article>
<font size="500px">INNOVATION</font><br>
Time changes form, but not substance: the key to the timeless success enjoyed by Lamborghini lies in the attention to design and the constant search for innovative solutions that,<br>
 over the years, have contributed to make Lamborghini one of the most iconic brands in the world.<br>
</article>
<figure><img src="../images/brand2.png" width="100%" height="500px"></figure><br>


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