<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
<title>WEBOOK | 상품 상세보기</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

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

<!-- Main Stylesheet -->
<link rel="stylesheet" href="../resources/css/style.css">

<style>
.single-product-details {
	height: 370px;
}

.tabCommon .nav-tabs {
	margin-top: 100px;
}

.productDescImage {
	margin-top: 100px;
}

.productDescImage {
	width: 50px;
}

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

.img-responsive {
	max-height: 360px;
	margin-top: 30px;
}

#details p{
white-space: pre-wrap;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>

<script src="shop-total.js"></script>
<!--********************** 자바스크립트 파일 옮기고 경로 다시 설정********************** -->
</head>

<body id="body">
	<!-- Start Top Header Bar -->
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<%@ include file="/WEB-INF/views/shop/shopheader.jsp"%>
	<!-- end Header Bar -->


	<section class="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><a href="main.do">Home</a></li>
						<li>Shop</li>
						
					</ol>
				</div>

			</div>
			<div class="row mt-20">
				<div class="col-md-5">
					<div class="single-product-slider">
						<div id='carousel-custom' class='carousel slide'
							data-ride='carousel'>
							<div class='carousel-outer'>
								<!--************************************** me art lab slider 슬라이더 없이 사진만 나오게 수정********************************* -->
								<div class='carousel-inner '>
									<div class='item active'>
										<img style="max-height: 550px; margin-right: 10px;" src='${product.product_image }' />
									</div>
								</div>
								<!-- sag sol 없앰 -->
							</div>
							<!-- thumb 없앰 -->
						</div>
					</div>
				</div>
				<div class="col-md-7">

					<form action="payment.do" method="get" id="frm">
						<div class="single-product-details">
							<h2>${product.product_name }</h2>
							<p class="productWriter">${product.product_writer } 지음   |   ${product.product_publisher } | ${product.product_date } 출간</p>
							<hr />
							
							<br />
							
							<p class="product-price" style="font-weight: bolder;">정가 :
								<fmt:formatNumber value="${product.product_price }" pattern="#,###" />원</p>
								
							<p class="product-price"
								style="font-weight: bolder; font-size: larger;">할인가 :
								${product.product_sale }원</p>
								<p class="product-price" style=" font-size:large;">
								 판매가 : ${product.product_lang }원</p>
							<br />
							<p class="product-price" style="color: black; font-size: small;">
								배송비 : 3000원</p>
							


							<div class="product-quantity" style="margin-top: 80px;">
								<span>Quantity : </span>
								<div class="product-quantity-slider">
									<input id="product-quantity" type="text" value="1"
										name="product_cnt"> <input name="product_no" hidden
										value="${product.product_no }">
								</div>
							</div>
						</div>

						<div style="margin-top: 80px;">
						<button type="button" class="btn btn-main mt-20" id="addCart"
							style="font-size: large;">장바구니</button>
						<!-- -> 버튼으로 바꾸기 -->
						<button type="submit" class="btn btn-main mt-20"
							style="font-size: large;">바로 구매</button>
						</div>	
					</form>
				</div>
			</div>


			<br />


			<!--*************************리뷰 **********************************-->

			<div class="row">
				<div class="col-md-12">
					<div class="tabCommon mt-20">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#details"
								aria-expanded="true">Details</a></li>
							<li class="active2"><a data-toggle="tab" href="#reviews"
								aria-expanded="false">Reviews</a></li>
						</ul>

						<!-- *************************** 리뷰 이동 버튼******************-->

						<div class="tab-content patternbg">
							<div id="details" class="tab-pane fade active in">
								<h4>Product Description</h4>
								
								<p>${product.product_desc }</p>
							</div>

							<div id="reviews" class="tab-pane fade">
							
						<c:if test="${ reviews.isEmpty()}">
							<h4 style="text-align: center; ">작성된 한줄평이 없습니다. </h4>
							<div class="text-center">
				<a class="btn btn-main btn-small btn-round" href="../community/write.do"
				 style="text-align: center; width: 300px; height:40px; font-size: 15px;"> 글 작성하러 가기</a>
			</div>
						</c:if>
					
								<c:forEach items="${reviews}" var="review">

									<div class="bookreport" style="margin-top: 30px;">

										<div class="tabCommon mt-20">
											<div class="">

												<div class="boardtitle">
													<h4>${review.BOOKREPORT_TITLE}</h4>
													<h6 class="review-star">
														<span class="star"> ${review.STAR }</span>

													</h6>
													<hr />
												</div>
												<div class="boardcontent">
													<p>${review.BOOKREPORT_CONTENT }</p>
												</div>
												<div class="boardwriter">
													<p align="right" style="font-size: smaller; font-weight: 700;">${review.USER_NAME}</p>
												</div>

												</div>
											</div>

										</div>

									</c:forEach>
							
							</div>
						

							<!--  ******************  독후감   ****************************-->

						</div>
					</div>
					


				</div>
			</div>
	</section>

<!--  관련 장르 도서  -->
	<section class="products related-products section">

		<div class="container">

			<div class="row">
				<div class="title text-center">
					<h2>OTHER Products</h2>
				</div>
			</div>


			<div class="row">
			
				<c:forEach items="${ result}" var="products">
					<div class="col-xs-3">
						<div class="product-item">

							<div class="product-thumb">

								<img class="img-responsive" src="${products.product_image }"
									alt="product-img" />
								<div class="preview-meta">
									<ul>
										<li><a
											href="product_single.do?product_no=${products.product_no }"><i
												class="tf-ion-ios-search"></i></a></li>

										<li><a
											href="addCart.do?product_no=${products.product_no }"><i
												class="tf-ion-android-cart"></i></a></li>
									</ul>
								</div>

							</div>

							<div class="product-content">
								<h4>
									<a href="product_single.do?product_no=${products.product_no }">${products.product_name }</a>
								</h4>
								<p class="price"><fmt:formatNumber value="${product.product_price }" pattern="#,###" />원</p>
								
							</div>

						</div>
					</div>
				</c:forEach>
			</div>


		</div>



	</section>



	<!-- footer -->

	<%@ include file="/WEB-INF/views/footer.jsp" %>
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

	<!-- Main Js File -->
	<script src="../resources/js/script.js"></script>

	<script src="../resources/js/shop-total.js"></script>
	<script>
		// 리뷰 별점에 따라 만들기
		$('.review-star').each(function() {
			const stars = $(this).text().trim() * 2;
			console.log(stars);
			let result = "";
			if (stars % 2 == 0) {

				for (let i = 0; i < stars / 2; i++) {
					result += "<i class='tf-ion-ios-star'></i>";
				}
				for (let i = 0; i < 5 - (stars / 2); i++) {
					result += '<i class="tf-ion-ios-star-outline"></i>';
				}
			} else {
				for (let i = 0; i < stars / 2 - 1; i++) {
					result += "<i class='tf-ion-ios-star'></i>";
				}
				result += "<i class='tf-ion-ios-star-half'></i>";

				for (let i = 0; i < 5 - (stars / 2) - 1; i++) {
					result += '<i class="tf-ion-ios-star-outline"></i>';
				}
			}
			$(this).prepend(result);

		});
	</script>

</body>
</html>