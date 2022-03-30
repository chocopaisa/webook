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
                  <h3><a href="shop/shop_korean.do">도서</a></h3>
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

    <!-- 광고 배너 -->
    <div class="hero-slider">
      <div
        class="slider-item th-fullpage hero-area"
        style="background-image: url(images/slider/slider-1.jpg)"
      >
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-center">
              <p
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".1"
              >
                PRODUCTS
              </p>
              <h1
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".5"
              >
                The beauty of nature <br />
                is hidden in details.
              </h1>
              <a
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".8"
                class="btn"
                href="#"
                >Shop Now</a
              >
            </div>
          </div>
        </div>
      </div>
      <div
        class="slider-item th-fullpage hero-area"
        style="background-image: url(images/slider/slider-3.jpg)"
      >
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-left">
              <p
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".1"
              >
                PRODUCTS
              </p>
              <h1
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".5"
              >
                The beauty of nature <br />
                is hidden in details.
              </h1>
              <a
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".8"
                class="btn"
                href="shop.html"
                >Shop Now</a
              >
            </div>
          </div>
        </div>
      </div>
      <div
        class="slider-item th-fullpage hero-area"
        style="background-image: url(images/slider/slider-2.jpg)"
      >
        <div class="container">
          <div class="row">
            <div class="col-lg-8 text-right">
              <p
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".1"
              >
                PRODUCTS
              </p>
              <h1
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".5"
              >
                The beauty of nature <br />
                is hidden in details.
              </h1>
              <a
                data-duration-in=".3"
                data-animation-in="fadeInUp"
                data-delay-in=".8"
                class="btn"
                href="shop.html"
                >Shop Now</a
              >
            </div>
          </div>
        </div>
      </div>
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
					<div class="text-right align-text-bottom">
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
        <div class="row">
          <div class="col-xs-4 col-sm-4 col-md-2 col-md-offset-1">
            <div class="product-item">
				<div>
					<h3>1</h2>
				</div>
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/book1.jpg"
                  alt="product-img"
                />
				<div class="preview-meta bg-gray">
					<h4><a href="#">굉장히 매우 긴 작가명</a></h4>
				  </div>
              </div>
			  
              <div class="product-content">
                <h4><a href="product-single.html">매우매우매우매우매...</a></h4>
                <p class="price">10,000원</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4 col-md-2">
            <div class="product-item">
				<div>
					<h3>2</h2>
				</div>
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/book1.jpg"
                  alt="product-img"
                />
                <div class="preview-meta bg-gray">
                  <h4><a href="#">작가명</a></h4>
                </div>
              </div>
              <div class="product-content">
                <h4><a href="product-single.html">굉장히 매우 매우 긴 책제목</a></h4>
                <p class="price">10,000원</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4 col-md-2">
            <div class="product-item">
				<div>
					<h3>3</h2>
				</div>
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/book1.jpg"
                  alt="product-img"
                />
                <div class="preview-meta bg-gray">
					<h4><a href="#">작가명</a></h4>
				  </div>
              </div>
              <div class="product-content">
                <h4><a href="product-single.html">책제목</a></h4>
                <p class="price">10,000원</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4 col-md-2">
            <div class="product-item">
				<div>
					<h3>4</h2>
				</div>
              <div class="product-thumb">
                <img
                  class="img-responsive"
                  src="images/book1.jpg"
                  alt="product-img"
                />
                <div class="preview-meta bg-gray">
					<h4><a href="#">작가명</a></h4>
				  </div>
              </div>
              <div class="product-content">
                <h4><a href="product-single.html">책제목</a></h4>
                <p class="price">10,000원</p>
              </div>
            </div>
          </div>
          <div class="col-xs-4 col-sm-4 col-md-2">
            <div class="product-item">
				<div>
					<h3>5</h2>
				</div>
              <div class="product-thumb">
                <span class="bage">재고 없음</span>
                <img
                  class="img-responsive"
                  src="images/book1.jpg"
                  alt="product-img"
                />
                <div class="preview-meta bg-gray">
					<h4><a href="#">작가명</a></h4>
				  </div>
              </div>
              <div class="product-content">
                <h4><a href="product-single.html">Reef Boardsport</a></h4>
                <p class="price">$200</p>
              </div>
            </div>
          </div>
          
          
          </div>

          <!-- Modal -->
          <div class="modal product-modal fade" id="product-modal">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <i class="tf-ion-close"></i>
            </button>
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-body">
                  <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-12">
                      <div class="modal-image">
                        <img
                          class="img-responsive"
                          src="images/shop/products/modal-product.jpg"
                          alt="product-img"
                        />
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-12">
                      <div class="product-short-details">
                        <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                        <p class="product-price">$200</p>
                        <p class="product-short-description">
                          Lorem ipsum dolor sit amet, consectetur adipisicing
                          elit. Rem iusto nihil cum. Illo laborum numquam rem
                          aut officia dicta cumque.
                        </p>
                        <a href="cart.html" class="btn btn-main">Add To Cart</a>
                        <a
                          href="product-single.html"
                          class="btn btn-transparent"
                          >View Product Details</a
                        >
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.modal -->
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
            <p class="copyright-text">
              Copyright &copy;2021, Designed &amp; Developed by
              <a href="https://themefisher.com/">Themefisher</a>
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
    <script type="text/javascript" src="resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="resources/js/script.js"></script>
  </body>
</html>
    