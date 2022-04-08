<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>WEBOOK | 게시글</title>

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
		padding : 10px;
		min-height: 400px;
		width: 100%;
		background-color: #f7f7f7;
	}
	#getcontent {
		padding: 30px;
		background-color: #EDEDED;
	}
	.post-comments {
		
		padding: 10px;
	}
	.media {
		background-color: #f7f7f7;
		padding : 20px;
	}
	
	#write_comment {
	background-color: #f7f7f7;
	padding : 10px;
	}
	
	.btn-book {
  
  
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

/*  .btn-secondary {
	background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: white;
}  */

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}

.btn-jjoa {
    position: relative;
    border: none;
    min-width: 100px;
    min-height: 40px;
    background: linear-gradient(
        90deg,
        red 0%,
        red 100%
    );
    border-radius: 1000px;
    color: white;
    cursor: pointer;
    box-shadow: 12px 12px 24px #B22222;
    font-weight: 700;
    transition: 0.3s;
}

.btn-jjoa:hover {
    transform: scale(1.2);
}

.btn-jjoa:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid red;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}

.btn-secondary {
    position: relative;
    border: none;
    min-width: 100px;
    min-height: 40px;
    background: linear-gradient(
        90deg,
        lightgray 0%,
        lightgray 100%
    );
    border-radius: 1000px;
    color: black;
    cursor: pointer;
    box-shadow: 12px 12px 24px gray;
    font-weight: 700;
    transition: 0.3s;
}

.btn-secondary:hover {
    transform: scale(1.2);
}

.btn-secondary:hover::after {
    content: "";
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid lightgray;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}


.btn-book.singo-btn {
	background-color: black;
	color: white;
}
#comment_textarea {
	width: 95%;
	height: 150px;
	margin-left: 20px;
}

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
	
	.comment_div {
		border-bottom: 1px solid lightgray; 
	}
	
</style>

<body id="body">

<%@ include file="/WEB-INF/views/header.jsp" %> 

<%@ include file="/WEB-INF/views/community/community_header.jsp" %>

<div class="page-wrapper" >
	<div class="container">
		<div class="row justify-content-around" >
 
 <%@ include file="/WEB-INF/views/community/community_sidebar.jsp" %> 
 
			<div class="col-md-8 col-xs-offset-1" id="getcontent">
	          <div class="post-content">
				

				<div class="media-body">
					<div class="comment-info">
						<h3>${bookreport.bookreport_title}</h3>
						<h5 class="comment-author">
							<a >${bookreport.user_name }</a>
							
						</h4>
						<time>
							<fmt:parseDate value="${bookreport.write_date }" var="write_date1" pattern="yyyy-mm-dd HH:mm:ss" />
							<fmt:formatDate value="${write_date1 }" pattern="yyyy-MM-dd ' at ' HH:mm" />
						</time>
						
					</div>

					

				</div>
	            <hr/>
			   	<div class="" id="get_reportContent" >${bookreport.bookreport_content }</div>


		          </div>
				  <div class="media">
					<a class="pull-left">
						<img class="media-object" src="${product.product_image }" alt="Image">
					</a>
				<div class="media-body">
					<h4 class="media-heading"><a class="productTitle" href="../shop/product_single.do?product_no=${bookreport.product_no }">${product.product_name }</a></h4>
					<h4 class="review-star text-left mb-1">${bookreport.star }</h4>
					<hr/>
					<div class="">
					<p class="productDesc">${product.product_desc }</p>
					</div>
					<div class="text-right align-text-bottom">
					<a><p class="writer" >${product.product_writer}</p></a>
				</div>
				</div>
			</div>
				<div style="text-align: center; padding-top: 30px;" >
				  	<c:choose>
				  		<c:when test="${not empty sessionScope.user }">
				  			<c:choose>
				  				<c:when test="${checkJjoa.user_email ne null }"  >
					  				<button type="button" class="btn btn-book btn-jjoa jjoayo-btn" id="jjoayo-btn" >좋아요 <span class="jjoa_count">${jjoa.jjoa_count}</span></button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-book btn-secondary jjoayo-btn" id="jjoayo-btn" >좋아요 <span class="jjoa_count">${jjoa.jjoa_count}</span></button>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<button class="btn btn-book btn-secondary jjoayo-btn"  >좋아요 <span class="jjoa_count">${jjoa.jjoa_count}</span></button>
						</c:otherwise>
					</c:choose>				
				
				</div>
				  <div class="post-comments">
					  <button type="button" class="btn btn-book singo-btn pull-right" id="singo-btn" data-toggle="modal" data-target="#reportBookModal" >신고</button>
					  <c:if test="${sessionScope.user.user_email eq bookreport.user_email }">
					  <button type="button" class="btn btn-danger btn-book delete-btn pull-right" id="delete-btn" data-toggle="modal" data-target="#deleteBookreportModal" >삭제</button>
					</c:if>
					  
					<h3 class="post-sub-heading">댓글</h3>
					<ul class="media-list comments-list m-bot-50 clearlist"  >
						<div class="post-comments-form">
							<!-- 폼태그 사용시 redirect됨 -->
							<!-- <form method="post"  id="form" role="form" autocomplete="off" > -->
								<c:if test="${sessionScope.user ne null }">
								<div class="row comment_div">
									
									<!-- Comment -->
									<div class="form-group col-md-12" id="write_comment">
										<h5 class="comment-writer" >
											<input type="hidden" name="bookreport_no" value="${bookreport.bookreport_no }" />
											<a href="" class="writerId">${sessionScope.user.user_name }</a>
										</h5>
										<textarea id="write_content" class="form-control" placeholder="댓글을 입력해주세요" maxlength="400" style="resize: none; height: 120px;" name="comment_content" ></textarea>
									</div>
	
									<!-- Send Button -->
									<div class="form-group col-md-12 text-right">
										<button class="btn btn-book insert-btn" id="insert_btn" style="color: white;" >등록</button>
									</div>
	
									<hr/>
								</div>
						<!-- </form>  -->
								</c:if><hr/>
						</div>
						
						<!-- Comment Item start-->
						<div id="commentList">
 						<c:forEach items="${commentList }" var="cl" >
						<li class="media">
							<div class="media-body">
								<div class="comment-info">
									<h5 class="comment-writer">
										<a name="comment_author">${cl.user_name }</a>
									</h5>
									<input type="hidden" name="comment_no" value="${cl.comment_no }" />
									<time>
										<fmt:parseDate value="${cl.comment_write_date }" var="write_date2" pattern="yyyy-mm-dd HH:mm:ss" />
										<fmt:formatDate value="${write_date2 }" pattern="yyyy-MM-dd ' at ' HH:mm" />
									</time>
									
									<button class="deleteComment btn-danger pull-right">삭제</button>
									
								</div>
								<p>${cl.comment_content}</p>
							</div>

						</li>
						</c:forEach>
						</div>
						<!-- End Comment Item -->
						
					</ul> <!-- End commentList -->
				</div>
		        </div>
				<div>
					<img src="../resources/images/blog/testbanner.png"  class="blog_banner">
				</div>
	      	</div>
      				
	</div>
	<!-- 게시글 신고 -->
