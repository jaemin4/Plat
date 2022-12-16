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


<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="./resources/css/style.css">
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
	box-sizing: border-box;
	font-familly: "Poppins", sans-serif;
}

.container_1 {
	position: relative;
	width: 100%;
	margin-left:18%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-warp: warp;
	
}

.container_1 .card {
	position: relative;
	width:30%;
	height: 30%;
	background-color: #fff;
	margin: 20px;
	padding: 20px;
	display: flex;
	flex-direction: column;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.5);
	transition: 0.3s ease-in-out;
	border-radius: 15px;
}

.container_1 .card:hover {
	height: 50%;
	overflow:scroll;
	
}

.container_1 .card .image {
	position: relative;
	width: 260px;
	height: 260px;
	top: -40%;
	left: 8px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.container_1 .card .image img {
	max-width: 70%;
	border-radius: 15px;
}

.container_1 .card .content {
	position: relative;
	top: -140px;
	padding: 10px 15px;
	color: #111;
	text-align: center;
	visibility: hidden;
	opacity: 0;
	transition: 0.3s ease-in-out;
}

.container_1 .card:hover .content {
	margin-top: 30px;
	visibility: visible;
	opacity: 1;
	transition-delay: 0.2s;
}

@import url('https://fonts.googleapis.com/css?family=Oswald:500');

.thx{
  position: fixed;
  left:50%;
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

</style>


</head>
<body>

	<div class="container">
		<div class="header">
			<nav>
			  <a href="index.do">Home</a>
			  <a href="Python_1.do">Lectures</a>
			  <a href="MyPage.do">Favorites</a>
			  <a href="#">About</a>
			</nav>



		</div>
		<div class="left">
			<div class="sidebar">
				<nav id="sidebar">
					<div class="sidebar-header">
						<h1 class="site-title"></h1>
					</div>
					<ul class="list-unstyled components">
						<p>
							<a href="#">Let Study</a>
						</p>
						<li class="active"><a href="Python_1.do">Python</a></li>
						<li><a href="Java_1.do">Java</a> <a href="JS_1.do">JS</a> <a
							href="ai_1.do">머신러닝</a> <a href="ai_2.do">딥러닝</a>
					</ul>
					<div class="sidebar-footer"></div>
				</nav>

			</div>


		</div>

		<div class="right">right</div>
		<div class="main1">
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




		<div class="main2"></div>


	</div>
</body>
</html>