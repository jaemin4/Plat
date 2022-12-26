<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>

        <link href="./resources/css/LandingStyle.css" rel="stylesheet" />
    </head>
   <body>
 <nav>
   <div class="logo">Brand</div>
   <!-- toggle menu button -->
   <span class="menubtn" onclick="openNav()">&#9776;</span>
 
   <div class="navLinks">
     <ul>
       <li><a href="LandingPage.do">Home</a></li>
       <li><a href="Python_1.do">Lectures</a></li>
       <li><a href="#">About</a></li>
  
       <button type="button"><a href ="Join_login.do">Login</a></button>
     </ul>
   </div>
 </nav>
   <!-- responsive side navbar -->
   <div class="sideNav" id="sidenav">
     <a href="#" class="closeBtn" onclick="closeNav()"> &#10006;</a>
     <a href="#">Home</a>
     <a href="#">About</a>
     <a href="#">Services</a>
     <a href="#">Contact</a>
     <a href="#"><button type="button">Login</button> </a>
   </div>
   
   <!-- Header content with banner image -->
   <div class="row">
     <div class="column1">
       <h1>Try it</h1>
       <p>Use our site to study efficiently</p>
       <button>Let's Study</button>
     </div>
     <div class="column2">
       <img src="https://www.hmablogs.com/wp-content/uploads/2022/06/banner-img.png" alt="banner" width="500px">
     </div>
   </div>
   
   <!-- javascript to make side menu appear -->
 <script>
   function openNav() {
     document.getElementById("sidenav").style.width = "50%";
   }
   function closeNav() {
     document.getElementById("sidenav").style.width = "0%";
   }
 </script>
 <style>
   a{text-decoration:none;}
 </style>
</body>
</html>