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

	height: 350px;
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
</style>

</head>

<body id="body">

<!-- Start Top Header Bar -->
<section class="top-header">
	<div class="container">
	  <div class="row">
		<div class="col-md-4 col-xs-12 col-sm-4">
		  <ul class="top-menu text-center list-inline">
			<li>
			  <div class="pr-2 pl-2">
				<h3><a href="#">도서</a></h3>
			  </div>
			</li>
			<li>
			  <div
				  class="pr-2 pl-2"
			  >
				<h3><a href="#">커뮤니티</a></h3>
			  </div>
			</li>
		  </ul>
		</div>
		<div class="col-md-4 col-xs-12 col-sm-4">
		  <!-- Site Logo -->
		  <div class="logo text-center">
			<a href="index.html">
			  <!-- replace logo here -->
			  <text id="WEBOOK"><h1>WEBOOK</h1></text>
			</a>
		  </div>
		</div>
		<div class="col-md-4 col-xs-12 col-sm-4">
		  <ul class="top-menu text-center list-inline">
			<li>
			  <div class="pr-2 pl-2">
				<h5><a href="#">로그인</a></h4>
			  </div>
			</li>
			<li class="dropdown">
			  <div class="pr-2 pl-2">
				<h5><a href="#" class="">고객센터</a></h4>
			  </div>
			</li>

			<!-- Search -->
			<li class="dropdown search dropdown-slide">
				<div class="pr-2 pl-2">
			  <h3>
				<a
				  href="#!"
				  class="dropdown-toggle"
				  data-toggle="dropdown"
				  data-hover="dropdown"
				  ><i class="tf-ion-ios-search-strong"></i
				></a>
			  </h3>
		  </div>
			  <ul class="dropdown-menu search-dropdown">
				<li>
					<div>
				  <form action="#">
					<input
					  id="total_search"
					  type="search"
					  class="form-control"
					  placeholder="Search..."
					/>
				  </form>
				  </div>
				</li>
				<li><div>검색목록 ...</div></li>
				<li><div>검색 목록 2</div></li>
				<li><div>검색 목록 2</div></li>
				<li><div>검색 목록 2</div></li>
				<li><div>검색 목록 2</div></li>
			  </ul>
			</li>
			<!-- / Search -->
		  </ul>
		  <!-- / .nav .navbar-nav .navbar-right -->
		</div>
	  </div>
	</div>
  </section>
  <!-- End Top Header Bar -->


