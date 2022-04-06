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
  <title>커뮤니티 | 목록 선택시</title>

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
	.bookreport_list {
		text-align: center;
		height: 350px;
	}
	
	.hidden_notice {
		
		right: 0px;
		padding: 0px 20px;
	}

	.bookreport_type_select {
		border-style: hidden;
		height: 300px;
		
		border-bottom:  darkgrey;
		background-color: aliceblue;
	}
	.bookreport_type_select tr:hover {
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
		min-width: 300px;
		min-height: 30px;
		max-width: 300px;
		max-height: 30px;
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
						<a href="main.do">커뮤니티 메인</a>
					</li><!-- / Home -->
					<!-- Home -->
					<li class="dropdown ">
						<a href="list.do">독후감 목록</a>
					</li><!-- / Home -->
					<!-- Home -->
					<li class="dropdown ">
						<a href="write.do">독후감 작성</a>
					</li><!-- / Home -->


			</div>
			<!--/.navbar-collapse -->
		</div><!-- / .container -->
	</nav>
</section>




<div class="page-wrapper" >
	<div class="container">
		<div class="row" >
      		<div class="col-md-2">
		        <div class="post text-center" >
					<table border="1" width="165px" class="bookreport_type_select">
						<tr>
							<td class=""><strong><a href="list.do">전체 독후감</a></strong></td>
						</tr>
						<tr>
							<td class=""><strong>베스트 독후감</strong></td>
						</tr>
						<tr>
							<td class=""><strong>화제의 독후감</strong></td>
						</tr>
						<tr>
							<td class=""><strong>국내</strong></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=소설">소설/인문/시</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=만화">만화</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=정치사회">정치사회/경제경영</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=종교">종교/역사/문화</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=예술">교양과학/예술</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=여행">자기계발/여행</a></td>
						</tr>
					  </table>
					  <br/>
					  <table border="1" width="165px" class="bookreport_type_select">
						<tr>
							<td class=""><strong>해외</strong></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=해외문학">문학</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=해외인문">인문/사회</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=해외예술">예술/건축</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=해외아동">아동</a></td>
						</tr>
						<tr>
							<td><a href="list.do?report_kind=해외만화">만화/애니/문고</a></td>
						</tr>
					  </table>
				</div>
        	</div>
			<div class="col-md-7 offset-md-1">
		        <div class="post">
	          		<div class="post-thumb pull-right">
						<input type="checkbox" class="hidden_notice">공지숨기기

	          		</div>
	          <div class="post-content">
				  
	           <table border="1" border-bottom width="900" class="bookreport_list">
	           		<tr>
	           			<td width="80">글번호</td><td>제목</td><td width="100">작성자</td><td width="100">작성일</td><td width="70">조회</td><td width="70">좋아요</td>
	           		</tr>
	           		<c:forEach items="${bookreportList }" var="bookreport">
					   <tr>
						<td>${bookreport.bookreport_no }</td>
						<td><a href="getcontent.do?bookreport_no=${bookreport.bookreport_no }" >${bookreport.bookreport_title }</a></td>
						<td>${bookreport.user_name }</td>
						<td>
						<fmt:parseDate value="${bookreport.write_date }" var="write_date1" pattern="yyyy-mm-dd" />
						<fmt:formatDate value="${write_date1 }" pattern="MM-dd" />
						</td>
						<td>${bookreport.view_count }</td>
						<td>${bookreport.report_kind }</td>
					</tr>
 					</c:forEach>
	           </table>
	            
	            <div class="text-center">
				<ul class="pagination post-pagination">
					<li><a href="blog-left-sidebar.html">Prev</a>
						</li>
					<li class="active"><a href="blog-left-sidebar.html">1</a>
						</li>
					<li><a href="blog-left-sidebar.html">2</a>
						</li>
					<li><a href="blog-left-sidebar.html">3</a>
						</li>
					<li><a href="blog-left-sidebar.html">4</a>
						</li>
					<li><a href="blog-left-sidebar.html">5</a>
						</li>
					<li><a href="blog-left-sidebar.html">Next</a>
						</li>
<%-- 											<c:choose>
						<c:when test="${bookreportCount.prev_pnum<=0}">
						<li class="disabled">
							<a href="list.do?report_kind=${report_kind }&pNum=${bookreportCount.prev_pnum}">Prev</a>
						</li>
						</c:when>
					</c:choose>
						<c:forEach var="idx" begin="${bookreportCount.min }" end="${bookreportCount.max }">
						<c:choose>
							<c:when test="${idx==bookreportCount.current_pnum}">
						<li class="active"><a href="list.do?report_kind=${report_kind }&pNum=${idx}">${idx}</a>
						</li>
							</c:when>
							<c:otherwise>
						<li class="active"><a href="list.do?report_kind=${report_kind }&pNum=${idx}">${idx}</a>
						</li>							
							</c:otherwise>
						</c:choose>
						</c:forEach>
					<li><a href="list.do?report_kind=${report_kind }&pNum=${bookreportCount.next_pnum}">Next</a>
						</li> --%>
						
						
				</ul>
				<a href="write.do" class="btn btn-main">글쓰기</a>
				</div>
				<form action="searchBookreportList.do">
				<div class="search_tap text-center">
					<select class="date_select" name="date_select" >
						<option value="sysdate-1">1일</option>
						<option value="sysdate-7">1주</option>
						<option value="add_months(sysdate,-1)">1달</option>
					</select>
					<select class="search_select" name="search_select" >
						<option value="bookreport_title">제목</option>
						<option value="bookreport_content">내용</option>
						<option value="user_name">작성자</option>
					</select>
					<input id="search_text" name="search_text">
					<button class="btn btn-main" >검색</button>
				</div>
				</form>
		          </div>
		        </div>
	      	</div>
      				
	</div>
			<!-- 한줄평 -->
<section>
	<div class="container">
		<div class="row">
		<div class="title text-center">
			<a href=""><h2>화제의 글</h2></a>
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
					<h4 class="media-heading"><a href="">책 제목</a></h4>
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
	</div>
</section>
<!-- 한줄평 끝-->
		<br/>
		<br/>
		<div>
			<img src="../resources/images/blog/testbanner.png" class="blog_banner">
		</div>
  </div>
</div>

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
    <script src="../resources/js/script.js"></script>
    


  </body>
  </html>