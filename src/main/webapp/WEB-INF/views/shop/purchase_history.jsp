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
<html lang="ko">
<head>

  <!-- Basic Page Needs
  ================================================== -->
  <meta charset="utf-8">
  <title>Webook | 구매내역 </title>

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

  <style type="text/css">
  /*********** 상단바 **********/
	.pl-2 {
		padding-left: 20px;
	}
	.pr-2 {
		padding-right: 20px;
	}
	ul.top-menu {
		font-size : 20px;
	}
	.media-object{
		max-width: 150px;
		height: auto;
	}
	#navbar > div {
		display: inline-block;
	}
</style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>

<script src="shop-total.js"></script> <!--********************** 자바스크립트 파일 옮기고 경로 다시 설정********************** -->

</head>

<body id="body">

  <!-- Start Top Header Bar -->
  
  <%@ include file="/WEB-INF/views/header.jsp" %>

<%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>
  <!-- end header bar -->
  
  
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
                      <a href="#" class="btn btn-solid-border w-100">글 관리</a>
                    </li>
                    <li class="list">
                      <a href="#" class="btn btn-main w-100">회원탈퇴</a>
                    </li>
                 </ul>
              </div>
            </aside>
            </div>
          <!-- 사이드 닫음 -->
       
  <div class="col-md-9">
    <div class="block text-center w-50" style="margin-left: 10px;">
      <h2 class="text-left">배송조회 및 구매내역</h2>
     
    </div>
  </div>
  <section class="user-dashboard page-wrapper" >
    <div class="container">
      <div class="row">
        <div class="col-md-4">
         
          <div class="dashboard-wrapper user-dashboard" style="width: 1000px; margin-left: 10px;">  
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>주문번호</th>
                    <th>주문 날짜</th>
                    <th>상품 이름</th>
                    <th>총 결제 금액</th> 
                    <th>송장번호</th> 
                    <th>배송상황</th>
                    
		
                  </tr>
                </thead>
                <tbody>
                
                <c:forEach items="${list }" var="lst">
               
                  <tr>
                    <td>${lst.ORDER_NO }</td>
                    <td>${lst.PAYMENT_DATE }</td>
                  <td>${lst.PRODUCT_NAME} 외 ${lst.ORDER_CNT-1 }개</td>
                    <td>${lst.TOTAL_PRICE }</td>
                   
                    <td>183215684</td>

                    <td><span class="label label-primary">${lst.DELIVERY_INFO }</span></td>
                  </tr>
                  </c:forEach>
                  
                  
                  
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>


    
  </section>

    <section class="user-dashboard page-wrapper" >


  <div class="col-md-3" style="margin-bottom:500px;"  >
      
  </div>

  <div class="col-md-9">
    <div class="block text-center w-50">
      <h2 class="text-left" style="margin-left: 10px;">이전 구매내역</h2>
    
    </div>
  </div>
  <section class="user-dashboard page-wrapper" >
    <div class="container">
      <div class="row">
        <div class="col-md-4">
        
          <div class="dashboard-wrapper user-dashboard" style="width: 1000px; margin-left: 10px;">  
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>주문번호</th>
                    <th>주문 날짜</th>
                    <th>상품 이름</th>
                    <th>총 결제 금액</th> 
              
                    

                  </tr>
                </thead>
                <tbody>
                
                  
                
                  
                </tbody>
              </table>
            </div>
          </div>
          <i class="btn btn-main btn-small btn-round" style="margin-left: 450px; margin-top: 10px;">더보기</i>
        </div>
      </div>

    </div>
  </section>


  
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