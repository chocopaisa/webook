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
  <title>WEBOOK | 아이디 찾기</title>

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

</head>

<body id="body">

<section class="signin-page account">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <form class="text-left clearfix" action="idfind.do" id="box" method="post"> 
        <div class="block text-center"><h1>
          <a class="logo" href="/webook/main.do">
            WEBOOK 
          </a></h1>
          <h2 class="text-center">아이디 찾기</h2>
            <p class="text-left">이름</p>
            <div class="form-group">
              <input type="text" name="user_name" class="form-control">
            </div>
            <p class="text-left">휴대전화</p>
            <div class="form-group text-center">
              <input type="tel" name="user_tel" class="form-control">
            </div>
              <button type="button" class="btn btn-main w-100" id="findbtn">아이디 찾기</button>
            </div>
          </form>
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
    <script src="resources/js/script.js"></script>
    
    <script type="text/javascript">
		$('#findbtn').click(function(){
			const formBox = $('#box');
			const user_name = formBox.find('input[name=user_name]').val();
			if(user_name == ''){
				alert('이름을 입력해주세요');
				return;
			}
			const user_tel = formBox.find('input[name=user_tel]').val();
			if(user_tel == ''){
				alert('전화번호를 입력해주세요');
				return;
			}
			$('#box').submit();
			
			
			
		});
		
		const userEmail = '${user_email}';
		
		if(userEmail != ''){
			alert(userEmail);
			console.log(userEmail);
		}
		
		const fail = '${check}';
		if(fail != ''){
			alert("해당 하는 아이디가 없습니다");
		}
    </script>

  </body>
  </html>