<div class="modal fade" id="reportBookModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalLabel">게시글 신고</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body text-center">
        신고 사유를 선택 하세요.
        	<div>
        		<select class="ref_article_info" id="ref_article_info" name="ref_article_info">
        			<option value="스팸홍보/도배글입니다.">스팸홍보/도배글입니다.</option>
        			<option value="음란물입니다.">음란물입니다.</option>
        			<option value="불법정보를 포함하고 있습니다.">불법정보를 포함하고 있습니다.</option>
        			<option value="청소년에게 유해한 내용입니다.">청소년에게 유해한 내용입니다.</option>
        			<option value="욕설/혐오/차별적 표현입니다.">욕설/생혐오/차별적 표현입니다.</option>
        			<option value="개인정보 노출 게시물입니다.">개인정보 노출 게시물입니다.</option>
        			<option value="불쾌한 표현이 있습니다.">불쾌한 표현이 있습니다.</option>
        		</select>
        		<input type="hidden" name="article_no" value="${bookreport.bookreport_no }" />
        	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal" style="color: white; background-color: gray;" >취소</button>
        <button type="button" class="btn btn-success" id="reportBook">신고</button>
      </div>
    </div>
  </div>
</div>

	<!-- 게시글 삭제 확인 -->
<div class="modal fade" id="deleteBookreportModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" id="exampleModalLabel">게시글 삭제 확인</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body text-center">
        정말로 삭제 하시겠습니까? 복구가 불가능합니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal" style="color: white; background-color: gray;" >취소</button>
        <button type="button" class="btn btn-success" id="deleteBookreport">삭제</button>
      </div>
    </div>
  </div>
</div>

