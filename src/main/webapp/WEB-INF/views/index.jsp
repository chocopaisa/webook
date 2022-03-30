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
<html lang="en">
  <head>
    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8" />
    <title>WEBOOK | 너와 나의 연결 고리</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Construction Html5 Template" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=5.0"
    />
    <meta name="author" content="Themefisher" />
    <meta name="generator" content="Themefisher Constra HTML Template v1.0" />

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />

    <!-- Themefisher Icon font -->
    <link rel="stylesheet" href="resources/plugins/themefisher-font/style.css" />
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css" />

    <!-- Animate css -->
    <link rel="stylesheet" href="resources/plugins/animate/animate.css" />
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="resources/plugins/slick/slick.css" />
    <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css" />

    <!-- bxslider -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="resources/css/style.css" />

    <style type="text/css">
	  .pr-2 {
		  padding-right: 20px;
	  }
	  .pl-2 {
		padding-left: 20px;
	  }
	  
		ul.top-menu {
			font-size : 20px;
		}
		.media-object{
			max-width: 150px;
			height: auto;
		}
		.product-best{
      height: 72px;
    }
    .slider .img {
      text-align: center;
      margin: auto;
    }
    </style>
  </head>

  <body id="body">
    <%@ include file="/WEB-INF/views/header.jsp" %> 
    

    <!-- 광고 배너 -->

    <div class="slider">
      <div><img src="resources/images/banner1.jpg" class='img'></div>
      <div><img src="resources/images/banner1.jpg" class='img'></div>
      <div><img src="resources/images/banner1.jpg" class='img'></div>
    </div>
    
    <!-- 광고 배너 끝 -->

	<!-- 한줄평 -->
<section>
	<div class="container">
		<div class="row">
		<div class="title text-center">
			<a href="#"><h2>Review</h2></a>
			<hr/>
		</div>
	</div>
		<div class="row" id="reviews">
			<!-- 리뷰 들어갈 자리 -->
			
      <!-- 한 묶음 -->
      <div class="col-md-4">
        <div class="media">
        <a class="pull-left" href="#">
        <img class="media-object" src="http://image.kyobobook.co.kr/images/book/xlarge/188/x9791161571188.jpg" alt="Image">
        </a>
        <div class="media-body">
        <h4 class="media-heading"><a href="#">불편한 편의점(40만부 기념 벚꽃 에디션)</a></h4>
        <h4 class="review-star"><span class="star"> 3</span></h4><hr/>
        <div><p>재밌어요</p></div>
        <div class="text-right align-text-bottom">
        <a href="#"><p>김밥집</p></a></div></div></div></div>
        <!-- 한묶음 끝-->
        <!-- 리뷰끝 -->
		</div>
	</div>
</section>
<!-- 한줄평 끝-->

	<!-- 상품목록 -->
    <section class="products section">
      <div class="container">
        <div class="row">
          <div class="title text-center">
            <h2>Best Seller</h2>
          </div>
        </div>
        <div class="row" id="bestseller">
          <!-- 베스트 셀러 -->
          <!-- 한묶음 -->
          <div class="col-xs-4 col-md-2">
          <div class="product-item">
          <div><h3>1</h3></div>
          <div class="product-thumb">
          <img class="img-responsive" src="http://image.kyobobook.co.kr/images/book/xlarge/188/x9791161571188.jpg" alt="product-img"/>
          <div class="preview-meta bg-gray">
          <h4><a href="#">김호연</a></h4>
          </div></div>
          <div class="product-content product-best">
          <h4><a href="product-single.html">불편한 편의점(40만부 기념 벚꽃 에디션)'</a></h4>
          <p class="price money">12600</p>
          </div></div></div>
          <!-- 한묶음 끝-->
          <!-- 베스트셀러끝-->
        </div>
      </div>
    </section>
<!-- / 상품목록 -->

    <%@ include file="/WEB-INF/views/footer.jsp" %> 

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

    <!-- bxslider -->
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="resources/plugins/google-map/gmap.js"></script>
      <!-- 구글 북스 -->
    <script type="text/javascript" src="https://www.google.com/books/jsapi.js"></script>

    <!-- Main Js File -->
    <script src="resources/js/script.js"></script>
    <script>
      // bx슬라이더
      $(document).ready(function(){
        $('.slider').bxSlider({
          mode: 'fade'
        });
      });
    </script>
    <script>
      

      // 리뷰 별점에 따라 만들기
      $('.review-star').each(function(){
        const stars = $(this).text().trim() * 2;
        console.log(stars);
        let result = "";
        if(stars%2 == 0){
          
          for(let i=0; i< stars/2; i++){
            result += "<i class='tf-ion-ios-star'></i>";
          }
          for(let i=0; i < 5-(stars/2); i++){
            result += '<i class="tf-ion-ios-star-outline"></i>';
          }
        } else {
          for(let i=0; i< stars/2 -1; i++){
            result += "<i class='tf-ion-ios-star'></i>";
          }
          result += "<i class='tf-ion-ios-star-half'></i>";
          
          for(let i=0; i < 5-(stars/2)-1; i++){
            result += '<i class="tf-ion-ios-star-outline"></i>';
          }
        }
        $(this).prepend(result);

        
      });
      
    </script>

    <script>
      // 가격 콤마, 원 붙이기
      $('.money').each(function(){
        $(this).text(Number($(this).text()).toLocaleString() + '원')
      })
          
    </script>
    <script>
      // 카카오 책검색
      $('#total-search-frm').submit(function(){
        const qry = $(this).children("#total-search").val();
        
        $.ajax({
          method: "GET",
          url: "https://dapi.kakao.com/v3/search/book?target=title",
          data: { query: qry },
          headers: { Authorization: "KakaoAK b11bca68e657972c0a2a198bd8780dec" },
        }).done(function (msg) {
          alert("Data Saved: " + msg);
          console.log(msg);
        });
        
      });
      
    </script>

  </body>
</html>
    