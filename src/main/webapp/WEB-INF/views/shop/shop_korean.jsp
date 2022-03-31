<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<title>WEBOOK | 국내상품목록</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
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
<!-- *************************쇼핑몰 상품 목록 내부  *********************************** -->
<style type="text/css">
table {
	width: 70%;
	margin-left: 15%;
	margin-right: 15%;
	height: 110px;
}

table, td, th {
	border-collapse: collapse;
}
;

/* */
 .price{
 position: absolute;
  top:12.5px;
  left:12.5px;
  }
  
  .product-content{

	height: 390px;
  }

/*상품 리스트 책 상세설명 내용 많으면 ... 처리*/
  .productDesc{
	overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3; /* 라인수 */
    -webkit-box-orient: vertical;
    word-wrap:break-word; 
    line-height: 1.2em;
    height: 3.6em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
  }
  .productTitle{
	overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1; /* 라인수 */
    -webkit-box-orient: vertical;
    word-wrap:break-word; 
    line-height: 1.2em;
    height: 1em; /* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
  }
  /*********** 상단바 **********/
	
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
	img{
	max-height:360px; }
</style>

</head>

<body id="body">

<!-- Start Top Header Bar -->
<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>
  <!-- End Top Header Bar -->


<!-- Main Menu Section 삭제-->

<!-- 검색어 입력 -->
	<section class="call-to-action bg-gray section" style="background-color: white; padding-top: 10px; padding-bottom: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					
					<div class="col-lg-6 col-md-offset-3">
						<div class="input-group subscription-form">
						  <input type="search" class="form-control" placeholder="도서를 검색하세요"  name="searchKeyword">
						  <span class="input-group-btn">
							<button class="btn btn-main" type="submit"><i class="tf-ion-ios-search-strong" style="size: 50px;"></i></button>
						  </span>
						</div><!-- /input-group -->
				  </div><!-- /.col-lg-6 -->
	
				</div>
			</div> 		<!-- End row -->
		</div>   	<!-- End container -->
	</section>   <!-- End section -->


	<section class="products section" style="padding-top: 20px;">
		<div class="container">
			<div class="row">

				<!-- ************************************장르 선택  *************************************************************** -->

				<div class="widget product-category" style="padding-bottom: 10px; margin-bottom: 20px;">

					<div class="panel-group commonAccordion" id="accordion"
						role="tablist" aria-multiselectable="true">
						<div class="panel panel-default">

							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body" >

									<table class="janre" 	style="text-align: center;"> 
										<tr>
											<td>

												<ul class="dropdown">
													<li class=""><a href="shop_korean.do?genre_no=100">소설</a>
														</li>
												</ul>
											</td>

											<td>

												<ul class="dropdown">
													<li>
													<a href="shop_korean.do?genre_no=120">인문</a>
														</li>
												</ul>
											</td>
											<td>
												<ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=110">국내 시 </a>
														</li>
												</ul>
											</td>
											<td>
												<ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=180">정치/사회</a>
														</li>
												</ul>
											</td>
											<td><ul class="dropdown">
													<li ><a href="shop_korean.do?genre_no=">경제/경영</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li ><a href="shop_korean.do?genre_no=190">역사.문화</a>
														

														</li>
												</ul></td>
										</tr>

										<tr>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=210">예술</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=12">종교</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=">교양과학</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=">만화</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=">자기계발</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li><a href="shop_korean.do?genre_no=270">여행</a>
														</li>
												</ul></td>
										</tr>
									</table>


								</div>
							</div>
						</div>


					</div>

				</div>
</div></div></section>
			


				<!-- *************************************     상품 목록   (class, name)  *************************************** -->
				<section class="products section">
					<div class="container">
						<div class="row">
							<c:forEach items="${products}" var="product">
							<div class="col-xs-6">
							<div class="col-xs-6">
								<div class="product-item">
									<div class="product-thumb" >
										
										<img class="img-responsive"  src="${product.product_image }"  alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>												
														<a href="product_single.do?product_no=${product.product_no }"><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												
												<li>	
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-xs-6">
								<div class="product-content">
									<h4><a class="productTitle" href="product_single.do?product_no=${product.product_no }">${product.product_name }</a></h4>
									<p class="writer" style="font-size: smaller;">${product.product_writer}</p>
									<p class="price" style="font-weight: bolder;">${product.product_price }원</p><hr/>
									<p class="productDesc"  >${product.product_desc }</p>
								</div>
							</div>
							</div>
							</c:forEach>
				
				
				
				
				
							
						
						<!-- Modal -->
					<!-- /.modal -->
				
						</div>
					</div>
				</section>
				
<!-- ******************************페이징*******************-->
				<div class="text-center">
					<ul class="pagination post-pagination">
						<li><a href="#!">Prev</a>
						</li>
						<li class="active"><a href="#!">1</a>
						</li>
						<li><a href="shop_korean.do?pnum=2">2</a>
						</li>
						<li><a href="shop_korean.do?pnum=3">3</a>
						</li>
						<li><a href="shop_korean.do?pnum=4">4</a>
						</li>
						<li><a href="shop_korean.do?pnum=5">5</a>
						</li>
						<li><a href="#!">Next</a>
						</li>
					</ul>
				</div>


	<footer class="footer section text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<ul class="social-media">
						<li><a href="https://www.facebook.com/themefisher"> <i
								class="tf-ion-social-facebook"></i>
						</a></li>
						<li><a href="https://www.instagram.com/themefisher"> <i
								class="tf-ion-social-instagram"></i>
						</a></li>
						<li><a href="https://www.twitter.com/themefisher"> <i
								class="tf-ion-social-twitter"></i>
						</a></li>
						<li><a href="https://www.pinterest.com/themefisher/"> <i
								class="tf-ion-social-pinterest"></i>
						</a></li>
					</ul>
					<ul class="footer-menu text-uppercase">
						<li><a href="contact.html">CONTACT</a></li>
						<li><a href="shop.html">SHOP</a></li>
						<li><a href="pricing.html">Pricing</a></li>
						<li><a href="contact.html">PRIVACY POLICY</a></li>
					</ul>
					<p class="copyright-text">
						Copyright &copy;2021, Designed &amp; Developed by <a
							href="https://themefisher.com/">Themefisher</a>
					</p>
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
	<script
		src="../resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript" src="../resources/plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="../resources/js/script.js"></script>



</body>
</html>
