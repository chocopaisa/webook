<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8" />
    <title>커뮤니티 글작성</title>

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
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="../resources/images/favicon.png"
    />

    <!-- Themefisher Icon font -->
    <link
      rel="stylesheet"
      href="../resources/plugins/themefisher-font/style.css"
    />
    <!-- bootstrap.min css -->
    <link
      rel="stylesheet"
      href="../resources/plugins/bootstrap/css/bootstrap.min.css"
    />

    <!-- Animate css -->
    <link rel="stylesheet" href="../resources/plugins/animate/animate.css" />
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="../resources/plugins/slick/slick.css" />
    <link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css" />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../resources/css/style.css" />

    <!-- 클래식 에디터 -->
    <script src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
    <script src="../resources/js/ko.js"></script>
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

    .blog_banner {
      height: auto;
      width: 100%;
    }

    .write_hanjul_image {
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
      font-size: 20px;
    }
    /* #get_reportContent {
      min-height: 400px;
      width: 100%;
      background-color: grey;
    }
    #getcontent {
      padding: 30px;
      background-color: #aa9281;
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
 */
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
    	width : 100%;
    	margin-top : 10px;
    	margin-bottom : 10px;
    }

    .write_hanjul_content {
      width: 53%;
      height: 100px;
    }
    .write_hanjul_title {
      height: 28px;
      width: 53%;
    }

    #bookSearch {
      position: relative;
      z-index: 10;
    }

    #bookSearch > div {
      width: 400px;
      padding-top: 20px;
      padding-bottom: 20px;
      border: 1px thin solid;
      margin:0px;
    }

    #bookSearch input {
      width: 270px;
      height: 35px;
    }
    #bookSearch button {
      width: 80px;
      height: 35px;
      background: black;
      color: white;
    }

    .searchBookList > li > div {
      padding-bottom: 10px;
      padding-top: 10px;
    }

    .searchBookList > li > div:hover {
      background: white;
    }
    .star > div {
    	display: inline-block;
    }
    .star select {
    	height : 2em;
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
            <button
              type="button"
              class="navbar-toggle collapsed"
              data-toggle="collapse"
              data-target="#navbar"
              aria-expanded="false"
              aria-controls="navbar"
            >
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <!-- / .navbar-header -->

          <!-- Navbar Links -->
          <div id="navbar" class="navbar-collapse collapse text-center">
            <ul class="nav navbar-nav">
              <!-- Home -->
              <li class="dropdown">
                <a href="main.do">커뮤니티 메인</a>
              </li>
              <!-- / Home -->
              <!-- Home -->
              <li class="dropdown">
                <a href="list.do">독후감 목록</a>
              </li>
              <!-- / Home -->
              <!-- Home -->
              <li class="dropdown">
                <a href="write.do">독후감 작성</a>
              </li>
              <!-- / Home -->
            </ul>
          </div>
          <!--/.navbar-collapse -->
        </div>
        <!-- / .container -->
      </nav>
    </section>

    <div class="page-wrapper">
      <div class="container">
        <div class="row justify-content-around">
          <div class="col-md-8 col-md-offset-2" id="getcontent">
            <form action="insert.do" method="get" id="boardForm">
              <div class="post-content">
                <div class="media-body">
                  <div class="write_">
                    <select class="report_type" name="report_kind">
                      <option value="소설">소설</option>
                      <option value="만화">만화</option>
                      <option value="인문시">인문/시</option>
                      <option value="사회">사회</option>
                      <option value="경제경영">경제경영</option>
                      <option value="종교">종교</option>
                      <option value="한국사">한국사</option>
                      <option value="세계사">세계사</option>
                      <option value="과학">과학</option>
                      <option value="여행">여행</option>
                      <option value="취미">취미</option>
                    </select>
                    <button
                      type="button"
                      id="insertBtn"
                      class="btn btn-book insert-btn pull-right"
                    >
                      등록
                    </button>
                  </div>
                  <input
                    class="write_title"
                    maxlength="25"
                    placeholder="글 제목"
                    name="bookreport_title"
                    id="bookreport_title"
                    
                  />
                </div>

                <div class="write_hanjul">
                    <input
                      class="write_hanjul_title"
                      placeholder="책 제목"
                      autocomplete="off"
                    />
                    <input id="bookId" name="product_no" value="책번호" hidden="hidden" />
                    
                  <div class="star">
                  <div >
                  <h4 class="review-star">
                    
                  </h4>
                  </div>
                  <div class="w-100">
                  <select class="w-100" id="stars" name="star">
                  	<option value='5'>5</option>
                  	<option value='4'>4</option>
                  	<option value='3'>3</option>
                  	<option value='2'>2</option>
                  	<option value='1'>1</option>
                  </select>
                  </div>
                  </div>
                </div>

                <hr />
                <textarea id="classic" name="bookreport_content"> </textarea>
                <script>
                  ClassicEditor.create(document.querySelector("#classic"), {
                    language: "ko", //언어설정
                  }).catch((error) => {
                    console.error(error);
                  });
                </script>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    
<!-- 책검색창 -->
				    <div id="bookSearch">
				      <div class="container bg-gray">
				        <div>
				          <input type="text" class="bookKeyword" placeholder="책검색" />
				          <button type="button" id="btnBookSearch" class="text-center btn">검색</button>
				        </div>
				        <hr />
				        <ul class="searchBookList"></ul>
				      </div>
				    </div>
				    <!-- 책검색 끝 -->
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
    <script
      type="text/javascript"
      src="../resources/plugins/google-map/gmap.js"
    ></script>

    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>

    <script type="text/javascript">
      // 검색창 숨겨지는 기본 위치
      let offset = $('.write_hanjul_title').offset()
      $('#bookSearch').offset({
    	  left : offset.left,
    	  top : offset.top+80
      })
      
      $("#bookSearch").hide();

      // 책 이름 클릭시 검색창 보이기
      $(".write_hanjul_title").click(function () {
        $("#bookSearch").show();
        $("#bookSearch .bookKeyword").focus();
      });

      // 검색 버튼 클릭시 결과 출력
      $("#btnBookSearch").click(function () {
        $.ajax({
          data: {
            searchKeyword: $(".bookKeyword").val(),
          },
          url: "searchBookAtWrite.do",
          dataType: "json",
          err: function (err) {
            console.log(err);
            alert("에러");
          },
          success: function (result) {
            console.log(result);
            $(".searchBookList > li").remove();
            let cnt = 0;
            for (let book of result) {
              let txt = "<li value='" + book.product_no + "'>";
              txt += "<div class='col-xs-12'>";
              txt +=
                "<div class='col-xs-3'><img class='w-100' src=" +
                book.product_image +
                "></div>";
              txt += "<div class='col-xs-9'><h5>" + book.product_name + "</h5>";
              txt += book.product_writer + "/" + book.product_publisher;
              txt += "</div>";
              txt += "</div>";
              txt += "</li>";

              $(".searchBookList").append(txt);
              if(++cnt == 5){
            	  break;
              }
            }
          },
        });
      });

      // 검색창이 아닌 곳 클릭시 숨김 처리
      $(document).mouseup(function (e) {
        var LayerPopup = $("#bookSearch");
        if (LayerPopup.has(e.target).length === 0) {
          LayerPopup.hide();
        }
      });
      $('.star').hide();
      $(document).on("click", ".searchBookList > li > div", function () {
    	const bookName = $(this).find('h5').text();
        const bookNo = $(this).parent().attr("value");
        $('.write_hanjul_title').val(bookName);
        $('#bookId').val(bookNo);
        $('#bookSearch').hide();
        $('.star').show()
      });
    </script>
    
    <script>
    	// 별점 별찍기
    	// 리뷰 별점에 따라 만들기
    	
    	changeStar(10);
    	$('#stars').change(function(){
	        const stars = $(this).val() * 2;
	        changeStar(stars);
        });
    	
    	function changeStar(stars){
    		console.log(stars);
	        let result = "";
	        if(stars%2 == 0){
	          
	          for(let i=0; i< stars/2; i++){
	            result += "<i class='tf-ion-ios-star'></i>";
	          }
	          for(let i=0; i < 5-(stars/2); i++){
	            result += '<i class="tf-ion-ios-star-outline"></i>';
	          }
	        } else {
	          for(let i=0; i< stars/2 -1; i++){
	            result += "<i class='tf-ion-ios-star'></i>";
	          }
	          result += "<i class='tf-ion-ios-star-half'></i>";
	          
	          for(let i=0; i < 5-(stars/2)-1; i++){
	            result += '<i class="tf-ion-ios-star-outline"></i>';
	          }
	        }
	        $('.review-star').html(result);
    	}
    </script>
    <script>
    	$('#insertBtn').click(function(){
    		const title = $('#bookreport_title').val();
    		if(title == ''){
    			alertWarnMessage("제목을 입력해주세요")
    			return;
    		}
    		const content = $('.ck-content').first().text();
    		if(content.length < 10){
    			alertWarnMessage("내용을 10자 이상 작성해주세요");
    			return;
    		}
    		
    		$('#boardForm').submit();
    	})
    	
    	
	
    </script>
  </body>
</html>
