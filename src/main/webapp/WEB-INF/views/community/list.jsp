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
	.bookreport_list td {
		padding : 10px;
		vertical-align: middle;
		border-bottom: 1px solid #eee;
	}
	.bookreport_list th {
		padding : 10px;
		border-bottom: 1px solid #eee;
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
	
	.search_tap input, .search_tap select {
		height : 30px;
	}
	
	.search_tap input {
		width : 300px;
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
.post-content table tr> td {
		vertical-align: middle;
	}
	.post > div {
		margin: 0px;
		padding : 0px;
	}
	.post ul {
		margin-bottom: 20px;
	}
	.post ul > li {
		padding: 10px;
	
	}
	.post ul > li:hover {
		background-color: #f7f7f7;
		text-decoration: underline;
	}
	.post-content {
		margin-top : 20px;
	}
	.page-wrapper {
		padding : 0px;
	}
	#pagination > li {
		padding: 0px;
	}
	#pagination {
		margin : 0px;
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
      		<%@ include file="/WEB-INF/views/community/community_sidebar.jsp" %>
			<div class="col-md-9">
		        <div class="post">
	          		<div class="post-thumb pull-right">
	          		</div>
	          <div class="post-content">
	          	<c:if test="${param.report_kind ne null and param.search_text eq null}">
				  <h3>${param.report_kind} 게시판</h3>
				  </c:if>
				  <c:if test="${param.report_kind eq null and param.search_text eq null }">
				  <h3>전체 게시판</h3>
				  </c:if>
				  <c:if test="${param.search_text ne null }">
				  <h3>검색 결과</h3>
				  </c:if>
				  <hr/>
	           <table class="bookreport_list w-100">
	           		<thead class="text-center">
	           		<tr>
	           			<th class="text-center">글번호</th><th class="text-center">제목</th><th class="text-center">작성자</th><th class="text-center">작성일</th><th class="text-center">조회</th><th class="text-center">좋아요</th>
	           		</tr>
	           		</thead>
	           		<tbody>
	           		<c:if test="${empty bookreportList and param.search_text eq null}">
	           			<tr><td colspan="6" class="text-center">작성된 글이 없습니다</td></tr>
	           		</c:if>
	           		<c:if test="${empty bookreportList and param.search_text ne null}">
	           			<tr><td colspan="6" class="text-center">검색된 결과가 없습니다</td></tr>
	           		</c:if>
	           		<c:forEach items="${bookreportList }" var="bookreport">
					   <tr>
						<td class="text-center">${bookreport.bookreport_no }</td>
						<td><a href="getcontent.do?bookreport_no=${bookreport.bookreport_no }" >${bookreport.bookreport_title }</a></td>
						<td class="text-center">${bookreport.user_name }</td>
						<td class="text-center">
						<fmt:parseDate value="${bookreport.write_date }" var="write_date1" pattern="yyyy-mm-dd" />
						<fmt:formatDate value="${write_date1 }" pattern="MM-dd" />
						</td>
						<td class="text-center">${bookreport.view_count }</td>
						<td class="text-center">${bookreport.jjoa_count }</td>
					</tr>
 					</c:forEach>
 					</tbody>
	           </table>
	            <div class="text-right"><a href="write.do?report_kind=${param.report_kind }" class="btn btn-main">글쓰기</a></div>
	            <div class="text-center">
	            
				<ul id="pagination" class="pagination post-pagination">
				<c:forEach var="idx" begin="1" end="5">
					<c:choose>
						<c:when test="${idx eq param.pNum or (idx eq 1 and param.pNum eq null)}">
							<li class="active"><a href="list.do?report_kind=${param.report_kind}&pNum=${idx}">${idx }</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="list.do?report_kind=${param.report_kind}&pNum=${idx}">${idx }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
					
				</ul>
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
<%@ include file="/WEB-INF/views/footer.jsp" %> 


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