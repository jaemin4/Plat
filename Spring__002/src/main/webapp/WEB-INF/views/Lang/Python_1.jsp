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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/perfect-scrollbar.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/style.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>

<script src="./resources/JS/BookMark.js"></script>

<script>
	function BookMark(this_id) {
		let spanTag = document.getElementById(this_id);
		console.log(this_id)

		$.ajax({
			url : "${cpath}/jjim.do",
			type : "get",
			data : {
				"this_id" : this_id
			},
			success : console.log("success"),
			error : console.log("error")
		});

		if (spanTag.innerText == '★') {
			spanTag.innerText = '☆'
		} else {
			spanTag.innerText = '★'
		}
	}
</script>

<style>
* {
	margin: 0;
	padding: 0;
	font-family: "Roboto", sans-serif;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	background-color: #34495e;
}

.cards {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.card {
	margin: 40px;
	position: relative;
	max-width: 250px;
	max-height: 350px;
	box-shadow: 0 40px 60px -6px black;
}

.card-title {
	display: block;
	text-align: center;
	color: #fff;
	background-color: #6184a8;
	padding: 2%;
	border-top-right-radius: 4px;
	border-top-left-radius: 4px;
}

.card img {
	width: 100%;
	height: 98%;
	object-fit: cover;
	display: block;
	position: relative;
}

.card-desc {
	display: block;
	font-size: 0.7rem;
	position: absolute;
	height: 0;
	top: 0;
	opacity: 0;
	padding: 18px 8%;
	background-color: pink;
	overflow-y: scroll;
	transition: 0.8s ease;
}

.card:hover .card-desc {
	opacity: 1;
	height: 86%;
}

h1 {
	font-size: 2.8rem;
	color: #fff;
	margin: 40px 0 20px 0;
	text-align: center;
}
</style>


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
						<li class="active"><a href="#Python" data-toggle="collapse"
							aria-expanded="false">Python</a>
							<nav>
								<ul class="collapse list-unstyled" id="Python">
									<li class="nav-item"><a class="nav-link" href="#section1">연산자</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#section2">조건문</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#section3">반복문</a>
									</li>

								</ul>
							</nav></li>
						<li><a href="Java_1.do">Java</a> <a href="JS_1.do">JS</a> <a
							href="ai_1.do">머신러닝</a> <a href="ai_2.do">딥러닝</a>
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


					<div id="section1" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h3>Chapter1</h3>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-6 col-md-4"></div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row" id="Python_section3">
						<div class="cards">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='연산자'}">
									<div class="col-6 col-md-4">
										
											<div class="card">
												<h2 class="card-title">Seal</h2>
												<img src="${vo.lec_thumb}" alt="">
												<p class="card-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
												<span class="btn btn-primary" id="${vo.lec_id}" onclick="BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
													
											</div>

									</div>
								</c:if>
							</c:forEach>
							</div>



						</div>
					</div>
					<div id="section2" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h3>Chapter2</h3>
						<div class="row">
							<div class="col-md-8"></div>
							<div class="col-6 col-md-4"></div>
						</div>

						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row">
						<div class="cards">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='조건문'}">
									<div class="col-6 col-md-4">
									
									
											<div class="card">
												<h2 class="card-title">Seal</h2>
												<img src="${vo.lec_thumb}" alt="">
												<p class="card-desc">${vo.lec_summ}</p>
												<span class="btn btn-primary" id="${vo.lec_id}" onclick="BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
											</div>
											
										</div>
									
								</c:if>
							</c:forEach>
						</div>
						</div>
					</div>
					<div id="section3" class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h3>Chapter3</h3>


						<!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
						<div class="row">
						<div class="cards">
							<c:forEach var="vo" items="${list}">
								<c:if test="${vo.lec_grammar=='반복문'}">
									<div class="col-6 col-md-4">
										
											<div class="card">
												<h2 class="card-title">Seal</h2>
												<img src="${vo.lec_thumb}" alt="">
												<p class="card-desc">${vo.lec_summ}</p>
												<span class="btn btn-primary" id="${vo.lec_id}" onclick="BookMark(this.id)">${vo.mem_id eq null ? '☆' : '★'}</span>
													
											</div>

										</div>
									
								</c:if>
							</c:forEach>
							</div>


						</div>
					</div>
					<div class="container-fluid bg-secondary"
						style="padding-top: 70px; padding-bottom: 70px">
						<h1>Elements Sub1</h1>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
						<p>Try to scroll this section and look at the navigation bar
							while scrolling! Try to scroll this section and look at the
							navigation bar while scrolling!</p>
					</div>
					<div class="container-fluid bg-secondary"
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