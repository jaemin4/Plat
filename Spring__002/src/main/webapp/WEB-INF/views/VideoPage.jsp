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


<script src="./resources/JS/main.js"></script>



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


.card {
  position: relative;
/*   display: block; */
  height: 100%;  
  border-radius: calc(var(--curve) * 1px);
  overflow: hidden;
  text-decoration: none;
  width:100%;
}

.card__image {      
  width: 100%;
  height: auto;
}
.row{
	width:100%;
}
#card_body{
	width:100%;
	height:12%;
	overflow:hidden;
	margin:10px;
}

#card_main{
	width:100%;
}
#card_screen{
	height:30%;
	width:70%;
	margin-bottom:10%;

}
#screen_p{
	font-size:18px;
	font-weight:300; 
}


</style>




</head>
<body>

	<div class="container">
		<div class="header">
			<nav>
			  
			  <a href="index.do">Python</a>
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

		<div class="right"></div>
		
		<div class="main1">

		
<%-- 		<c:forEach var="vo" items="${list}">
			<h1>${vo.key_word}</h1>
			<h1>${vo.key_time}</h1>
			<h1>${vo.key_script}</h1>
			<h1>${vo.lec_id}</h1>
		</c:forEach> --%>
			
	<div class="container d-flex justify-content-center mt-50 mb-50">
        <div class="row">
           <div class="col-md-15" id = "card_main">
           		        <div class="card card-body" id = "card_screen">
                            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0">
                                	<iframe height="380px" width = "500px" src="https://www.youtube.com/embed/aEYbyiftobs?start=120&mute=1&autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                </div>

                                <div class="media-body">
                                	<h6 class="media-title font-weight-semibold">
                                        <a href="https://youtu.be/_aCuOwF1ZjU&t=139" data-abc="true">키워드</a>
                                    </h6>

                                    <ul class="list-inline list-inline-dotted mb-3 mb-lg-2">
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">Python</a></li>
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">연산자</a></li>
                                    </ul>
                                	
                                    <p class="mb-3" id = "screen_p">역사에는 과거에 있었던 사건이 원인과 결과로 기록돼 있어요. 역사를 알면 어떤 사건이 일어났을 때 그것의 결과로 어떤 일이 일어 날 지를 예측할 수 있게 됩니다. 마찬가지로 지도 학습 은 과거의 데이터로부터 학습해 서 결과를 예측하는 데 주로 사용됩니다. 자 레몬의 일까 페이지를 다시 수안 해봅시다 표를 한번 ... </p>
                                </div>

                                	<div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                                  
                                </div>
                            </div>
                        </div>
    

           

           		
           
                <div class="card card-body" id = "card_body">
                            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0">
                                    
                                        <img src="https://i.ytimg.com/vi/_aCuOwF1ZjU/sddefault.jpg" width="150" height="150" alt="">
                                   
                                </div>

                                <div class="media-body">
                                    <h6 class="media-title font-weight-semibold">
                                        <a href="https://youtu.be/_aCuOwF1ZjU&t=139" data-abc="true">키워드</a>
                                    </h6>

                                    <ul class="list-inline list-inline-dotted mb-3 mb-lg-2">
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">Python</a></li>
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">연산자</a></li>
                                    </ul>

                                    <p class="mb-3">역사에는 과거에 있었던 사건이 원인과 결과로 기록돼 있어요. 역사를 알면 어떤 사건이 일어났을 때 그것의 결과로 어떤 일이 일어 날 지를 예측할 수 있게 됩니다. 마찬가지로 지도 학습 은 과거의 데이터로부터 학습해 서 결과를 예측하는 데 주로 사용됩니다. 자 레몬의 일까 페이지를 다시 수안 해봅시다 표를 한번 ... </p>

                                    <ul class="list-inline list-inline-dotted mb-0">
                                        <li class="list-inline-item"> <a href="#" data-abc="true">나도코딩</a></li>
                                        <li class="list-inline-item"><a href="#" data-abc="true"></a></li>
                                    </ul>
                                </div>

                                <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                                  

                                    <div>
                                        <i class="fa fa-star"></i>
          

                                    </div>

									<div class="text-muted">2349 reviews</div>
									
                                    <button type="button" onclick = "BookMark(this.id)" id = "BCCdCq0rRso" ></button>
                                </div>
                            </div>
                        </div>






                         <div class="card card-body mt-3" id = "card_body">
                            <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0">
                                    
                                        <img src="https://i.imgur.com/Aj0L4Wa.jpg" width="150" height="150" alt="">
                                   
                                </div>

                                <div class="media-body">
                                    <h6 class="media-title font-weight-semibold">
                                        <a href="https://youtu.be/_aCuOwF1ZjU&t=72" data-abc="true">키워드</a>
                                    </h6>

                                    <ul class="list-inline list-inline-dotted mb-3 mb-lg-2">
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">Python</a></li>
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">연산자</a></li>
                                    </ul>

                                    <p class="mb-3">공식의 대중화 이런 놀라운 시대의 공부하지 않는 다는 것이 얼마나 손에 인가요. 기분 좋죠. 박스 프. 그런데 이왕 여기까지 왔는데 여기서 멈추는 것은 조금 아깝습니다. 조금만 더 멀리 가 봅시다. 조금만 더 멀리 가면 전문가도 대화할 수 있는 수준에 도달할 수 있거든요.</p>

                                    <ul class="list-inline list-inline-dotted mb-0">
                                        <li class="list-inline-item"><a href="#" data-abc="true">나도 코딩</a></li>
                                        <li class="list-inline-item"><a href="#" data-abc="true"></a></li>
                                    </ul>
                                </div>

                                <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                                    <h3 class="mb-0 font-weight-semibold"></h3>

                                    <div>
                                        <i class="fa fa-star"></i>
              
                                    </div>

                                    <div class="text-muted">2349 reviews</div>

                                    <button type="button"></button>
                                </div>
                            </div>
                        </div> 
                        

					

                             
        </div>                     
        </div>
        

        
    </div>

		
			
		</div>

		

		<div class="main2"></div>
	

	
</body>
</html>