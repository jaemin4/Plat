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


<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="./resources/css/style.css">
<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>



<style>
@import url('https://fonts.googleapis.com/css?family=Oswald:500');
.thx{
  position: fixed;
  left:70%;
  transform:translateX(-50%);
  bottom: 15px;
}
nav{
  width: 100%;
  top:50px;
  margin-top:40px;
  text-align:center;
}
nav a{
  font-family: 'Oswald', sans-serif;
  font-weight:500;
  text-transform:uppercase;
  text-decoration:none;
  color:#16151b;
  margin:0 15px;
  font-size:16px;
  letter-spacing:1px;
  position:relative;
  display:inline-block;
}
nav a:before{
  content:'';
  position: absolute;
  width: 100%;
  height: 3px;
  background:#16151b;
  top:47%;
  animation:out 0.2s cubic-bezier(1, 0, 0.58, 0.97) 1 both;
}
nav a:hover:before{

}
@keyframes in{
  0%{
    width: 0;
    left:0;
    right:auto;
  }
  100%{
    left:0;
    right:auto;
    width: 100%;
  }
}
@keyframes out{
  0%{
    width:100%;
    left: auto;
    right: 0;
  }
  100%{
    width: 0;
    left: auto;
    right: 0;
  }
}
@keyframes show{
  0%{
    opacity:0;
    transform:translateY(-10px);
  }
  100%{
    opacity:1;
    transform:translateY(0);
  }
}

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
/*   display: block; */
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
  /* display: block; */
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

#search_area{
	margin-left:20%;
	margin-top:3%;
	width:100%;
	display:flex;
	height:45px;


    
}
#input_area{
	width:100%;
	height:100%;
	background: #fff;
    border-radius: 30px;
    margin-left:3%;
     
}
#searchbar{
	width:70px;
	border:none;
	background: #fff;
    border-radius: 30px;
   
    
 
   
}
.card-columns {
    -webkit-column-count: 3;
    -moz-column-count: 3;
     column-count: auto;
    -webkit-column-gap: 2rem;
    -moz-column-gap: 2rem;
    column-gap: 2rem;
    width:100%;
    margin-top:-5%;
}


</style>

<script>
	function notLogin_f(){
		alert("로그인을 해주세요");
	}

</script>

</head>
<body>

	<div class="container">
		<div class="header">
			<nav>
			  
			  <a>
				  	<form id = "form" onsubmit="return submitForm()">
						<div id = "search_area">
				        	<input type="text" placeholder="Search..." name = "keyword" id = "input_area">
				        	<input type = "submit" id = "searchbar" value="검색">
			   			 </div>
			   		</form>
			  
			  </a>
			  
			  <a href="LandingPage.do">home</a>
			  <a href="Python_1.do">lectures</a>
			  <a href="${m_id ne null ? 'MyPage.do':'Join_login.do'}">favorites</a>
			  <a href="about.do">about</a>
			  <a onclick="location.href='logout.do'">${m_id eq null ? 'Login':'Logout'}</a>
			</nav>



		</div>
		<div class="left">
			<div class="sidebar">
				<nav id="sidebar">
					<div class="sidebar-header">
						<h1 class="site-title"></h1>
						<img class="imglogo" src="./resources/images/1.png"><br/>
		
					</div>
					<ul class="list-unstyled components">
						<p>
							<c:if test="${m_id ne null}">
								<a href="#">${m_id}님 환영합니다.</a>
							</c:if>
						</p>
						<li class="active"><a href="Python_1.do">Python</a></li>
						<li><a href="Java_1.do">Java</a> <a href="JS_1.do">JS</a> <a
							href="ai_1.do">머신러닝</a> <a href="ai_2.do">딥러닝</a>
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
								Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">Smhrd</a>
					
							</p>
						</div>
				</nav>

			</div>
		</div>

		<div class="right"></div>
		
		<div class="main1">
		<div class="card-columns" id = "rem">
		<ul class="cards">
		
		<c:forEach var="vo" items="${list}">
	<%-- 	<c:if test="${vo.lec_grammar=='연산자'}"> --%>
		
		<li>
		    <a id="${vo.lec_id}" onclick="location.href='VideoPage.do?lec_id=${vo.lec_id}'"  class="card" >
		      <img src="${vo.lec_thumb}" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="${vo.lec_thumb}" />
		          <div class="card__header-text">
		            <h3 class="card__title">${vo.lec_lang}</h3>            
		            <span class="card__status">${vo.lec_grammar}</span>
		          </div>
		        </div>
		        <p class="card__description">${vo.lec_summ}</p>
		      </div>
		    </a>
		    
		  </li>
		  
		<%--   </c:if> --%>
		  </c:forEach>
		  </ul>
		  </div>
		<div class="row my-5" id="video-container"></div>
	    
			
		</div>

		

		<div class="main2"></div>
	
		<script src = "./resources/JS/main.js"></script>
	
</body>
</html>