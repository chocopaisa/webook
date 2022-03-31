<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
  <title>WEBOOK | 너와 나의 연결 고리</title>

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
  
  <!-- bxslider -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="../resources/css/style.css">

<style type="text/css">
	.pl-2 {
		padding-left: 20px;
	}
	.pr-2 {
		padding-right: 20px;
	}
	ul.top-menu {
		font-size : 20px;
	}
	.media-object{
		max-width: 150px;
		height: auto;
	}
	#navbar > div {
		display: inline-block;
	}
	.slider .img {
      text-align: center;
      margin: auto;
    }
    .product-item {
    	height : 370px;
    }
</style>

</head>

<body id="body">

<!-- Start Top Header Bar -->
<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>




<!-- 광고 배너 -->

    <div class="slider">
      <div><img src="../resources/images/banner1.jpg" class='img'></div>
      <div><img src="../resources/images/banner1.jpg" class='img'></div>
      <div><img src="../resources/images/banner1.jpg" class='img'></div>
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
		<div class="row">
			<div class="col-md-4">
			<div class="media">
					<a class="pull-left" href="#!">
						<img class="media-object" src="images/book1.jpg" alt="Image">
					</a>
				<div class="media-body">
					<h4 class="media-heading"><a href="#">책 제목</a></h4>
					<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
					3.5</h4>
					<hr/>
					<div class="">
					<p>대충 재밌다는 내용</p>
					</div>
					<div class="text-right">
					<a href="#"><p>글쓴이</p></a>
				</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="media">
					<a class="pull-left" href="#!">
						<img class="media-object" src="images/book1.jpg" alt="Image">
					</a>
				<div class="media-body">
					<h4 class="media-heading"><a href="#">책 제목</a></h4>
					<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
					3.5</h4>
					<hr/>
					<div class="">
					<p>대충 재밌다는 내용 대충 재밌다는 내용 대충 재밌다는 내용 대충 재밌다는 내용</p>
					</div>
					<div class="text-right">
					<a href="#"><p>글쓴이</p></a>
				</div>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="media">
					<a class="pull-left" href="#!">
						<img class="media-object" src="images/book1.jpg" alt="Image">
					</a>
				<div class="media-body">
					<h4 class="media-heading"><a href="#">책 제목</a></h4>
					<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
					3.5</h4>
					<hr/>
					<div class="">
					<p>대충 재밌다는 내용</p>
					</div>
					<div class="text-right">
					<a href="#"><p>글쓴이</p></a>
				</div>
				</div>
			</div>
		</div>
		
		</div>
		<hr/>
		<div class="text-center">
			<a href='#' class="btn btn-main btn-small btn-round">더보기</a>
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
        <div id="bestseller">
        <c:forEach var="idx" begin="0" end="4">
        
          <!-- 베스트 셀러 -->
          <!-- 한묶음 -->
          
	          <c:if test="${idx mod 5 eq 0 }">
	          
	          	<div class="col-xs-4 col-sm-4 col-md-2 col-md-offset-1">
	          </c:if>
	          <c:if test="${idx mod 5 ne 0 }">
		      	<div class="col-xs-4 col-sm-4 col-md-2">
		      </c:if>
	          <div class="product-item">
	          <div><h3>${idx + 1}</h3></div>
	          <div class="product-thumb">
	          <img class="img-responsive" src="${bestSellers[idx].product_image}" alt="product-img"/>
	          <div class="preview-meta bg-gray">
	          <h4><a href="#">${bestSellers[idx].product_writer}</a></h4>
	          </div></div>
	          <div class="product-content product-best">
	          <h4><a href="product-single.html">${bestSellers[idx].product_name}</a></h4>
	          <p class="price money">12600</p>
	          </div>
	          </div>
	          </div>
	          
          
          <!-- 한묶음 끝-->
          <!-- 베스트셀러끝-->
        
        	
        </c:forEach>
      </div>
      </div>
    </section>
<!-- / 상품목록 -->

<section class="product-category section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<h2>CATEGORY</h2>
					<hr/>
				</div>
			</div>
			<div class="col-sm-6 col-md-6">
				<div class="category-box category-box-2">
					<a href="#!">
						<img src="images/bookevent.png" alt="" />
						<div class="content">
							<h3>만화</h3>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="category-box">
					<a href="#!">
						<img src="images/ads1.png" alt="" />
						<div class="content">
							
							<h3>소설</h3>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="#!">
						<img src="images/bookevent.png" alt="" />
						<div class="content">
							<h3>시</h3>
						</div>
					</a>	
				</div>
			</div>
			<div class="col-sm-3 col-md-3">
				<div class="category-box">
					<a href="#!">
						<img src="images/bookevent.png" alt="" />
						<div class="content">
							<h3>예술</h3>
						</div>
					</a>	
				</div>
				<div class="category-box">
					<a href="#!">
						<img src="images/bookevent.png" alt="" />
						<div class="content">
							<h3>해외</h3>
						</div>
					</a>	
				</div>
			</div>
		</div>
	</div>
</section>


		</div>
	</div>
</section>




<footer class="footer section text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="social-media">
					<li>
						<a href="https://www.facebook.com/themefisher">
							<i class="tf-ion-social-facebook"></i>
						</a>
					</li>
					<li>
						<a href="https://www.instagram.com/themefisher">
							<i class="tf-ion-social-instagram"></i>
						</a>
					</li>
					<li>
						<a href="https://www.twitter.com/themefisher">
							<i class="tf-ion-social-twitter"></i>
						</a>
					</li>
					<li>
						<a href="https://www.pinterest.com/themefisher/">
							<i class="tf-ion-social-pinterest"></i>
						</a>
					</li>
				</ul>
				<ul class="footer-menu text-uppercase">
					<li>
						<a href="contact.html">CONTACT</a>
					</li>
					<li>
						<a href="shop.html">SHOP</a>
					</li>
					<li>
						<a href="pricing.html">Pricing</a>
					</li>
					<li>
						<a href="contact.html">PRIVACY POLICY</a>
					</li>
				</ul>
				<p class="copyright-text">Copyright &copy;2021, Designed &amp; Developed by <a href="https://themefisher.com/">Themefisher</a></p>
			</div>
		</div>
	</div>
</footer>

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
    <script type="text/javascript" src="../plugins/google-map/gmap.js"></script>

	<!-- bxslider -->
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>
    <script>
      // bx슬라이더
      $(document).ready(function(){
        $('.slider').bxSlider({
          mode: 'fade'
        });
      });
    </script>
    <script>
      // 가격 콤마, 원 붙이기
      $('.money').each(function(){
        $(this).text(Number($(this).text()).toLocaleString() + '원')
      })
          
    </script>
    <script>
		// 카트 ajax쓰기

	</script>


  </body>
  </html>
    