<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">Main Menu</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>

			</div><!-- / .navbar-header -->

			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<!-- 네비 좌측 -->
				<ul class="nav navbar-nav">

					<!-- 국내도서 -->
					<li class="dropdown dropdown-slide">
						<a href="shop/shop_korean.do" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">국내도서 <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">	
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Pages</li>
										<li role="separator" class="divider"></li>
										<li><a href="shop.html">Shop</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="cart.html">Cart</a></li>
										<li><a href="pricing.html">Pricing</a></li>
										<li><a href="confirmation.html">Confirmation</a></li>

									</ul>
								</div>

								<!-- Layout -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Layout</li>
										<li role="separator" class="divider"></li>
										<li><a href="product-single.html">Product Details</a></li>
										<li><a href="shop-sidebar.html">Shop With Sidebar</a></li>

									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / 국내도서 -->


					<!-- 해외도서 -->
					<li class="dropdown dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">해외도서 <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Pages</li>
										<li role="separator" class="divider"></li>
										<li><a href="shop.html">Shop</a></li>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="cart.html">Cart</a></li>
										<li><a href="pricing.html">Pricing</a></li>
										<li><a href="confirmation.html">Confirmation</a></li>

									</ul>
								</div>

								<!-- Layout -->
								<div class="col-lg-6 col-md-6 mb-sm-3">
									<ul>
										<li class="dropdown-header">Layout</li>
										<li role="separator" class="divider"></li>
										<li><a href="product-single.html">Product Details</a></li>
										<li><a href="shop-sidebar.html">Shop With Sidebar</a></li>

									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / 해외도서 -->
					
				
				

				<!-- 네비 우측 -->
				
					

					<!-- 마이페이지 -->
					<li class="dropdown">
						<a href="index.html">마이페이지</a>
					</li><!-- / 마이페이지 -->


					<!-- 카트 -->
					<li class="dropdown cart-nav dropdown-slide">
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
								class="tf-ion-android-cart"></i>Cart</a>
						<div class="dropdown-menu cart-dropdown">
							<!-- Cart Item -->
							<div class="media">
								<a class="pull-left" href="#!">
									<img class="media-object" src="images/book1.jpg" alt="image" />
								</a>
								<div class="media-body">
									<h4 class="media-heading"><a href="#!">책제목</a></h4>
									<div class="cart-price">
										<span>작가명</span>
									</div>
									<div class="text-right">
									<h5><strong>12,000원</strong></h5>
								</div>
								</div>
								<a href="#!" class="remove"><i class="tf-ion-close"></i></a>
							</div><!-- / Cart Item -->

							<div class="cart-summary">
								<span>Total</span>
								<span class="total-price">12,000원</span>
							</div>
							<ul class="text-center cart-buttons">
								<li><a href="cart.html" class="btn btn-small">cart</a></li>
								<li><a href="checkout.html" class="btn btn-small btn-solid-border">결제하기</a></li>
							</ul>
						</div>

					</li><!-- / 카트 -->

					
				</ul><!-- / .nav .navbar-nav -->
			
			<!-- / 네비 우측 -->
			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>

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
													<li class=""><a href="#!">소설</a>
														</li>
												</ul>
											</td>

											<td>

												<ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">인문</a>
														</li>
												</ul>
											</td>
											<td>
												<ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">국내 시 </a>
														</li>
												</ul>
											</td>
											<td>
												<ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">정치/사회</a>
														</li>
												</ul>
											</td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">경제/경영</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">역사.문화</a>
														

														</li>
												</ul></td>
										</tr>

										<tr>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">예술</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">종교</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">교양과학</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">만화</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">자기계발</a>
														</li>
												</ul></td>
											<td><ul class="dropdown">
													<li class="dropdown dropdown-slide"><a href="#!"
														class="dropdown-toggle" data-toggle="dropdown"
														data-hover="dropdown" data-delay="350" role="button"
														aria-haspopup="true" aria-expanded="false">여행</a>
														</li>
												</ul></td>
										</tr>
									</table>


								</div>
							</div>
						</div>


					</div>

				</div>

			


				<!-- *************************************     상품 목록   (class, name)  *************************************** -->
				<section class="products section">
					<div class="container">
						<div class="row">
							
							<div class="col-md-3">
								<div class="product-item">
									<div class="product-thumb" >
										
										<img class="img-responsive"  src="images/shop/products/product-1.jpg" alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>												
														<a href=""><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												
												<li>
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-md-3">
								<div class="product-content">
									<h4><a class="productTitle" href="product-single.html">만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐?이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게</a></h4>
									<p class="writer" style="font-size: smaller;">책 작가 이름</p>
									<p class="price" style="font-weight: bolder;">$200</p><hr/>
									<p class="productDesc"  >만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐?이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은 사막이다 오아이스도 없는 사막이다 보이는 끝까지 찾아다녀도 목숨이 있는 때까지 방황하여도 보이는 것은 거친 모래뿐일 것이다 이상의 꽃이 없으면 쓸쓸한 인간에 남는 것은 영락과 부패 뿐이다 낙원을 장식하는 천자만홍이 어디 있으며 인생을 풍부하게</p>
								</div>
							</div>
							
				
				
				
								<div class="col-md-3">
									<div class="product-item">
										<div class="product-thumb">
											
											<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
											<div class="preview-meta">
												<ul>
													<li>
														<li>												
															<a href=""><i class="tf-ion-ios-search-strong"></i></a>
													</li>
													</li>
													
													<li>
														<a href="#!"><i class="tf-ion-android-cart"></i></a>
													</li>
												</ul>
											  </div>
										</div>
									</div>
								</div>	
								<div class="col-md-3">
									<div class="product-content">
										<h4><a class="productTitle" href="product-single.html">불편한 편의점</a></h4>
										<p class="writer" style="font-size: smaller;">책 작가 이름</p>
										<p class="price" style="font-weight: bolder;">$200</p><hr/>
										<p class="productDesc"  >만물은 얼 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은</p>
									</div>
								</div>
				
				
							<div class="col-md-3">
								<div class="product-item">
									<div class="product-thumb">
										
										<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>
													<li>												
														<a href=""><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												</li>
												
												<li>
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-md-3">
								<div class="product-content">
									<h4><a class="productTitle" href="product-single.html">불편한 편의점</a></h4>
									<p class="writer" style="font-size: smaller;">책 작가 이름</p>
									<p class="price" style="font-weight: bolder;">$200</p><hr/>
									<p class="productDesc"  >만물은 얼 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은</p>
								</div>
							</div>
				
				
				
							<div class="col-md-3">
								<div class="product-item">
									<div class="product-thumb">
										
										<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>
													<li>												
														<a href=""><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												</li>
												
												<li>
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-md-3">
								<div class="product-content">
									<h4><a class="productTitle" href="product-single.html">불편한 편의점</a></h4>
									<p class="writer" style="font-size: smaller;">책 작가 이름</p>
									<p class="price" style="font-weight: bolder;">$200</p><hr/>
									<p class="productDesc"  >만물은 얼 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은</p>
								</div>
							</div>
				
				
							<div class="col-md-3">
								<div class="product-item">
									<div class="product-thumb">
										
										<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>
													<li>												
														<a href=""><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												</li>
												
												<li>
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-md-3">
								<div class="product-content">
									<h4><a class="productTitle" href="product-single.html">불편한 편의점</a></h4>
									<p class="writer" style="font-size: smaller;">책 작가 이름</p>
									<p class="price" style="font-weight: bolder;">$200</p><hr/>
									<p class="productDesc"  >만물은 얼 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은</p>
								</div>
							</div>
				
				
							<div class="col-md-3">
								<div class="product-item">
									<div class="product-thumb">
										
										<img class="img-responsive" src="images/shop/products/product-1.jpg" alt="product-img" />
										<div class="preview-meta">
											<ul>
												<li>
													<li>												
														<a href=""><i class="tf-ion-ios-search-strong"></i></a>
												</li>
												</li>
												
												<li>
													<a href="#!"><i class="tf-ion-android-cart"></i></a>
												</li>
											</ul>
										  </div>
									</div>
								</div>
							</div>	
							<div class="col-md-3">
								<div class="product-content">
									<h4><a class="productTitle" href="product-single.html">불편한 편의점</a></h4>
									<p class="writer" style="font-size: smaller;">책 작가 이름</p>
									<p class="price" style="font-weight: bolder;">$200</p><hr/>
									<p class="productDesc"  >만물은 얼 뜨고 열락의 새가 운다사랑의 풀이 없으면 인간은</p>
								</div>
							</div>
				
				
							
						
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
