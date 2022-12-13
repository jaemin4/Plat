<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>


<!-- Website title -->
<title>Mandela Effect - Fixed Sidebar Menu - Bootstrap 4</title>
<!-- CSS Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/perfect-scrollbar.min.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/style.css">
<style>
:root {
  --surface-color: #fff;
  --curve: 40;
}

* {
  box-sizing: border-box;
}

body {
  font-family: 'Noto Sans JP', sans-serif;
  background-color: #fef8f8;
}

.cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin: 4rem 5vw;
  padding: 0;
  list-style-type: none;
}

.card {
  position: relative;
  display: block;
  height: 100%;  
  border-radius: calc(var(--curve) * 1px);
  overflow: hidden;
  text-decoration: none;
}

.card__image {      
  width: 100%;
  height: auto;
}

.card__overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;      
  border-radius: calc(var(--curve) * 1px);    
  background-color: var(--surface-color);      
  transform: translateY(100%);
  transition: .2s ease-in-out;
}

.card:hover .card__overlay {
  transform: translateY(0);
}

.card__header {
  position: relative;
  display: flex;
  align-items: center;
  gap: 2em;
  padding: 2em;
  border-radius: calc(var(--curve) * 1px) 0 0 0;    
  background-color: var(--surface-color);
  transform: translateY(-100%);
  transition: .2s ease-in-out;
}

.card__arc {
  width: 80px;
  height: 80px;
  position: absolute;
  bottom: 100%;
  right: 0;      
  z-index: 1;
}

.card__arc path {
  fill: var(--surface-color);
  d: path("M 40 80 c 22 0 40 -22 40 -40 v 40 Z");
}       

.card:hover .card__header {
  transform: translateY(0);
}

.card__thumb {
  flex-shrink: 0;
  width: 50px;
  height: 50px;      
  border-radius: 50%;      
}

.card__title {
  font-size: 1em;
  margin: 0 0 .3em;
  color: #6A515E;
}

.card__tagline {
  display: block;
  margin: 1em 0;
  font-family: "MockFlowFont";  
  font-size: .8em; 
  color: #D7BDCA;  
}

.card__status {
  font-size: .8em;
  color: #D7BDCA;
}

.card__description {
  padding: 0 2em 2em;
  margin: 0;
  color: #D7BDCA;
  font-family: "MockFlowFont";   
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  overflow: hidden;
}    
</style>








</head>
<body>

<!-- BEGIN Wrapper -->
<div class="wrapper">

	<!-- BEGIN Sidebar -->
	<nav id="sidebar">
	<div class="sidebar-header">
		<h1 class="site-title">
      <div class="form-group">
        <label for="usr">ID:</label>
        <input type="text" class="form-control" id="usr">
      </div>
      <div class="form-group">
        <label for="pwd">Password:</label>
        <input type="password" class="form-control" id="pwd">
      </div>
		<img class="imglogo" src="./resources/images/logo.png"><br/>
		좋댓구알</h1>
	</div>
	<ul class="list-unstyled components">
		<p><a href = "#">Let Study</a></p>
		<li class="active">
			<a href="Python_1.do">Python</a>
		</li>
		<li>

		<a href="Java_1.do">Java</a>
		<a href="JS_1.do">JS</a>
		<a href="ai_1.do">머신러닝</a>
		<a href="ai_2.do">딥러닝</a>
		
	</ul>
	<div class="sidebar-footer">
		<p class="social-icons">
			<a target="_blank" href="#"><i class="fa fa-youtube"></i></a>
			<a target="_blank" href="#"><i class="fa fa-soundcloud"></i></a>
			<a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
			<a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
			<a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
		</p>
		<p>
			Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>

		</p>
	</div>
	</nav>
  <!-- END Sidebar -->

  <!-- BEGIN Responsive Menu Button -->
	<nav id="sidebar-responsive" class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<!-- Your website title here -->
      <h1 class="mobile-title">Mandela Effect</h1>
			<button type="button" id="sidebarCollapse" class="navbar-btn pull-right">
			<span></span>
			<span></span>
			<span></span>
			</button>
			<div class="clearfix">
			</div>
		</div>
	</div>
	</nav>
  <!-- End Responsive Menu Button -->


	<!-- BEGIN Page Content -->
	<div id="content">
    <div class="card-columns">
		<ul class="cards">
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/oYiTqum.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="https://i.imgur.com/7D7I6dI.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">Jessica Parker</h3>            
		            <span class="card__status">1 hour ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>      
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/2DhmtJ4.jpg" class="card__image" alt="" />
		      <div class="card__overlay">        
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
		          <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">kim Cattrall</h3>
		            <span class="card__status">3 hours ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/oYiTqum.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="https://i.imgur.com/7D7I6dI.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">Jessica Parker</h3>
		            <span class="card__tagline">Lorem ipsum dolor sit amet consectetur</span>            
		            <span class="card__status">1 hour ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/2DhmtJ4.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
		          <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">kim Cattrall</h3>
		            <span class="card__status">3 hours ago</span>
		          </div>          
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>    
		</ul>
		<ul class="cards">
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/oYiTqum.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="https://i.imgur.com/7D7I6dI.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">Jessica Parker</h3>            
		            <span class="card__status">1 hour ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>      
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/2DhmtJ4.jpg" class="card__image" alt="" />
		      <div class="card__overlay">        
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
		          <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">kim Cattrall</h3>
		            <span class="card__status">3 hours ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/oYiTqum.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="https://i.imgur.com/7D7I6dI.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">Jessica Parker</h3>
		            <span class="card__tagline">Lorem ipsum dolor sit amet consectetur</span>            
		            <span class="card__status">1 hour ago</span>
		          </div>
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/2DhmtJ4.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
		          <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">kim Cattrall</h3>
		            <span class="card__status">3 hours ago</span>
		          </div>          
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li> 
		  <li>
		    <a href="" class="card">
		      <img src="https://i.imgur.com/2DhmtJ4.jpg" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                 
		          <img class="card__thumb" src="https://i.imgur.com/sjLMNDM.png" alt="" />
		          <div class="card__header-text">
		            <h3 class="card__title">kim Cattrall</h3>
		            <span class="card__status">3 hours ago</span>
		          </div>          
		        </div>
		        <p class="card__description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores, blanditiis?</p>
		      </div>
		    </a>
		  </li>     
		</ul>
    </div>
	</div>
  <!-- END Page Content -->

</div>
<!--END Wrapper -->

<!-- BEGIN Scripts -->
<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>
<!-- END Scripts -->

</body>
</html>