<br/>
<br/>
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
    
	<script type="text/javascript">
	
		// 댓글 작성
	
		$("#insert_btn").on('click', function() {
		var comment_content = $('textarea[name=comment_content]').val();
		var bookreport_no = $('input[name=bookreport_no]').val();
			if (comment_content.length > 1) {
			$.ajax({
				type:'GET',
				contentType:"application/json",
				url:'insertComment.do',
				data:{
 					comment_content,
					bookreport_no
				},
				dataType : "text",
				success : function(data) {				
					 console.log(data);
					$('textarea[name=comment_content]').val("");
					getCommentList();
				},
				error : function(err) {
					alert("error");
					console.log(err);
				}
				
			})
			
			} else {
				alertWarnMessage("댓글을 한글자 이상 작성해 주세욧!");
			}
		})
		
		//댓글 삭제
		$(document).on('click', ".deleteComment", function() {
			
			$.ajax({
				type:'GET',
				contentType:"application/json",
				url:'deleteComment.do',
				data:{
					"bookreport_no" : $('input[name=bookreport_no]').val(),
					"comment_no" : $(this).parent().find('input[name=comment_no]').val()
				},
				dataType : "text",
				success : function(data) {
					
					 console.log(data);
					getCommentList();
				},
				error : function(err) {
					alert("error");
					console.log(err);
				}
				
			})
		})		
		
	
	// 댓글리스트 재출력
	function getCommentList() {
		var bookreport_no = $('input[name=bookreport_no]').val();
		var comment_content = $('textarea[name=comment_content]').val();
		
		
		$.ajax({
			type:"GET",
			url:"getCommentList.do",
			data : {
				bookreport_no,
				comment_content
			},
			dataType : "json",
			success : function(result) {
				console.log(result);
				var htmls = "";
				if(result.length < 1){
					htmls = "";
				} else {
					for(var i=0; i<result.length; i++) {
					var date = new Date(result[i].comment_write_date);
					var str = '<li class="media">'
						str += '<div class="media-body">'
						str += '<div class="comment-info">'
						str += '<h4 class="comment-author">'
						str += '<a href="">'+result[i].user_name+'</a></h4>'
						str += '<input type="hidden" name="comment_no" value="'+result[i].comment_no+'" />'
						str += '<time>'+date.toLocaleString()+'</time>'
						str += '<button class="deleteComment btn-danger pull-right">삭제</button>'
						str += '</div><p>'+result[i].comment_content+'</p></div></li>'
						htmls +=str;
						
					}//each end
					
				}
				$("#commentList").html(htmls);
			}, //success end
			error : function(error) {
				console.log(error);
			}
			
		})//ajax end
		
	}
		
    	$('#reportBook').on("click", function(){
    		var ref_article_info = $('select[name=ref_article_info]').val();
    		var article_no = $('input[name=article_no]').val();
    		
    		$.ajax({
    			type:'GET',
    			url:'reportBook.do',
    			data: {
    				article_no,
    				ref_article_info
    			
    				},
    			success: function(result){
    				console.log(result);
    				if(result=='0'){
    					alertMessage("신고완료");
    					$('#reportBookModal').modal('hide');
    				} else{
						alertWarnMessage("신고는 한번만 할 수 있습니다");
						$('#reportBookModal').modal('hide');
    					}
    				},
    			error : function(err){
    				console.log(err);
    			}
    		}); //end of ajax
    	}); //end on

    	//게시글 삭제 확인
       	$('#deleteBookreport').on("click", function(){
    		var bookreport_no = ${bookreport.bookreport_no};
    		location.href='delete.do?bookreport_no='+bookreport_no;
    	}); //end on
    	
    	
    	$('#jjoayo-btn').on("click", function(){
    		let jjoa_count = Number($('span.jjoa_count').text());
    		$.ajax({
    			type:'GET',
    			url:'jjoa.do',
    			data: {bookreport_no : "${bookreport.bookreport_no}"},
    			success: function(result){
    				console.log(result);
    				if(result=='0'){
    					$('#jjoayo-btn').removeClass('btn-secondary');
    					$('#jjoayo-btn').addClass('btn-jjoa');

    						$('span.jjoa_count').text(jjoa_count+1);

    					} else{
    						$('#jjoayo-btn').removeClass('btn-jjoa');
    						$('#jjoayo-btn').addClass('btn-secondary');


    							$('span.jjoa_count').text(jjoa_count-1);
    						
    					}
    				},
    			error : function(err){
    				console.log(err);
    			}
    		}); //end of ajax
    	}); //end on
    	
    	$('.review-star').each(function(){
            const stars = $(this).text().trim() * 2;
            console.log(stars);
            let result = "";
            const starCnt = Math.floor(stars/2)
            if(Math.floor(stars%2) == 0){
              
              for(let i=0; i< starCnt; i++){
                result += "<i class='tf-ion-ios-star'></i>";
              }
              for(let i=0; i < 5-starCnt; i++){
                result += '<i class="tf-ion-ios-star-outline"></i>';
              }
            } else {
              for(let i=0; i< starCnt; i++){
                result += "<i class='tf-ion-ios-star'></i>";
              }
              result += "<i class='tf-ion-ios-star-half'></i>";
              
              for(let i=0; i < 5-starCnt; i++){
                result += '<i class="tf-ion-ios-star-outline"></i>';
              }
            }
            $(this).prepend(result);

            
          });

</script>

  </body>
  </html>