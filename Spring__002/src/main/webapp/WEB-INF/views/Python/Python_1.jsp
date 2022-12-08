<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./resources/css/perfect-scrollbar.min.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&amp;subset=devanagari,latin-ext" rel="stylesheet">
<link rel="stylesheet" href="./resources/css/style.css">

<script src="./resources/JS/jquery.js"></script>
<script src="./resources/JS/tether.min.js"></script>
<script src="./resources/JS/bootstrap.min.js"></script>
<script src="./resources/JS/perfect-scrollbar.min.js"></script>
<script src="./resources/JS/common.js"></script>


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
                        <li><a href="#">user_name</a></li>
                     </ul>
                  </li>
                  <li class="active"><a href="#Python" data-toggle="collapse"
                     aria-expanded="false">Python</a>
                     <ul class="collapse list-unstyled" id="Python">
                        <li><a href="Python_1.do">연산자</a></li>
                        <li><a href="Python_2.do">조건문</a></li>
                        <li><a href="Python_3.do">반복문</a></li>
                     </ul>
                  </li>
                  <li><a href="#Java" data-toggle="collapse"
                     aria-expanded="false">Java</a>
                     <ul class="collapse list-unstyled" id="Java">
                        <li><a href="#">연산자</a></li>
                        <li><a href="#">조건문</a></li>
                        <li><a href="#">반복문</a></li>
                     </ul> <a href="#JS" data-toggle="collapse" aria-expanded="false">JS</a>
                     <ul class="collapse list-unstyled" id="JS">
                        <li><a href="#">연산자</a></li>
                        <li><a href="#">조건문</a></li>
                        <li><a href="#">반복문</a></li>
                     </ul> <a href="#ai_1" data-toggle="collapse" aria-expanded="false">머신러닝</a>
                     <ul class="collapse list-unstyled" id="ai_1">
                        <li><a href="#">분류</a></li>
                        <li><a href="#">로지스틱 회귀</a></li>
                        <li><a href="#">텍스트 마이닝</a></li>
                     </ul> <a href="#ai_2" data-toggle="collapse" aria-expanded="false">딥러닝</a>
                     <ul class="collapse list-unstyled" id="ai_2">
                        <li><a href="#">TensorFlow</a></li>
                        <li><a href="#">Rnn</a></li>
                        <li><a href="#">Cnn</a></li>
                     </ul>
               </ul>
            </nav>
         </div>
      </div>

      <div id="content">
      
         <div class="container">
           <!-- Stack the columns on mobile by making one full-width and the other half-width -->
           <div class="row">
             <div class="col-md-8">.col-md-8</div>
             <div class="col-6 col-md-4">.col-6 .col-md-4</div>
           </div>
         
           <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
           <div class="row">
             <div class="col-6 col-md-4">
                <div class="card">
                 <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                   <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                   <a href="#!">
                     <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                   </a>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">영상 제목1</h5>
                   <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <a href="#!" class="btn btn-primary">Button</a>
                 </div>
               </div>
             </div>
             <div class="col-6 col-md-4">
                <div class="card">
                 <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                   <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                   <a href="#!">
                     <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                   </a>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">영상 제목2</h5>
                   <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <a href="#!" class="btn btn-primary">Button</a>
                 </div>
               </div>
             </div>
             <div class="col-6 col-md-4">
               <div class="card">
                 <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                   <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                   <a href="#!">
                     <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                   </a>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">영상 제목3</h5>
                   <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <a href="#!" class="btn btn-primary">Button</a>
                 </div>
               </div>
             </div>
           </div>
         
           <!-- Columns are always 50% wide, on mobile and desktop -->
           <div class="row">
             <div class="col-6">.col-6</div>
             <div class="col-6">.col-6</div>
           </div>
           
                      <div class="row">
             <div class="col-md-8">.col-md-8</div>
             <div class="col-6 col-md-4">.col-6 .col-md-4</div>
           </div>
         
           <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
           <div class="row">
             <div class="col-6 col-md-4">.col-6 .col-md-4</div>
             <div class="col-6 col-md-4">.col-6 .col-md-4</div>
             <div class="col-6 col-md-4">.col-6 .col-md-4</div>
           </div>
         
           <!-- Columns are always 50% wide, on mobile and desktop -->
           <div class="row">
             <div class="col-6">
                <div class="card">
                 <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                   <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                   <a href="#!">
                     <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                   </a>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">영상 제목4</h5>
                   <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <a href="#!" class="btn btn-primary">Button</a>
                 </div>
               </div>
             </div>
             
             <div class="col-6">
                <div class="card">
                 <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                   <img src="https://mdbcdn.b-cdn.net/img/new/standard/nature/111.webp" class="img-fluid"/>
                   <a href="#!">
                     <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                   </a>
                 </div>
                 <div class="card-body">
                   <h5 class="card-title">영상 제목5</h5>
                   <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                   <a href="#!" class="btn btn-primary">Button</a>
                 </div>
               </div>
             </div>
           </div>
         </div>
         
         
         
      </div>
      
   </div>
</div>
   


</body>
</html>