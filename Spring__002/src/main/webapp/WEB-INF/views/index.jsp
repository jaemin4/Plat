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
		<img class="imglogo" src="./img/logo.png"><br/>
		좋댓구알</h1>
	</div>
	<ul class="list-unstyled components">
		<p>
			Let Study
		</p>

    


		<li class="active">
		<a href="#Python" data-toggle="collapse" aria-expanded="false">Python</a>
		<ul class="collapse list-unstyled" id="Python">
			<li><a href="#">연산자</a></li>
			<li><a href="#">조건문</a></li>
			<li><a href="#">반복문</a></li>
		</ul>
		</li>
		<li>

		<a href="#Java" data-toggle="collapse" aria-expanded="false">Java</a>
		<ul class="collapse list-unstyled" id="Java">
			<li><a href="#">연산자</a></li>
			<li><a href="#">조건문</a></li>
			<li><a href="#">반복문</a></li>
		</ul>

		<a href="#JS" data-toggle="collapse" aria-expanded="false">JS</a>
		<ul class="collapse list-unstyled" id="JS">
			<li><a href="#">연산자</a></li>
			<li><a href="#">조건문</a></li>
			<li><a href="#">반복문</a></li>
		</ul>

		<a href="#ai_1" data-toggle="collapse" aria-expanded="false">머신러닝</a>
		<ul class="collapse list-unstyled" id="ai_1">
			<li><a href="#">분류</a></li>
			<li><a href="#">로지스틱 회귀</a></li>
			<li><a href="#">텍스트 마이닝</a></li>
		</ul>
		<a href="#ai_2" data-toggle="collapse" aria-expanded="false">딥러닝</a>
		<ul class="collapse list-unstyled" id="ai_2">
			<li><a href="#">TensorFlow</a></li>
			<li><a href="#">Rnn</a></li>
			<li><a href="#">Cnn</a></li>
		</ul>
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
      <div class="card">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/iFNpUl9cfKg/sddefault.jpg" alt="Card image cap">
        <div class="card-block">
          <h2 class="card-title"><a href = "https://youtu.be/iFNpUl9cfKg&t=158s">Part.09 반복문(for문 기초)</a></h2>
          <p class="card-text">요약</p>
         
        </div>
      </div>
      <div class="card p-3">
        <blockquote class="card-block card-blockquote">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/iFNpUl9cfKg/sddefault.jpg" alt="Card image cap">
        <h2 class="card-title"><a href = "https://youtu.be/iFNpUl9cfKg&t=158s">Part.09 반복문(for문 기초)</a></h2>

          <p>요약</p>
          <footer>
            <small class="text-muted">
              Someone famous in <cite title="Source Title">Source Title</cite>
            </small>
          </footer>
        </blockquote>
      </div>

      <div class="card p-3">
        <blockquote class="card-block card-blockquote">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/iFNpUl9cfKg/sddefault.jpg" alt="Card image cap">
        <h2 class="card-title"><a href = "https://youtu.be/iFNpUl9cfKg&t=158s">Part.09 반복문(for문 기초)</a></h2>

          <p>요약 </p>
          <footer>
            <small class="text-muted">
              Someone famous in <cite title="Source Title">Source Title</cite>
            </small>
          </footer>
        </blockquote>
      </div>

      <div class="card">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/1t9nKrsdkdw/sddefault.jpg" alt="Card image cap">
        <div class="card-block">
          <h2 class="card-title"><a href = "https://youtu.be/1t9nKrsdkdw">코딩 분야 소개와 가장 먼저 공부해야 할 것과 공부 순서</a></h2>
          <p class="card-text">요약</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>
      
      <div class="card card-inverse card-primary p-3 text-center">
        <blockquote class="card-blockquote">
          <p><img src = "https://cdn.icon-icons.com/icons2/2699/PNG/512/apple_logo_icon_168588.png"></p>
          <footer>
            <small>
              Someone famous in <cite title="Source Title"R. D. Hitchcock</cite>
            </small>
          </footer>
        </blockquote>
      </div>
      <div class="card">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/SGGebq48h3Y/sddefault.jpg" alt="Card image cap">

        <div class="card-block">
          <h2 class="card-title"><a href = "https://youtu.be/SGGebq48h3Y">백엔드 서버 클릭 몇번으로 무료 배포하는 방법</a>
          </h2>
         
          <p class="card-text">요약</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>

      <div class="card">
        <img class="card-img-top img-fluid" src="https://i.ytimg.com/vi/SGGebq48h3Y/sddefault.jpg" alt="Card image cap">

        <div class="card-block">
          <h2 class="card-title"><a href = "https://youtu.be/SGGebq48h3Y">백엔드 서버 클릭 몇번으로 무료 배포하는 방법</a>
          </h2>
          
            <p class="card-text">요약</p>
          <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
        </div>
      </div>

      <div class="card">
      </div>
      <div class="card p-3 text-right">
        <blockquote class="card-blockquote">
          <img class="card-img img-fluid" src="https://i.ytimg.com/vi/j8Nj7NYqYB4/sddefault.jpg" alt="Card image">

          <h2 class="card-title"><a href = "https://youtu.be/SGGebq48h3Y">인공지능 고구마 판별</a></h2>
          <p>요약</p>
          <footer>
            <small class="text-muted">
              Someone famous in <cite title="Source Title">Source Title</cite>
            </small>
          </footer>
        </blockquote>
      </div>
      <div class="card">
        <div class="card-block">
          <h2 class="card-title">Let Study</h2>
          <p class="card-text"> </p>
          <p class="card-text"><small class="text-muted">좋댓구알</small></p>
        </div>
      </div>
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
