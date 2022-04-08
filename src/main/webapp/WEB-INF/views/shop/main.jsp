<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet"
	href="../resources/plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="../resources/plugins/bootstrap/css/bootstrap.min.css">

<!-- Animate css -->
<link rel="stylesheet" href="../resources/plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="../resources/plugins/slick/slick.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">

<!-- bxslider -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

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
	font-size: 20px;
}

.media-object {
	max-width: 150px;
	height: auto;
}

#navbar>div {
	display: inline-block;
}

.slider .img {
	text-align: center;
	margin: auto;
}
.best-desc {
	vertical-align: bottom;
}
.product-item .product-content .mb-1 {
	margin-bottom: 10px;
}

.recommend {
	display: table;
}
.recommend div {
	display: table-cell;
	vertical-align: middle
}
</style>

</head>

<body id="body">

	<!-- Start Top Header Bar -->
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<%@ include file="/WEB-INF/views/shop/shopheader.jsp"%>

	<!-- 광고 배너 끝 -->
<section class="call-to-action bg-gray section" style="background-color: white; padding-top: 10px; padding-bottom: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<form action="shop_search.do" >
					<div class="col-lg-6 col-md-offset-3">
						<div class="input-group subscription-form">
						
						
						  <input type="text" class="form-control" placeholder="도서를 검색하세요"  name="searchKeyword">
						  <span class="input-group-btn">
							<button class="btn btn-main" type="submit"><i class="tf-ion-ios-search-strong" style="size: 50px;"></i></button>
						  </span>
						  
						  
						</div><!-- /input-group -->
				  </div><!-- /.col-lg-6 -->
				</form>
				</div>
			</div> 		<!-- End row -->
		</div>   	<!-- End container -->
	</section>   <!-- End section -->



	<!-- 광고 배너 -->

	<div class="slider">
		<div>
			<img src="../resources/images/banner1.jpg" class='img'>
		</div>
		<div>
			<img src="../resources/images/banner2.jpg" class='img'>
		</div>
		<div>
			<img src="../resources/images/banner3.jpg" class='img'>
		</div>
	</div>


	
	<!-- 상품목록 -->
	<section class="products section">
		<div class="container">
			<div class="row">
				<div class="title text-center">
					<h2>Best</h2>
					<hr />
				</div>
			</div>
			<!-- 베스트 셀러 -->
			<div class="col-md-8 best-div">
				<h3 class="text-center">BestSeller</h3>
				<div id="bestseller">

					<c:forEach items="${bestSellers}" var="bs">
						<!-- 한묶음 -->
						<div>
							<div class="product-item">
								
								<div class="col-xs-3 col-xs-offset-1">
									<a href="product_single.do?product_no=${bs.product_no }"><img class="img-responsive bestseller-img"
										src="${bs.product_image }" alt="product-img" />
									</a>
								</div>
								<div class="product-content product-best col-xs-7 text-left">
								<div>
									<h3 class="text-left"><a
											href="product_single.do?product_no=${bs.product_no }">${bs.product_name }</a></h3>
								</div>
								
									<h4 class="text-left mb-1">
									<a href="shop_search.do?searchKeyword=${bs.product_writer }">${bs.product_writer }</a>
									/
									<a href="shop_search.do?searchKeyword=${bs.product_publisher }">
									${bs.product_publisher }</a>
									</h4>
								
									<p class="text-left best-desc">${bs.product_desc }</p>
								</div>
							</div>
						</div>
						<!-- 한묶음 끝-->
					</c:forEach>
				</div>
			</div>
			<!-- 베스트 셀러 끝 -->
			<!-- 추천 -->
			<div class="col-md-4 col-sm-6 col-xs-6 best-div">
			<h3 class="text-center">Recommend</h3>
			<hr/>
			<div class="recommend">
			
		      <div class="product-item col-md-12 col-xs-12">
		      	
								
								<div class="col-xs-6">
								<a href="product_single.do?product_no=9791191056372">
									<img class="img-responsive reco-img"
										src="http://image.kyobobook.co.kr/images/book/xlarge/372/x9791191056372.jpg" alt="product-img" />
									</a>
								</div>
								<div class="product-content product-best col-xs-6 text-left">
								<div>
									<h3 class="text-left"><a
											href="product_single.do?product_no=9791191056372">재밌다!</a></h3>
											<h4 class="review-star text-left mb-1"> 5.0</h4>
								</div>
									
									<a href="product_single.do?product_no=9791191056372"><h4 class="text-left mb-1">돈의 심리학</h4></a>
								</div>
								
							</div>
	          
			</div>
			</div>
			<!-- 추천 끝 -->
			<!-- 추천 -->
			<div class="col-md-4 col-sm-6 col-xs-6 best-div">
			<h3 class="text-center">MD Pick!</h3>
			<hr/>
			<div class="recommend">
			
		      <div class="product-item col-md-12 col-xs-12">
		      	
								
								<div class="col-xs-6">
									<img class="img-responsive reco-img"
										src="http://image.kyobobook.co.kr/images/book/xlarge/275/x9791168030275.jpg" alt="product-img" />
									
								</div>
								<div class="product-content product-best col-xs-6 text-left">
								<div>
									<h3 class="text-left"><a
											href="product_single.do?product_no=9791168030275">강지혜 픽!</a></h3>
											<h4 class="review-star text-left mb-1"> 5.0</h4>
								</div>
									
									<h4 class="text-left">술꾼도시여자들</h4>
								</div>
								
							</div>
	          
			</div>
			</div>
			<!-- 추천 끝 -->
			<!-- 화제의 책 -->
			<div class="col-md-8 col-sm-12 col-xs-12 best-div">
				<h3 class="text-center">Issue</h3>
				<hr/>
				<div id="bestseller">

					<c:forEach items="${issueItems}" var="item">
        
          <!-- 베스트 셀러 -->
          <!-- 한묶음 -->
          
	        
	         
		      	<div class="col-xs-3">
	          <div class="product-item">
	          <div class="product-thumb">
	          <img class="img-responsive issue-img" src="${item.product_image}" alt="product-img"/>
	          <div class="preview-meta bg-gray">
	          <h4><a href="product_single.do?product_no=${item.product_no }">${item.product_writer}</a></h4>
	          </div></div>
	          <div class="product-content product-best">
	          <h4><a href="product_single.do?product_no=${item.product_no }">${item.product_name}</a></h4>
	          <p class="price money">${item.product_price }</p>
	          </div>
	          </div>
	          </div>
	          
          
          <!-- 한묶음 끝-->
          <!-- 베스트셀러끝-->
        
        	
        </c:forEach>
				</div>
			</div>
			<!-- 화제의 책 끝 -->
		</div>
	</section>
	<!-- / 상품목록 -->

	<section class="product-category section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<h2>CATEGORY</h2>
						<hr />
					</div>
				</div>
				<div class="col-sm-6 col-md-6">
					<div class="category-box category-box-2">
						<a href="shop_korean.do?genre_no=210050"> <img src="${manhwa.product_image }" alt="" />
							<div class="content bg-gray">
								<h3>만화</h3>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="category-box">
						<a href="shop_korean.do?genre_no=100"> <img src="${novel.product_image }" alt="" />
							<div class="content bg-gray">

								<h3>소설</h3>
							</div>
						</a>
					</div>
					<div class="category-box">
						<a href="shop_korean.do?genre_no=110"> <img src="${poem.product_image }" alt="" />
							<div class="content bg-gray">
								<h3>시</h3>
							</div>
						</a>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="category-box">
						<a href="shop_korean.do?genre_no=210"> <img src="${art.product_image }" alt="" />
							<div class="content bg-gray">
								<h3>예술</h3>
							</div>
						</a>
					</div>
					<div class="category-box">
						<a href="shop_korean.do?genre_no=270"> <img src="${trip.product_image }" alt="" />
							<div class="content bg-gray">
								<h3>여행</h3>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>




	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="../resources/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="../resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstrap Touchpin -->
	<script
		src="../resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script src="../resources/plugins/instafeed/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script
		src="../resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script
		src="../resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

	<!-- slick Carousel -->
	<script src="../resources/plugins/slick/slick.min.js"></script>
	<script src="../resources/plugins/slick/slick-animation.min.js"></script>

	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="../plugins/google-map/gmap.js"></script>

	<!-- bxslider -->
	<script
		src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	<!-- Main Js File -->
	<script src="../resources/js/script.js"></script>
	<script>
		// bx슬라이더
		$(document).ready(function() {
			$('.slider').bxSlider({
				mode : 'fade'
			});
		});
		$(document).ready(function() {
			$('#bestseller').bxSlider({
				auto : true,
				pager : false,
				controls : true,
				autoControls : false,
				moveSlides : 1,
				autoHover : true,
				responsive : false,
				touchEnabled : false
			});
		});
		
		
	</script>
	<script>
		// 가격 콤마, 원 붙이기
		$('.money').each(function() {
			$(this).text(Number($(this).text()).toLocaleString() + '원')
		})
	</script>
	<script>
		// 베스트 셀러 이미지 크기 조정
		$(function() {
			bestImgResize()
			issueImgResize()
			bestDivResize();
			
		});

		$(window).resize(function() {
			bestImgResize();
			issueImgResize();
			bestDivResize();
			
		});
		
		
		$('.best-desc').each(function(){
			const txt = $(this).text();
			if(txt.length > 100){
				$(this).text(txt.substring(0,100) + '...');
			}
		})
		function bestImgResize() {
			const imgWidth = $('.bestseller-img').width();
			$('.bestseller-img').height(imgWidth * 1.48);
		}
		function issueImgResize() {
			let imgWidth = $('.issue-img').width();
			$('.issue-img').height(imgWidth * 1.48);
		}
		
		function bestDivResize(){
			const divHeight = $('.best-div').height();
			$('.best-div').height(divHeight);
		}
		
		function recoImgResize(){
			const imgWidth = $('.reco-img').width();
			$('.reco-img').height(imgWidth * 1.48);
		}
		
	</script>
	<script>
	$('.review-star').each(function(){
        const stars = $(this).text().trim() * 2;
        console.log(stars);
        let result = "";
        const starCnt = Math.floor(stars/2)
        if(Math.floor(stars%2) == 0){
          
          for(let i=0; i< starCnt; i++){
            result += "<i class='tf-ion-ios-star'></i>";
          }
          for(let i=0; i < 5-starCnt; i++){
            result += '<i class="tf-ion-ios-star-outline"></i>';
          }
        } else {
          for(let i=0; i< starCnt; i++){
            result += "<i class='tf-ion-ios-star'></i>";
          }
          result += "<i class='tf-ion-ios-star-half'></i>";
          
          for(let i=0; i < 5-starCnt; i++){
            result += '<i class="tf-ion-ios-star-outline"></i>';
          }
        }
        $(this).prepend(result);

        
      });
	</script>

</body>
</html>
