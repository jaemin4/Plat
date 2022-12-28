<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>

<html lang="ko">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./resources/images/apple-icon.png">
  <link rel="icon" type="image/png" href="./resources/images/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Paper Kit by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="./resources/css/bootstrap2.min.css" rel="stylesheet" />
  <link href="./resources/css/paper-kit.css?v=2.2.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="./resources/css/demo.css" rel="stylesheet" />
</head>

<body class="landing-page sidebar-collapse">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="300">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" href="#" rel="tooltip" title="Coded by Creative Tim" data-placement="bottom" target="_blank">
        <img class="imglogo" src="./resources/images/logo.png">
        </a>
        <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar bar1"></span>
          <span class="navbar-toggler-bar bar2"></span>
          <span class="navbar-toggler-bar bar3"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse justify-content-end" id="navigation">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="LandingPage.do" class="nav-link"><i class="nc-icon nc-layout-11"></i> Home </a>
          </li>
          <li class="nav-item">
            <a href="Python_1.do" target="_blank" class="nav-link"><i class="nc-icon nc-book-bookmark">
            </i>Lectures</a>
          </li>
          <li class="nav-item">
            <a onclick="location.href='logout.do'" target="_blank" class="nav-link"><i class="nc-icon nc-book-bookmark">
            </i>${m_id eq null ? 'Login':'Logout'}</a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com/CreativeTim" target="_blank">
              <i class="fa fa-twitter"></i>
              <p class="d-lg-none">Twitter</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/CreativeTim" target="_blank">
              <i class="fa fa-facebook-square"></i>
              <p class="d-lg-none">Facebook</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com/CreativeTimOfficial" target="_blank">
              <i class="fa fa-instagram"></i>
              <p class="d-lg-none">Instagram</p>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" rel="tooltip" title="Star on GitHub" data-placement="bottom" href="https://www.github.com/CreativeTimOfficial" target="_blank">
              <i class="fa fa-github"></i>
              <p class="d-lg-none">GitHub</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Navbar -->
  <div class="page-header" data-parallax="true">
  <video width="100%" height="auto" autoplay loop muted controls>
   <source src ="./resources/images/back.mp4" type="video/mp4">
   </video>
    <div class="filter"></div>
    <div class="container">
      <div class="motto text-center">
        <h1> 스펙 JAVA </h1>
        <h3> 코딩교육 콘텐츠 시청를 보다 편리하게 하는 유튜브 코딩강의 요약 서비스</h3>
        <br />
        <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" class="btn btn-outline-neutral btn-round"><i class="fa fa-play"></i>Watch video</a>
        <button type="button" class="btn btn-outline-neutral btn-round">MORE</button>
      </div>
    </div>
  </div>
   
  <div class="main">
    <div class="section text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ml-auto mr-auto">
            <h2 class="title">Let's talk product</h2>
            <h5 class="description">
            넘쳐나는 콘텐츠는 유튜브를 중심으로 유저에게 제공되고 있고,<br>
            그 중에서도 짧고 간결한 컨텐츠, 요약 서비스 등의 Short Form 콘텐츠의 수요가 늘어나고 있다.
            유튜브 쇼츠의 전세계 하루 평균 조회수는 65억뷰를 기록하고 있고<br> 특히 MZ세대의 비율이 압도적이다.<br>
            MZ세대를 위한 쇼츠교육콘텐츠 서비스이다.
            </h5>
            <br>
            <a href="#paper-kit" class="btn btn-danger btn-round">See Details</a>
          </div>
        </div>
        <br/>
        <br/>
        <div class="row">
          <div class="col-md-3">
            <div class="info">
              <div class="icon icon-danger">
                <i ></i>
              </div>
              <div class="description">
                <h4 class="info-title">summary</h4>
                <p class="description">영상의 미리보기를 확인하고 자신에게 필요한 영상을 효율적으로 선택할 수 있다.</p>
                <a href="javascript:;" class="btn btn-link btn-danger">See more</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info">
              <div class="icon icon-danger">
                <i ></i>
              </div>
              <div class="description">
                <h4 class="info-title">Key Word</h4>
                <p>키워드 추출로 키워드의 해당 부분으로 바로 가서 영상을 시청하며 집중력을 향상시킨다.</p>
                <a href="javascript:;" class="btn btn-link btn-danger">See more</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info">
              <div class="icon icon-danger">
                <i ></i>
              </div>
              <div class="description">
                <h4 class="info-title">Favorite</h4>
                <p> 즐겨찾기 기능을 통해 내 강의실에서 바로 즐겨찾기 해놓은 영상을 시청하여 시간을 절약할 수 있다.</p>
                <a href="javascript:;" class="btn btn-link btn-danger">See more</a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="info">
              <div class="icon icon-danger">
                <i></i>
              </div>
              <div class="description">
                <h4 class="info-title">Lectures</h4>
                <p>강의를 카테고리로 나눠 쉽게 그 분야의 영상을 확인 할 수 있다.</p>
                <a href="javascript:;" class="btn btn-link btn-danger">See more</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-dark text-center">
      <div class="container">
        <h2 class="title">Let's talk about us</h2>
        <div class="row">
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/soo.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">김수훈</h4>
                    <h6 class="card-category">Product Manager</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                  스펙JAVA의 팀장<br> 프론트엔드
                </p>
              </div>
         
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/huo.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">강효원</h4>
                    <h6 class="card-category">Developer</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                  모델링, AI 기능 구현
                </p>
              </div>
          
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/koo.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">구예나</h4>
                    <h6 class="card-category">Designer</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                  프론트엔드
                  </p>
              </div>
  
            </div>
          </div>
          
        </div>
         <div class="section section-dark text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/hoo.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">김수호</h4>
                    <h6 class="card-category">Designer</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                   프론트엔드
                </p>
              </div>
     
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/jamin.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">오재민</h4>
                    <h6 class="card-category">Product Manager</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                백엔드
                </p>
              </div>
             
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-profile card-plain">
              <div class="card-avatar">
                <a href="#avatar">
                  <img src="./resources/images/faces/min.jpg" alt="...">
                </a>
              </div>
              <div class="card-body">
                <a href="#paper-kit">
                  <div class="author">
                    <h4 class="card-title">백종민</h4>
                    <h6 class="card-category">Developer</h6>
                  </div>
                </a>
                <p class="card-description text-center">
                백엔드 <br> 어플리케이션 구축
                  </p>
              </div>
            
            </div>
          </div>
        </div>
      </div>
    </div>
      </div>
    </div>
    
    <div class="section landing-section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ml-auto mr-auto">
            <h2 class="text-center">Keep in touch?</h2>
            <form class="contact-form">
              <div class="row">
                <div class="col-md-6">
                  <label>Name</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="nc-icon nc-single-02"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Name">
                  </div>
                </div>
                <div class="col-md-6">
                  <label>Email</label>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="nc-icon nc-email-85"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Email">
                  </div>
                </div>
              </div>
              <label>Message</label>
              <textarea class="form-control" rows="4" placeholder="의견을 보내주세요"></textarea>
              <div class="row">
                <div class="col-md-4 ml-auto mr-auto">
                  <button class="btn btn-danger btn-lg btn-fill">Send Message</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer   footer-white ">
    <div class="container">
    
    </div>
  </footer>

</body>

</html>
