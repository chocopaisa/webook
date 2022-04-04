<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<html lang="ko">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Webook | E-commerce template</title>

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
  <style>
   .w-50 {
     width:50%;
  }
  .table-report > thead{
    border-bottom: 1px solid;
  }
  .table-report > tbody > tr:nth-child(even){
    border-bottom: 1px dotted;
  }
  .table-report > tbody > tr > td {
    padding: 10px;
  }
  .mb-2 {
    margin-bottom: 20px;
  }
  .pr-2 {
  	padding-right: 20px;
  }
  .pl-2 {
  	padding-left: 20px;
  }
  </style>


</head>

<body id="body">
<%@ include file="/WEB-INF/views/header.jsp" %>

  <section class="page-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="content">
            <h1 class="page-name">My Page</h1>
            <ol class="breadcrumb">
              <li><a href="../">Home</a></li>
              <li class="active">MyPage</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="page-wrapper">
    <div class="container">
      <div class="row">
        <!--사이드 -->
        <div class="col-md-3">
          <aside class="sidebar">
            <div class="navigation">
              <div class="menuToggle"></div>
                  <ul>
                     <li class="list">
                       <h4>마이룸<hr/></h4>
                     </li>
                     <li class="list">
                       <a href="#" class="btn btn-solid-border w-100" >상품 주문 관리</a>
                     </li>
                    <li class="list">
                       <a href="#" class="btn btn-solid-border w-100">회원 정보 관리</a>
                    </li>
                     <li class="list">
                      <a href="#" class="btn btn-main w-100">글 관리</a>
                    </li>
                    <li class="list">
                      <a href="#" class="btn btn-solid-border w-100">회원탈퇴</a>
                    </li>
                 </ul>
              </div>
            </aside>
            </div>
          <!-- 사이드 닫음 -->
        <div class="col-md-9">
          <!-- 게시글 관리 -->
          <button id="report-list" class="btn btn-main mb-2">내가 쓴 게시글</button><button id="comment-list" class="btn btn-main btn-solid-border mb-2">내가 쓴 댓글</button>
          <div id="reportList">
          <div class="block w-100">
            
            
           <div>
           <table class="table-report w-100">
             
             <tbody class="bg-gray">
             <c:if test="${ empty reports }">
             	<tr>
             		<td colspan="3" class="text-center"> 작성한 글이 없습니다 </td>
             	</tr>
             </c:if>
             
             
             <c:forEach items="${reports }" var="report">
              <tr>
                <td><a href="#"><h4>${report.bookreport_title }</h4></a></td>
                <td class="text-right">${report.report_kind }</td>
                <td class="text-right">${report.write_date }</td>
              </tr>
              <tr>
                <td colspan="3"><div class="report-content">${report.bookreport_content }</div></td>
              </tr>
              </c:forEach>
              
            </tbody>
            </table>
            
          </div>
        </div>
        <div class="text-center">
          <ul class="pagination post-pagination">
            <li><a href="#!">Prev</a>
            </li>
            <li class="active"><a href="#!">1</a>
            </li>
            <li><a href="#!">2</a>
            </li>
            <li><a href="#!">3</a>
            </li>
            <li><a href="#!">4</a>
            </li>
            <li><a href="#!">5</a>
            </li>
            <li><a href="#!">Next</a>
            </li>
          </ul>
        </div>
        </div>
        <div id="commentList">
          <!-- 게시글 관리 끝 -->
          <!-- 댓글 관리 -->
          <div class="block w-100">
           <table class="table-report w-100">
             
             <tbody class="bg-gray">
             <c:if test="${ empty comments }">
             	<tr><td colspan="3" class="text-center"> 작성한 댓글이 없습니다 </td></tr>
             </c:if>
             <c:forEach items="${comments}" var="comment">
              <tr>
                <td colspan="3"><div class="report-content"><h4>${comment.COMMENT_CONTENT }</h4></div></td>
              </tr>
              <tr>
                <td><a href="#">${comment.BOOKREPORT_TITLE }</a></td>
                <td class="text-right">${comment.REPORT_KIND }</td>
                <td class="text-right">${comment.COMMENT_WRITE_DATE }</td>
              </tr>
              </c:forEach>
            </tbody>
            </table>
            <div class="text-center">
              <ul class="pagination post-pagination">
                <li><a href="#!">Prev</a>
                </li>
                <li class="active"><a href="#!">1</a>
                </li>
                <li><a href="#!">2</a>
                </li>
                <li><a href="#!">3</a>
                </li>
                <li><a href="#!">4</a>
                </li>
                <li><a href="#!">5</a>
                </li>
                <li><a href="#!">Next</a>
                </li>
              </ul>
            </div>
          </div>
          <!-- 댓글 관리 끝 -->
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
      $('#commentList').hide();
      $('#report-list').click(function(){
        $('#commentList').hide();
        $('#reportList').show();
        $(this).removeClass("btn-solid-border")
        $('#comment-list').addClass("btn-solid-border")
      })
      $('#comment-list').click(function(){
        $('#reportList').hide();
        $('#commentList').show();
        $(this).removeClass("btn-solid-border")
        $('#report-list').addClass("btn-solid-border")
      })
    </script>


  </body>
  </html>