<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>커뮤니티 메인</title>

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
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="../resources/css/style.css">

</head>
<style>
	#best_report_list {
		text-align: center;
		height: 250px;
		width: 500px;
	}
	
	.hidden_notice {
		
		right: 0px;
		padding: 0px 20px;
	}

	.bookreport_type {
		border-style: hidden;
		height: 300px;
		margin-left: 100px;
		border-bottom:  darkgrey;
		background-color: aliceblue;
	}
	.bookreport_type tr:hover {
		background-color: bisque;
	}
	.col-md-7 {
		width: 80%;
		margin-right: 20px;
	}

	.btn {
		vertical-align: middle;
		width: 70px;
	}
	
	#search_text {
		vertical-align: middle;
		height: 30px;
		width: 300px;
	}

	.date_select {
		height: 30px;
	}

	.board_select {
		height: 30px;
	}

	.hotlist {
		width: 100%;
	}
	
	.blog_banner{
		height: auto;
		width: 100%;
	}

	.media-object{
			max-width: 150px;
			height: auto;
		}
		.pr-2 {
		  padding-right: 20px;
	  }
	  .pl-2 {
		padding-left: 20px;
	  }
	  
		ul.top-menu {
			font-size : 20px;
		}


</style>
<body id="body">

<%@ include file="/WEB-INF/views/header.jsp" %> 

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
				<ul class="nav navbar-nav">

					<!-- Home -->
					<li class="dropdown ">
						<a href="community_main">커뮤니티 메인</a>
					</li><!-- / Home -->
					<!-- Home -->
					<li class="dropdown ">
						<a href="community_list">독후감 목록</a>
					</li><!-- / Home -->
					<!-- Home -->
					<li class="dropdown ">
						<a href="community_write">독후감 작성</a>
					</li><!-- / Home -->


			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>


<div class="page-wrapper" >
	<div class="container">
		<div class="row justify-content-around" >
      		<div class="col-md-4 col-md-offset-2">
		        <div class="post text-center" >
		          <table border="1" width="165px" class="bookreport_type">
					<tr>
						<td class="bookreport_type_main"><strong>전체 독후감</strong></td>
					</tr>
					<tr>
						<td class="bookreport_type_main"><strong>베스트 독후감</strong></td>
					</tr>
					<tr>
						<td class="bookreport_type_main"><strong>화제의 독후감</strong></td>
					</tr>
					<tr>
						<td class="bookreport_type_main"><strong>국내</strong></td>
					</tr>
					<tr>
						<td>소설/인문/시</td>
					</tr>
					<tr>
						<td>만화</td>
					</tr>
					<tr>
						<td>정치사회/경제경영</td>
					</tr>
					<tr>
						<td>종교/역사/문화</td>
					</tr>
					<tr>
						<td>교양과학/예술</td>
					</tr>
					<tr>
						<td>자기계발/여행</td>
					</tr>
		          </table>
				  <br/>
				  <table border="1" width="165px" class="bookreport_type">
					<tr>
						<td class="bookreport_type_main"><strong>해외</strong></td>
					</tr>
					<tr>
						<td>문학</td>
					</tr>
					<tr>
						<td>인문/사회</td>
					</tr>
					<tr>
						<td>예술/건축</td>
					</tr>
					<tr>
						<td>아동</td>
					</tr>
					<tr>
						<td>만화/애니/문고</td>
					</tr>
		          </table>
				</div>
        	</div>
			<div class="col-md-6" >
	          <div class="post-content">
	           <table  width="500" class="table" id="best_report_list">
				<caption class="text-center"><strong>베스트 독후감</strong></caption>
	           		<tr>
	           			<td>제목</td><td width="100">작성자</td><td width="70">조회</td><td width="70">좋아요</td>
	           		</tr>
					   <tr>
						<td>1</td><td>1</td><td>1</td><td>1</td>
					</tr>
					<tr>
						<td>2</td><td>2</td><td>2</td><td>2</td>
					</tr>
					<tr>
						<td>3</td><td>2</td><td>2</td><td>2</td>
					</tr> 
					<tr>
						<td>4</td><td>2</td><td>2</td><td>2</td>
					</tr> 
					<tr>
						<td>5</td><td>2</td><td>2</td><td>2</td>
					</tr>
					<tr>
						<td>1</td><td>1</td><td>1</td><td>1</td>
					</tr>
					<tr>
						<td>2</td><td>2</td><td>2</td><td>2</td>
					</tr>
					<tr>
						<td>3</td><td>2</td><td>2</td><td>2</td>
					</tr> 
					<tr>
						<td>4</td><td>2</td><td>2</td><td>2</td>
					</tr> 
					<tr>
						<td>5</td><td>2</td><td>2</td><td>2</td>
					</tr>

	           </table>
	            

		          </div>
		        </div>
	      	</div>
      				
	</div>
			<!-- 화제글 -->
<section>
	<div class="container">
		<div class="row">
		<div class="title text-center">
			<a href="#"><h2>화제의 글</h2></a>
			<br/><br/>
		</div>
	</div>
		<div class="row">
			<div class="col-md-4">
			<div class="media">
					<a class="pull-left" href="#!">
						<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
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
						<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
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
						<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
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
	</div>
</section>
<!-- 화제글 끝-->
		<br/>
		
			<!-- 한줄평-->
			<section>
				<div class="container">
					<div class="row">
					<div class="title text-center">
						<a href="#"><h2>한 줄 평</h2></a>
						<br/><br/>
					</div>
				</div>
					<div class="row">
						<div class="col-md-4">
						<div class="media">
								<a class="pull-left" href="#!">
									<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
								</a>
							<div class="media-body">
								<h4 class="media-heading"><a href="#">책 제목</a></h4>
								<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
								3.5</h4>
								<hr/>
								<div class="">
								<p>한줄평</p>
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
									<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
								</a>
							<div class="media-body">
								<h4 class="media-heading"><a href="#">책 제목</a></h4>
								<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
								3.5</h4>
								<hr/>
								<div class="">
								<p>한줄평</p>
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
									<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
								</a>
							<div class="media-body">
								<h4 class="media-heading"><a href="#">책 제목</a></h4>
								<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
								3.5</h4>
								<hr/>
								<div class="">
								<p>한줄평</p>
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
<br/>
<br/>
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
    <script type="text/javascript" src="../resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="../resources/s/script.js"></script>
    


  </body>
  </html>