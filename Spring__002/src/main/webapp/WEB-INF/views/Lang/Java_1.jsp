<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/perfect-scrollbar.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/style.css">

<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>
<script>

function BookMark(this_id){
     let spanTag = document.getElementById(this_id);
     console.log(this_id)
     
		$.ajax({
         	url : "${cpath}/jjim.do",
         	type:"get",
			data : {"this_id" : this_id},
			success: console.log("success"),
			error:console.log("error")
         });
         
	     if (spanTag.innerText == '★') {
	         spanTag.innerText = '☆'
	     }
	     else {
	         spanTag.innerText = '★'
	     }
 }
</script>
</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">


			<div class="sidebar-wrapper">
				<nav id="sidebar">
					<div class="sidebar-header">
						<h1 class="site-title">

							<img class="imglogo" src="./resources/images/logo.png"><br />
							Summary
						</h1>
					</div>
					<ul class="list-unstyled components">
						<li class="active"><a href="#my_page" data-toggle="collapse"
							aria-expanded="false">마이페이지</a>
							<ul class="collapse list-unstyled" id="my_page">
								<li><a href="MyPage.do">admin</a></li>
							</ul></li>
						<li class="active"><a href="Python_1.do">Python</a></li>
						<li><a href="#Java" data-toggle="collapse"
							aria-expanded="false">Java</a>
							<nav>
								<ul class="collapse list-unstyled" id="Java">
									<li class="nav-item"><a class="nav-link" href="#section12">연산자</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#section22">조건문</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#section32">반복문</a>
									</li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" id="navbardrop"
										data-toggle="dropdown"> Element </a>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#section412">Link 1</a> <a
												class="dropdown-item" href="#section422">Link 2</a>
										</div></li>
								</ul>
							</nav> <a href="JS_1.do">JS</a> <a href="ai_1.do">머신러닝</a> <a
							href="ai_2.do">딥러닝</a>
					</ul>
				</nav>
			</div>
		</div>

		<div id="content">

			<div class="container">
				<!-- Stack the columns on mobile by making one full-width and the other half-width -->
				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-6 col-md-4"></div>
				</div>

				<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
				<div class="row">
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목1</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목2</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>
					<div class="col-6 col-md-4">
						<div class="card">
							<div class="bg-image hover-overlay ripple"
								data-mdb-ripple-color="light">
								<img
									src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp"
									class="img-fluid" /> <a href="#!">
									<div class="mask"
										style="background-color: rgba(251, 251, 251, 0.15);"></div>
								</a>
							</div>
							<div class="card-body">
								<h5 class="card-title">영상 제목3</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
							</div>
						</div>
					</div>


				</div>

				<!-- Columns are always 50% wide, on mobile and desktop -->
				<div class="row">
					<div class="col-6"></div>
					<div class="col-6"></div>
				</div>

				<div class="row">
					<div class="col-md-8"></div>
					<div class="col-6 col-md-4"></div>
				</div>

				<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
				<div class="row">


					<div id="section12" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>연산자</h1>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-6 col-md-4"></div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='연산자'}">
									<div class="col-6 col-md-4">
										<div class="card">
											<div class="bg-image hover-overlay ripple"
												data-mdb-ripple-color="light">
												<img src="${vo.lec_thumb}" class="img-fluid" /> <a href="#!"><div
														class="mask"
														style="background-color: rgba(251, 251, 251, 0.15);"></div></a>
											</div>
											<div class="card-body">
												<h5 class="card-title">${vo.lec_lang}/${vo.lec_grammar}</h5>
												<p class="card-text">${vo.lec_summ}</p>
												<span class="btn btn-primary" id = "${vo.lec_id}" onclick = "BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>



						</div>
					</div>
					<div id="section22" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>조건문</h1>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-6 col-md-4"></div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='조건문'}">
									<div class="col-6 col-md-4">
										<div class="card">
											<div class="bg-image hover-overlay ripple"
												data-mdb-ripple-color="light">
												<img src="${vo.lec_thumb}" class="img-fluid" /> <a href="#!"><div
														class="mask"
														style="background-color: rgba(251, 251, 251, 0.15);"></div></a>
											</div>
											<div class="card-body">
												<h5 class="card-title">${vo.lec_lang}/${vo.lec_grammar}</h5>
												<p class="card-text">${vo.lec_summ}</p>
												<span class="btn btn-primary" id = "${vo.lec_id}" onclick = "BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div id="section32" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>반복문</h1>
						<div class="row">
							<div class="col-md-8">.col-md-8</div>
							<div class="col-6 col-md-4">.col-6 .col-md-4</div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='반복문'}">
									<div class="col-6 col-md-4">
										<div class="card">
											<div class="bg-image hover-overlay ripple"
												data-mdb-ripple-color="light">
												<img src="${vo.lec_thumb}" class="img-fluid" /> <a href="#!"><div
														class="mask"
														style="background-color: rgba(251, 251, 251, 0.15);"></div></a>
											</div>
											<div class="card-body">
												<h5 class="card-title">${vo.lec_lang}/${vo.lec_grammar}</h5>
												<p class="card-text">${vo.lec_summ}</p>
												<span class="btn btn-primary" id = "${vo.lec_id}" onclick = "BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div id="section412" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>Elements Sub1</h1>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
					</div>
					<div id="section422" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>Elements Sub2</h1>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
					</div>

				</div>

				<!-- Columns are always 50% wide, on mobile and desktop -->
				<div class="row">
					<div class="col-6"></div>

					<div class="col-6"></div>
				</div>
			</div>



		</div>

	</div>
	</div>



</body>
</html>