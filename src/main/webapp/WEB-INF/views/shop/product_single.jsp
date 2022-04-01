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
  <title>WEBOOK | 상품 상세보기</title>

  <!-- Mobile Specific Metas
  ================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Constra HTML Template v1.0">
  
  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
  
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

.productDescImage{
	width: 50px;
}  


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

</style> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>

<script src="shop-total.js"></script> <!--********************** 자바스크립트 파일 옮기고 경로 다시 설정********************** -->
</head>

<body id="body">
<!-- Start Top Header Bar -->
<%@ include file="/WEB-INF/views/header.jsp" %>

<%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>
<!-- end Header Bar -->


<section class="single-product">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li><a href="shop.html">Shop</a></li>
					<li class="active">community</li>
				</ol>
			</div>
			
		</div>
		<div class="row mt-20">
			<div class="col-md-5">
				<div class="single-product-slider">
					<div id='carousel-custom' class='carousel slide' data-ride='carousel'>
						<div class='carousel-outer'>
		<!--************************************** me art lab slider 슬라이더 없이 사진만 나오게 수정********************************* -->
							<div class='carousel-inner '>
								<div class='item active'>
									<img src='${product.product_image }'  />
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
					<p class="productWriter">${product.product_writer }</p><hr/>
					<p class="productPublisher">${product.product_publisher }</p> <br/>
					<p class="product-price" style="font-weight:bolder;"> 정가 : ${product.product_price }</p>
					<p class="product-price" style="font-weight:bolder; font-size: larger;"> 할인가 : ${product.product_sale }</p><br/>
					<p class="product-price" style="color: black; font-size: small;"> 배송비 : 3000원</p>
					
					
					<div class="product-quantity">
						<span>Quantity :  </span>
						<div class="product-quantity-slider">
							<input id="product-quantity" type="text" value="0" name="product_cnt">
							<input name="product_no" hidden value="${product.product_no }">
						</div>
						</div>
					</div>
				
					
					<button type="button" class="btn btn-main mt-20" id="addCart" style="font-size: large;" >장바구니</button> <!-- -> 버튼으로 바꾸기 -->
					<button type="submit" class="btn btn-main mt-20" style="font-size: large;">바로 구매</button> 
				</form>
			</div>
		</div>
		
		
		<br/>
		
	
<!--*************************리뷰 **********************************-->

		<div class="row">
			<div class="col-md-12">
				<div class="tabCommon mt-20">
					<ul class="nav nav-tabs">
						<li class="active"><a data-toggle="tab" href="#details" aria-expanded="true">Details</a></li>
						<li class="active2"><a data-toggle="tab" href="#reviews" aria-expanded="false">Reviews</a></li>
					</ul>
					<div class="tab-content patternbg">
						<div id="details" class="tab-pane fade active in">
							<h4>Product Description</h4>
							<p>${product.product_desc }</p>
						</div>

						<div id="reviews" class="tab-pane fade">
							<div class="post-comments">
						    	<ul class="media-list comments-list m-bot-50 clearlist">
								    <!-- Comment Item start-->
								    <li class="media">

								       

								        <div class="media-body">
								            <div class="comment-info">
								                <h4 class="comment-author">
								                    <a href="#!">Jonathon Andrew</a>
								                	
								                </h4>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#!">
													<h6><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
					3.5</h6>
												</a>
								            </div>

								            <p>
								                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at magna ut ante eleifend eleifend.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod laborum minima, reprehenderit laboriosam officiis praesentium? Impedit minus provident assumenda quae.
								            </p>
								        </div>

								    </li>
								    <!-- End Comment Item -->

								    <!-- Comment Item start-->
								    <li class="media">

								      

								        <div class="media-body">

								            <div class="comment-info">
								                <div class="comment-author">
								                    <a href="#!">Jonathon Andrew</a>
								                </div>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#!">

												</h4>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#!">
													<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
														3.5</h4>
												</a>
								            </div>

								            <p>
								                ipsum dolor sit amet, consectetur adipisicing elit. Magni natus, nostrum iste non delectus atque ab a accusantium optio, dolor!
								            </p>

								        </div>

								    </li>
								    <!-- End Comment Item -->

								    <!-- Comment Item start-->
								    <li class="media">

								       

								        <div class="media-body">

								            <div class="comment-info">
								                <div class="comment-author">
								                    <a href="#!">Jonathon Andrew</a>
								                </div>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#!">
												</h4>
								                <time datetime="2013-04-06T13:53">July 02, 2015, at 11:34</time>
								                <a class="comment-button" href="#!">
													<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
														3.5</h4>
												</a>
								            </div>

								            <p>
								                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at magna ut ante eleifend eleifend.
								            </p>

								        </div>

								    </li>
							</ul>
							</div>
						</div>
					</div>
<!-- *************************** 리뷰 이동 버튼******************-->
					

<!-- *************************** 책 상세 이미지******************-->

					<div>
						<p class="productDescImage"><img class="main" src="${product.product_desc_image }"   style="width:1000px; height:1000px;"/></p>	
					</div>

				</div>	
			</div>
		</div>
	
	<!--  ******************  독후감   ****************************-->
<%-- 	
	<c:forEach items="community" var="commu">
<div class="bookreport" style="margin-top: 30px;">
	<div class="tabCommon mt-20">
		<div class="tab-content patternbg" style="width: 1140px;">
	
		<div class="boardtitle">
			<p>${commu.bookreport_title}</p> <hr/>
		</div>
		<div class="boardcontent">
			<p>${commu.bookreport_content }</p>
		</div>
		<div class="boardwriter">
			<p style="font-size: smaller; font-weight: 700;">${commu.user_name }</p>
		</div>
		</div>	
	</div>
	
	</div>
	
	</c:forEach>
	 --%>
	
	
	
	
	
	
</section>

	
<section class="products related-products section">

	<div class="container">
	
		<div class="row">
			<div class="title text-center">
				<h2>OTHER Products</h2>
			</div>
		</div>
		
		
		
		<div class="row"><c:forEach items="${ products2}" var="products">
			<div class="col-xs-3">
				<div class="product-item">
				
					<div class="product-thumb">
					
						<img class="img-responsive" src="${products.product_image }" alt="product-img" />
						<div class="preview-meta">
							<ul>
								<li>
									<span  data-toggle="modal" data-target="#product-modal">
										<i class="tf-ion-ios-search"></i>
									</span>
								</li>
								
								<li>
									<a href="#!"><i class="tf-ion-android-cart"></i></a>
								</li>
							</ul>	
                      	</div>
                      		
					</div>
					
					<div class="product-content">
						<h4><a href="product-single.html">${products.product_name }</a></h4>
						<p class="price">${products.product_price}원</p>
					</div>
					
				</div>
			</div>
		</c:forEach>	</div>
			
		
	</div>
	

			
</section>



<!-- Modal 없앰-->

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

    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>
    
<script src="../resources/js/shop-total.js"></script>

  </body>
  </html>