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
<link rel="shortcut icon" type="image/x-icon"
	href="resources/images/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet"
	href="resources/plugins/themefisher-font/style.css">
<!-- bootstrap.min css -->
<link rel="stylesheet"
	href="resources/plugins/bootstrap/css/bootstrap.min.css">

<!-- Animate css -->
<link rel="stylesheet" href="resources/plugins/animate/animate.css">
<!-- Slick Carousel -->
<link rel="stylesheet" href="resources/plugins/slick/slick.css">
<link rel="stylesheet" href="resources/plugins/slick/slick-theme.css">



<!-- Main Stylesheet -->


<link rel="stylesheet" href="resources/css/style.css">
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
.price {
	position: absolute;
	top: 12.5px;
	left: 12.5px;
}

.product-content {
	height: 390px;
}

/*상품 리스트 책 상세설명 내용 많으면 ... 처리*/
.productDesc {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 3; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 3.6em;
	/* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
}

.productTitle {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1; /* 라인수 */
	-webkit-box-orient: vertical;
	word-wrap: break-word;
	line-height: 1.2em;
	height: 1em;
	/* line-height 가 1.2em 이고 3라인을 자르기 때문에 height는 1.2em * 3 = 3.6em */
}
/*********** 상단바 **********/
.pl-2 {
	padding-left: 20px;
}

.pr-2 {
	padding-right: 20px;
}

ul.top-menu {
	font-size: 20px;
}

.media-object {
	max-width: 150px;
	height: auto;
}

#navbar>div {
	display: inline-block;
}

img {
	max-height: 360px;
}
</style>

</head>

<body id="body">

	<!-- Start Top Header Bar -->
	<%@ include file="/WEB-INF/views/header.jsp"%>


	<!-- End Top Header Bar -->


	<!-- Main Menu Section 삭제-->

	<!-- 검색어 입력 -->
	<section class="call-to-action bg-gray section"
		style="background-color: white; padding-top: 10px; padding-bottom: 50px; margin-top: 89.8px;" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<form action="total_search.do">
						<div class="col-lg-6 col-md-offset-3">
							<div class="input-group subscription-form">


								<input type="text" class="form-control" placeholder="검색어를 검색하세요"
									name="searchKeyword" value="${param.searchKeyword }"> <span class="input-group-btn">
									<input hidden value="${param.searchKeyword }" id="searchKeyword">
									<button class="btn btn-main" type="submit">
										<i class="tf-ion-ios-search-strong" style="size: 50px;"></i>
									</button>
								</span>


							</div>
							<!-- /input-group -->
						</div>
						<!-- /.col-lg-6 -->
					</form>
				</div>
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
	</section>
	<!-- End section -->


	<!-- ************************************ 도서 리뷰 버튼  *************************************************************** -->
	
	<!-- *************************************     상품 목록   (class, name)  *************************************** -->
	<section class="products section" style="padding-top: 30px;">
	
	<div>
		<ul class="nav nav-tabs"
			>
			<li class="active" style="width: 50%" ><a style=" text-align: center; height: 55px; font-size: 22px;"
				data-toggle="tab" href="#book" aria-expanded="true">BOOK</a></li>
			<li class="active2" style="width: 50%"><a style="text-align: center; height: 55px; font-size: 22px;"
				data-toggle="tab" href="#reviews" aria-expanded="false">reviews</a></li>
		</ul>

	</div>

		<div id="book" class="tab-pane fade active in">
			<div class="container">
				<div class="row">
					<div class="title text-center">
						<h2 style="margin-top: 50px">BOOK</h2>
						<hr />
					</div>
					<div id="booklist" >
					<c:forEach items="${products}" var="product">
						<div class="col-md-4">
							<div class="col-md-5">
								<div class="product-item">
									

										<a href="shop/product_single.do?product_no=${product.product_no }"><img class="img-responsive" src="${product.product_image }"
											alt="product-img" /></a>
										
									
								</div>
							</div>
							<div class="col-md-6">
								<div class="product-content">
									<h4>
										<a class="productTitle"
											href="product_single.do?product_no=${product.product_no }">${product.product_name }</a>
									</h4>
									<p class="writer" style="font-size: smaller;">${product.product_writer}</p>
									<p class="price" style="font-weight: bolder;">
										<fmt:formatNumber value="${product.product_price }"
											pattern="#,###" />
										원
									</p>

									<hr />
									<p class="productDesc">${product.product_desc }</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

					<!-- Modal -->
					<!-- /.modal -->

				</div>
			</div>
