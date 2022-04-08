<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
</style>
<body id="body">

<%@ include file="/WEB-INF/views/header.jsp" %> 

<%@ include file="/WEB-INF/views/community/community_header.jsp" %>


<div class="page-wrapper" >
	<div class="container">
		<div class="row justify-content-around" >
		<div class="col-md-12">
			<img class="w-100" src="../resources/images/testbanner2.png">
			</div>
      		<!-- 사이드바 -->
      		<%@ include file="/WEB-INF/views/community/community_sidebar.jsp" %>
      		<!-- 사이드바 -->
			<div class="col-md-9" >
			<!-- 베스트 독후감 -->
			<div class="row">
	          <div class="post-content col-xs-6">
	           <table class="table" id="best_report_list">
				<caption class="text-center"><strong>베스트 독후감</strong></caption>
	           		<c:forEach items="${bestList }" var="best">
					   <tr>
						<td class="text-left"><span>[${best.REPORT_KIND}]</span> <a class="reportTitle" href="getcontent.do?bookreport_no=${best.BOOKREPORT_NO }">${best.BOOKREPORT_TITLE }</a> 
						<c:if test="${best.COMMENTS ne 0 }">
						<span>[${best.COMMENTS }]</span>
						</c:if>
						</td>
					</tr>
					</c:forEach>

	           </table>
	            

		          </div>
			<!-- 베스트 독후감 끝 -->		 
			<!-- 광고 -->         
		          <div class="post-content col-xs-offset-1 col-xs-4">
	           <img class="w-100" src="../resources/images/ads.png">
	            

		          </div>
		          <!-- 광고 끝 -->
		          </div>
		          
		          
		          <div class="row">
		          <!-- 베스트 독후감 -->
	          <div class="post-content col-xs-6">
	           <table class="table" id="best_report_list">
				<caption class="text-center"><strong>소설 게시판</strong></caption>
	           		<c:forEach items="${novelList }" var="novel">
					   <tr>
						<td class="text-left"><span>[${novel.REPORT_KIND }]</span> <a class="reportTitle" href="getcontent.do?bookreport_no=${novel.BOOKREPORT_NO }">${novel.BOOKREPORT_TITLE }</a> 
						<c:if test="${novel.COMMENTS ne 0 }">
						<span>[${novel.COMMENTS }]</span>
						</c:if>
						</td>
						
					</tr>
					</c:forEach>
	           </table>
	            

		          </div>
			<!-- 베스트 독후감 끝 -->		 
			<!-- 화제의 글 -->         
		          <div class="post-content col-xs-6">
	           <table class="table" id="best_report_list">
				<caption class="text-center"><strong>만화 게시판</strong></caption>
	           		<c:forEach items="${manhwaList }" var="manhwa">
					   <tr>
						<td class="text-left"><span>[${manhwa.REPORT_KIND }]</span> <a class="reportTitle" href="getcontent.do?bookreport_no=${manhwa.BOOKREPORT_NO }">${manhwa.BOOKREPORT_TITLE }</a> 
						<c:if test="${manhwa.COMMENTS ne 0 }">
						<span>[${manhwa.COMMENTS }]</span>
						</c:if>
						</td>
					</tr>
					</c:forEach>
	           </table>
	            

		          </div>
		          <!-- 화제의 글 끝 -->
		          </div>
		          <!-- 배너 -->
		          <div class="col-xs-12">
		          <img class="w-100" src="../resources/images/testbanner.png">
		          
		          
		          </div>
		          <!-- 배너 끝 -->
		           <div class="row">
		          <!-- 게시판 -->
	          <div class="post-content col-xs-6">
	           <table class="table" id="best_report_list">
				<caption class="text-center"><strong>종교 게시판</strong></caption>
	           		<c:forEach items="${religionList }" var="religion">
					   <tr>
						<td class="text-left"><span>[${religion.REPORT_KIND }]</span> <a class="reportTitle" href="getcontent.do?bookreport_no=${religion.BOOKREPORT_NO }">${religion.BOOKREPORT_TITLE }</a> 
						<c:if test="${religion.COMMENTS ne 0 }">
						<span>[${religion.COMMENTS }]</span>
						</c:if>
						</td>
						
					</tr>
					</c:forEach>
	           </table>
	            

		          </div>
			<!-- 게시판 끝 -->		 
			<!-- 게시판 글 -->         
		          <div class="post-content col-xs-6">
	           <table class="table" id="best_report_list">
				<caption class="text-center"><strong>여행 게시판</strong></caption>
	           		<c:forEach items="${travelList }" var="travel">
					   <tr>
						<td class="text-left"><span>[${travel.REPORT_KIND }]</span> <a class="reportTitle" href="getcontent.do?bookreport_no=${travel.BOOKREPORT_NO }">${travel.BOOKREPORT_TITLE }</a> 
						<c:if test="${travel.COMMENTS ne 0 }">
						<span>[${travel.COMMENTS }]</span>
						</c:if>
						</td>
					</tr>
					</c:forEach>
	           </table>
	            

		          </div>
		          <!-- 게시판 끝 -->
		          <!-- 화제의 책 -->
		          <div class="col-xs-12 best-div">
				<h3 class="text-center">화제의 책</h3>
				<hr/>
				<div id="bestseller">

					
        
          <!-- 화제의 책 -->
          <!-- 한묶음 -->
          
	        
	         <c:forEach items="${issueList}" var="issue">
		      	<div class="col-xs-3">
	          <div class="product-item">
	          <div class="product-thumb">
	          <img class="img-responsive issue-img" src="${issue.product_image }" alt="product-img"/>
	          <div class="preview-meta bg-gray">
	          <h4><a href="../shop/product_single.do?product_no=${issue.product_no }">${issue.product_writer }</a></h4>
	          </div></div>
	          <div class="product-content product-best">
	          <h4><a href="../shop/product_single.do?product_no=${issue.product_no }">${issue.product_name }</a></h4>
	          </div>
	          </div>
	          </div>
	         </c:forEach>
          
          <!-- 한묶음 끝-->
          
          <!-- 화제의 책-->
        	
				</div>
			</div>
		          
		        </div>
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
    
	<script>
	$(function() {
		issueImgResize()
		
	});

	$(window).resize(function() {
		issueImgResize();
		
	});
	function issueImgResize() {
		let imgWidth = $('.issue-img').width();
		$('.issue-img').height(imgWidth * 1.48);
	}
	</script>
	<script type="text/javascript">
	$(".reportTitle").each(function(){
		let title = $(this).text();
		if(title.length > 20){
			$(this).text(title.substring(0,18)+'...')	
		}
		
	});
	</script>
	
  </body>
  </html>