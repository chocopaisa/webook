<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>커뮤니티 글상세</title>

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
	#getBookreport {
		text-align: center;
		height: 50px;
		width: 700px;
		vertical-align: text-bottom;
	}
	
	.hidden_notice {
		
		right: 0px;
		padding: 0px 20px;
	}

	.bookreport_type1 {
		border-style: hidden;
		height: 400px;
		margin-left: 100px;
		border-bottom:  darkgrey;
		background-color: aliceblue;
	}
	.bookreport_type2 {
		border-style: hidden;
		height: 250px;
		margin-left: 100px;
		border-bottom:  darkgrey;
		background-color: aliceblue;
	}
	.bookreport_type1 tr:hover, .bookreport_type2 tr:hover{
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
	#get_reportContent {
		min-height: 400px;
		width: 100%;
		background-color: #D1C6BA;
	}
	#getcontent {
		padding: 30px;
		background-color: #AA9281;
	}
	.post-comments {
		background-color: #D1C6BA;
	}
	.media {
		background-color: #D1C6BA;
		padding-left: 20px;
		padding-right: 20px;
	}
	.btn-book {
  
  color: #fff;
  display: inline-block;
  font-size: 13px;
  letter-spacing: 1px;
  
  text-transform: uppercase;
  font-weight: 200;
  border-radius: 10;
}
.btn-book.insert-btn {
	background-color: black;
}
.btn-book.jjoayo-btn {
	background-color: red;
}
.btn-book.delete-btn {
	background-color: skyblue;
}
.btn-book.singo-btn {
	background-color: black;
}
#comment_textarea {
	width: 95%;
	height: 150px;
	margin-left: 20px;
}

</style>

<script type="text/javascript">

<!-- 댓글 쓰기 AJAX -->
/* function insertReply(){
	var content = $("#write_content").val();
	
	if(content.length > 500){
		alert("500자 이하로 댓글을 작성해주세요!");
		return false;
	}
	var b_no = ${param.bookreport_no };
	var r_writer = ${bookreport.user_email };
	
	var replyVal = {
			"b_no" : b_no ,
			"r_writer":r_writer ,
			"r_comment" : content
	};
	//댓글 쓰기
	$.ajax({
		type:"post",
		url:"insertComment.do",
		data:JSON.stringify(replyVal),
		contentType:"application/json",
		dataType:"json",
		success: function(res){
			$("#write_content").val(""); //댓글 입력창 비우기
			if ( res > 0 ){
				getReplyList();
			}else{
				alert("[ERROR]: 댓글 등록 실패!!");
				getReplyList();
			}
		} 
		,
		error:function(){
			alert("댓글 등록 ajax 실패 ㅠ..");
		}
		
		
	});
	
	
} */


</script>


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
		<div class="row justify-content-around" >
      		<div class="col-md-4">
		        <div class="post text-center" >
					<table border="1" width="165px" class="bookreport_type1">
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
					  <table border="1" width="165px" class="bookreport_type2">
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
			<div class="col-md-8" id="getcontent">
	          <div class="post-content">
				

				<div class="media-body">
					<div class="comment-info">
						<h4 class="comment-author">
							<a href="">${bookreport.user_email }</a>
							
						</h4>
						<time>
							<fmt:parseDate value="${bookreport.write_date }" var="write_date1" pattern="yyyy-mm-dd HH:mm:ss" />
							<fmt:formatDate value="${write_date1 }" pattern="yyyy-MM-dd ' at ' HH:mm" />
						</time>
						
						<a class="comment-button pull-right" href=""><i class="tf-ion-chatbubbles"></i>신고</a>
						<a class="comment-button pull-right" href=""><i class="tf-ion-chatbubbles"></i>삭제</a>
					</div>

					

				</div>
	            <hr/>
			   	<div class="" id="get_reportContent" >${bookreport.bookreport_content }</div>


		          </div>
				  <div class="media">
					<a class="pull-left" href="">
						<img class="media-object" src="../resources/images/book1.jpg" alt="Image">
					</a>
				<div class="media-body">
					<h4 class="media-heading"><a href="">${bookreport.report_kind }</a></h4>
					<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
					${bookreport.star }</h4>
					<hr/>
					<div class="">
					<p>책설명</p>
					</div>
				</div>
			</div>
				  <div class="post-comments">
					  <button type="submit" class="btn btn-book jjoayo-btn" id="jjoayo-btn">좋아요 1</button>
					  <button type="submit" class="btn btn-book singo-btn pull-right" id="singo-btn">신고</button>
					  <button type="submit" class="btn btn-book delete-btn pull-right" id="delete-btn">삭제</button>
					<h3 class="post-sub-heading">댓글</h3>
					<ul class="media-list comments-list m-bot-50 clearlist">
						<div class="post-comments-form">
							
							<form method="post" action="" id="form" role="form" >
	
								<div class="row">
	
									<!-- Comment -->
									<div class="form-group col-md-12">
										<h4 class="comment-author" style="padding-left: 20px;" >
											<a href="" class="writerId">${bookreport.user_email }</a>
										</h4>
										<textarea id="write_content" class="form-control" placeholder="경고문" maxlength="400" style="resize: none;" name="comment_content" ></textarea>
									</div>
	
									<!-- Send Button -->
									<div class="form-group col-md-12 text-right">
										<button type="submit" class="btn btn-book insert-btn" id="insert-btn" onclick="insertReply();" >등록</button>
									</div>
	
	
								</div>
	
							</form>
						</div>
						<!-- Comment Item start-->
						<c:forEach items="${commentList }" var="cl" >
						<li class="media">
							<div class="media-body">
								<div class="comment-info">
									<h4 class="comment-author">
										<a href="">${cl.user_email }</a>
									</h4>
									<time>
										<fmt:parseDate value="${cl.comment_write_date }" var="write_date2" pattern="yyyy-mm-dd HH:mm:ss" />
										<fmt:formatDate value="${write_date2 }" pattern="yyyy-MM-dd ' at ' HH:mm" />
									</time>
									<a class="comment-button pull-right" href=""><i class="tf-ion-chatbubbles"></i>신고</a>
									<a class="comment-button pull-right" href=""><i class="tf-ion-chatbubbles"></i>삭제</a>
								</div>
								<p>${cl.comment_content}</p>
							</div>

						</li>
						</c:forEach>
						<!-- End Comment Item -->

					</ul>
				</div>
		        </div>
				<div>
					<img src="../resources/images/blog/testbanner.png"  class="blog_banner">
				</div>
	      	</div>
      				
	</div>

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
    <script src="../resources/js/script.js"></script>
    


  </body>
  </html>