<div class="text-center">
				<button class="btn btn-main btn-small btn-round" id="addBtn"
					onclick="bookList();" style="text-align: center; width: 600px; height:40px; background-color: ">더보기 +</button>
			</div>

		</div>



		<div class="container" id="review">
			<div class="row">
				<div class="title text-center">
					<h2 style="margin-top: 50px">Review</h2>
					<hr />
				</div>
			</div>
			<div class="row" id="reviews">
				<!-- 리뷰 들어갈 자리 -->
				<c:forEach items="${reviews}" var="review">
					<!-- 한 묶음 -->
					<div class="col-xs-6" style="height: 300px;">
						<div class="media" style="height: 300px;">
							<a class="pull-left"
								href="shop/product_single.do?product_no=${review.PRODUCT_NO }">
								<img class="media-object review-img"
								src="${review.PRODUCT_IMAGE }" alt="Image">
							</a>
							<div class="media-body">
								<h4 class="media-heading">
									<a
										href="shop/product_single.do?product_no=${review.PRODUCT_NO }">${ review.PRODUCT_NAME }</a>
								</h4>
								<h5 class="review-star">
									<span class="star"> ${review.STAR }</span>
								</h5>
								<hr />
								<div>
									<p>${review.BOOKREPORT_CONTENT }</p>
								</div>
								<div class="text-right align-text-bottom">
									<p>${review.USER_NAME }</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 한묶음 끝-->
				</c:forEach>
				<!-- 리뷰끝 -->
			</div>

			<div class="text-center">
				<button class="btn btn-main btn-small btn-round" id="addBtn"
					onclick="reviewList();" style="text-align: center; width: 600px; background-color: ">더보기</button>
			</div>
		</div>

	</section>

	<!-- ******************************페이징*******************-->



	<!-- footer -->

	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- 
    Essential Scripts
    =====================================-->

	<!-- Main jQuery -->
	<script src="resources/plugins/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.1 -->
	<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Bootstra Touchpin -->
	<script
		src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Instagram Feed Js -->
	<script src="resources/plugins/instafeed/instafeed.min.js"></script>
	<!-- Video Lightbox Plugin -->
	<script src="resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
	<!-- Count Down Js -->
	<script src="resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>

	<!-- slick Carousel -->
	<script src="resources/plugins/slick/slick.min.js"></script>
	<script src="resources/plugins/slick/slick-animation.min.js"></script>

	<!-- Google Mapl -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
	<script type="text/javascript"
		src="../resources/plugins/google-map/gmap.js"></script>

	<!-- Main Js File -->
	<script src="resources/js/script.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		$('#review').hide();

		//버튼 누르면 도서, 리뷰 바뀜
		$('.active2').click(function() {
			$('#book').hide();
			$('#review').show();

		})
		$('.active').click(function() {
			$('#book').show();
			$('#review').hide();
		});
	});	
	
		$('.review-star').each(function() {
			const stars = $(this).text().trim() * 2;
			console.log(stars);
			let result = "";
			if (stars % 2 == 0) {

				for (let i = 0; i < stars / 2; i++) {
					result += "<i class='tf-ion-ios-star'></i>";
				}
				for (let i = 0; i < 5 - (stars / 2); i++) {
					result += '<i class="tf-ion-ios-star-outline"></i>';
				}
			} else {
				for (let i = 0; i < stars / 2 - 1; i++) {
					result += "<i class='tf-ion-ios-star'></i>";
				}
				result += "<i class='tf-ion-ios-star-half'></i>";

				for (let i = 0; i < 5 - (stars / 2) - 1; i++) {
					result += '<i class="tf-ion-ios-star-outline"></i>';
				}
			}
			$(this).prepend(result);

		});
			
		$(document).ready(function() {
			$('#review').hide();

			//버튼 누르면 도서, 리뷰 바뀜
			$('.active2').click(function() {
				$('#book').hide();
				$('#review').show();

			})
			$('.active').click(function() {
				$('#book').show();
				$('#review').hide();
			});
		});	
		
		
		
	  let pnum= 0;
			function bookList() {
		  		
			
			
		    	pnum++;
		    console.log(pnum)
		    
		    
		    //ijax *****
		     $.ajax({
		        url : "bookList.do",
		        type : "post",
		        data : {"pnum":pnum, "searchKeyword" : $('#searchKeyword').val()},
		        contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		        error : function(err) { console.log(err)}, 
		        success : function(data) {
		        
		        	console.log(data);
		            var addListHtml ="";
		           
		            if(data.length > 0){
		                
		                for(var i=0; i<data.length;i++) {
		               
		                	addListHtml += "<div class='col-md-4'>";
		     	               addListHtml += "	<div class='col-md-5'>";
		     	               addListHtml += "<div class='product-item'>";
		     	               addListHtml += "<div class='product-thumb'>";
		     	               addListHtml += "	<img class='img-responsive' src='"+ data[i].product_image +"' alt='product-img' />";
		     	               addListHtml += "<div class='preview-meta'>";
		     	               addListHtml += "<ul>";
		     	               addListHtml += "<li>";
		     	               addListHtml += "<a href='product_single.do?product_no='" + data[i].product_no +"'>";
		     	               addListHtml += "<i class='tf-ion-ios-search-strong'>";
		     	               addListHtml += "</i>";
		     	               addListHtml += "</a>";
		     	               addListHtml += "</li>";
		     	               addListHtml += "<li>";
		     	               addListHtml += "<a href='addCart.do?product_no='" + data[i].product_no +"'>";
		     	               addListHtml += "<i class='tf-ion-android-cart'>";
		     	               addListHtml += "</i>";
		     	               addListHtml += "</a>";
		     	               addListHtml += "</li>";
		     	               addListHtml += "</ul>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "<div class='col-md-6'>";
		     	               addListHtml += "<div class='product-content'>";
		     	               addListHtml += "<h4>";
		     	               addListHtml += "<a class='productTitle' href='product_single.do?product_no='"+ data[i].product_no +"'>"
		     	            		   			+ data[i].product_name + "</a>";
		     	               addListHtml += "</h4>";
		     	               addListHtml += "<p class='writer' style='font-size: smaller;'>" + data[i].product_writer + "</p>";
		     	               addListHtml += "<p class='price' style='font-weight: bolder;'>" + data[i].product_price  + "</p>";
		     	               addListHtml += "<hr/>";
		     	               addListHtml += "<p class='productDesc'>" + data[i].product_desc  + "</p>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "</div>";
		     	               addListHtml += "</div>";
		                        
		                }
		                $("#booklist").append(addListHtml);
		                
		            }
		            
		        }
		    });
					
				}	 
			
			
			
		
			function reviewList() {
		  		
				
			    	pnum++;
			    console.log(pnum)
			    
			    
			    //ijax *****
			     $.ajax({
			        url : "reviewList.do",
			        type : "post",
			        data : {"pnum":pnum, "searchKeyword" : $('#searchKeyword').val()},
			        contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			        error : function(err) { console.log(err)}, 
			        success : function(data) {
			        
			        	console.log(data);
			            var raddListHtml ="";
			           
			            if(data.length > 0){
			                
			                for(var i=0; i<data.length;i++) {
			               
			                raddListHtml += "<div class='col-xs-6' style='height: 300px;'>";
			                raddListHtml += "<div class='media' style='height: 300px;'>"
			                raddListHtml += "<a class='pull-left' href='shop/product_single.do?product_no='" + data[i].PRODUCT_NO  + "'>";
			                raddListHtml += "<img class='media-object review-img' src='" + data[i].PRODUCT_IMAGE + "' alt='Image'>";
			                raddListHtml += "</a>";
			                raddListHtml += "<div class='media-body'>";
			                raddListHtml += "<h4 class='media-heading'>";
			                raddListHtml += "<a href='shop/product_single.do?product_no='" + data[i].PRODUCT_NO  + "'>"
			                		+ data[i].PRODUCT_NAME + "</a>";
			                raddListHtml += "</h4>";
			                raddListHtml += "<h5 class='review-star'>";
			                raddListHtml += "<span class='star'>" + data[i].STAR  + "</span>";
			                raddListHtml += "</h5>";
			                raddListHtml += "<hr/>";
			                raddListHtml += "<div>";
			                raddListHtml += "<p>" + data[i].BOOKREPORT_CONTENT + "</p>";
			                raddListHtml += "</div>";
			                raddListHtml += "<div class='text-right align-text-bottom'>";
			                raddListHtml += "<p>" + data[i].USER_NAME  + "</p>";
			                raddListHtml += "</div>";
			                raddListHtml += "</div>";
			                raddListHtml += "</div>";
			                raddListHtml += "</div>";
			                	
			                	
			                        
			                }
			                $("#reviews").append(raddListHtml);
			                
			            }
			            
			        }
			    });
						
					}	  
				
						
					
				
			
		
			
			
</script>

</body>
</html>
