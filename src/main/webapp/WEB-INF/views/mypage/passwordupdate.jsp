<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
THEME: Aviato | E-commerce template
VERSION: 1.0.0
AUTHOR: Themefisher

HOMEPAGE: https://themefisher.com/products/aviato-e-commerce-template/
DEMO: https://demo.themefisher.com/aviato/
GITHUB: https://github.com/themefisher/Aviato-E-Commerce-Template/

WEBSITE: https://themefisher.com
TWITTER: https://twitter.com/themefisher
FACEBOOK: https://www.facebook.com/themefisher
-->


<!DOCTYPE html>
<html lang="ko">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Webook | E-commerce template</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="../resources/plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="../resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="../resources/css/style.css">

</head>

<body id="body">
  <section class="page-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="content">
            <h1 class="page-name">My Page</h1>
            <ol class="breadcrumb">
              <li><a href="index.html">Home</a></li>
              <li class="active">MyPage</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="page-wrapper">
    <div class="container">
      <div class="row">
        <!--사이드 -->
        <div class="col-md-3">
          <aside class="sidebar">
            <div class="navigation">
              <div class="menuToggle"></div>
                  <ul>
                     <li class="list">
                       <h4>마이룸<hr/></h4>
                     </li>
                     <li class="list">
                       <a href="#" class="btn btn-solid-border w-100" >상품 주문 관리</a>
                     </li>
                    <li class="list">
                       <a href="modify.do" class="btn btn-solid-border w-100">회원 정보 관리</a>
                    </li>
                     <li class="list">
                      <a href="#" class="btn btn-solid-border w-100">글 관리</a>
                    </li>
                    <li class="list">
                      <a href="signout.do" class="btn btn-main w-100">회원탈퇴</a>
                    </li>
                 </ul>
              </div>
            </aside>
            </div>
          <!-- 사이드 닫음 -->
        <div class="col-md-9">
          <div class="block text-center w-50">
            <h2 class="text-center">비밀번호 변경</h2>
            <form class="text-left clearfix" action="userUpdate.do">
            <div class="col-md-12">
              <div class="form-group col-md-6">
                <h4>현재 비밀번호</h4>
                <input type="password" name="user_pass" class="form-control">
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group col-md-6">
                <h4>새로운 비밀번호</h4>
                <input type="password" name="new_pass" id="newpassword" class="form-control">
              </div>
            </div>
            <div class="col-md-12">
              <div class="form-group col-md-6">
                <h4>새 비밀번호 확인</h4>
                <input type="password" name="user_repass" id="repassword" class="form-control">
                <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
    			<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
              </div>
              <div class="col-md-12">
              <button type="submit" class="btn btn-primary">수정</button>
            </div>
            </div>
            </form>
          </div>
        </div>
  </section>

   


    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="../resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="../resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="../resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="../resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="../resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="../resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="../resources/plugins/slick/slick.min.js"></script>
    <script src="../resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="../resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>
    
    <script type="text/javascript">
    $('.form-control').focusout(function () {
        var pass = $("#newpassword").val();
        var pass1 = $("#repassword").val();
  
        if ( pass != '' && pass1 == '' ) {
            null;
        } else if (pass != "" || pass1 != "") {
            if (pass == pass1) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
    </script>


  </body>
  </html>