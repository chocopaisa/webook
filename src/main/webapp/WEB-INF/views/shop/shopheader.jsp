<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
						<a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">국내도서 <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-12 col-md-12 mb-sm-12">
									<ul>
										<li class="dropdown-header">국내도서</li>
										<li role="separator" class="divider"></li>
										<li><a href="shop_korean.do?genre_no=100" >소설</a></li>
										<li><a href="shop_korean.do?genre_no=210050">만화</a></li>
										<li><a href="shop_korean.do?genre_no=120">인문</a></li>
										<li><a href="shop_korean.do?genre_no=110">시</a></li>
										<li><a href="shop_korean.do?genre_no=180">정치사회</a></li>
										<li><a href="shop_korean.do?genre_no=">경제경영</a></li>
										<li><a href="shop_korean.do?genre_no=210">예술</a></li>
										<li><a href="shop_korean.do?genre_no=210">종교</a></li>
										<li><a href="shop_korean.do?genre_no=190">역사/문화</a></li>
										<li><a href="shop_korean.do?genre_no=">고양과학</a></li>
										<li><a href="shop_korean.do?genre_no=">자기계발</a></li>
										<li><a href="shop_korean.do?genre_no=">여행</a></li>
									</ul>
								</div>

							</div><!-- / .row -->
						</div><!-- / .dropdown-menu -->
					</li><!-- / 국내도서 -->


					<!-- 해외도서 -->
					<li class="dropdown dropdown-slide">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
							role="button" aria-haspopup="true" aria-expanded="false">해외도서 <span
								class="tf-ion-ios-arrow-down"></span></a>
						<div class="dropdown-menu">
							<div class="row">

								<!-- Basic -->
								<div class="col-lg-12 col-md-12 mb-sm-12">
									<ul>
										<li class="dropdown-header">해외도서</li>
										<li role="separator" class="divider"></li>
										<li><a href="shop_foreign.do?genre_no=100020">문학</a></li>
										<li><a href="shop_foreign.do?genre_no=">인문/사회</a></li>
										<li><a href="cshop_foreign.do?genre_no=">예술/건축</a></li>
										<li><a href="shop_foreign.do?genre_no=">아동</a></li>
										<li><a href="shop_foreign.do?genre_no=">만화/애니</a></li>
										<li><a href="shop_foreign.do?genre_no=">문고</a></li>

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
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
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
								<li><a href="/webook/shop/cart" class="btn btn-small">cart</a></li>
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