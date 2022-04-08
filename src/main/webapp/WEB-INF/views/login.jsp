<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<html lang="en">
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
  <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />
  
  <!-- Themefisher Icon font -->
  <link rel="stylesheet" href="resources/plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="resources/plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="resources/css/style.css">
	
	<style type="text/css">
	.loginBtns > button, #btnAccount {
		color:white;
		width : 120px;
	
	}
	
	</style>
</head>

<body id="body">

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="block text-center">
          <a class="logo" href="index.html">
          <h1>WEBOOK</h1>
          </a>
          <h2 class="text-center">로그인</h2>
          <form class="text-left clearfix" action="checkLogin.do" >
            <div class="form-group">
              <input type="text" name="user_email" id="email" class="form-control"  placeholder="Email">
            </div>
            <div class="form-group">
              <input type="password" name="user_pass" id="password" class="form-control" placeholder="Password">
        	   <c:if test="${fail ne null}">
        	   <div class="alert alert-danger alert-common" role="alert" id="alert-danger" style= "width:100%"><i class="tf-ion-close-circled"></i>
        	   <div>아이디 또는 비밀번호가 일치하지 않습니다. 입력하신 내용을 다시 확인해주세요.</div>
        	   </div>
        	   </c:if>
            </div>
            <div class="text-center loginBtns">
              <a href="join.do" class="btn btn-main text-right" id="btnAccount">회원가입</a>
              <button type="submit" class="btn btn-main text-center" id="Submit" >로그인</button>
            </div>
          </form>
          <p class="mt-20">
              <a href="emailfind.do">아이디를 잊으셨나요?</a></p>
        </div>
      </div>
    </div>
  </div>
</section>

    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="resources/plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="resources/plugins/slick/slick.min.js"></script>
    <script src="resources/plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
	
	<script type="text/javascript">
	$(function(){
		$("#Submit").click(function(){ //아이디, 비밀번호 공백일때
			var id = $("#email").val();
			var pass = $("#password").val();
			
			if(id == "" && pass =="") { //비밀번호만 공백일 때
			  $("#email").focus();
			  return false;
			} else if(pass==""){
			  $("#password").focus();
			  return false;
			} else if(id =="" && pass != "") { // 아이디만 공백일 때
			  $("#email").focus();
			  return false;
			}
		}); // end of (#Submit 버튼)
	})
	</script>    


  </body>
  </html>