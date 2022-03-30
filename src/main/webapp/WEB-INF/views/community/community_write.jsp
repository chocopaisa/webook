<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>커뮤니티 글작성</title>

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
  <link rel="stylesheet" href="plugins/themefisher-font/style.css">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
  
  <!-- Animate css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <link rel="stylesheet" href="plugins/slick/slick-theme.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="css/style.css">

  <!-- 클래식 에디터 -->
  <script src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
  <script src="ko.js"></script>
		

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

	.bookreport_type {
		height: 500px;
		margin-left: 100px;
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

	.report_type {
		height: 30px;
		width: 300px;
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

	.write_hanjul_image{
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
		background-color: grey;
	}
	#getcontent {
		padding: 30px;
		background-color: #AA9281;
	}
	.post-comments {
		background-color: grey;
	}
	.media {
		background-color: beige;
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
	max-width: 100%;
	min-width: 100%;
	min-height: 150px;
	max-height: 150px;

}

.ck.ck-editor {
    width: 100%;
}

.ck-editor__editable {
    min-height: 500px;
}

.write_title {
	min-width: 620px;
	min-height: 30px;
	max-width: 300px;
	max-height: 30px;
	border-radius: 5px;
}

.write_hanjul_content {
	width: 53%;
	height: 100px;
}
.write_hanjul_title {
	height: 28px;
	width: 53%;
}

</style>
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


<div class="page-wrapper" >
	<div class="container">
		<div class="row justify-content-around" >
			<div class="col-md-8 col-md-offset-2" id="getcontent">
	          <div class="post-content">				
				<div class="media-body">
					<div class="write_">
						<select class="report_type text-center">
							<option>추리</option>
							<option>연애</option>
							<option>불경</option>
						</select>
						<button type="submit" class="btn btn-book insert-btn pull-right">등록</button>
					</div>
					<textarea class="write_title" maxlength="300" placeholder="제목" style="resize: none;"></textarea>
				</div>


				<div class="write_hanjul">
					<h4><a href="#"><textarea class="write_hanjul_title" style="resize: none;" placeholder="책 제목"></textarea></a>
					
					</h4>
					<h4><i class="tf-ion-ios-star"></i><i class="tf-ion-ios-star-half"></i><i class="tf-ion-ios-star-outline"></i>
						3.5</h4>
						
				</div>


	            <hr/>
				<div id="classic">
					<p>asd</p>
				</div>
				<script>
					ClassicEditor
						.create(document.querySelector('#classic'), {
							language: 'ko' //언어설정
						})
						.catch(error => {
							console.error(error);
						});
				</script>


		          </div>

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
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
    <!-- Instagram Feed Js -->
    <script src="plugins/instafeed/instafeed.min.js"></script>
    <!-- Video Lightbox Plugin -->
    <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
    <!-- Count Down Js -->
    <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

    <!-- slick Carousel -->
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/slick/slick-animation.min.js"></script>

    <!-- Google Mapl -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>
    


  </body>
  </html>