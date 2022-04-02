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
    <meta charset="utf-8" />
    <title>Aviato | E-commerce template</title>

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
    <link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png" />

    <!-- Themefisher Icon font -->
    <link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css" />
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css" />

    <!-- Animate css -->
    <link rel="stylesheet" href="../resources/plugins/animate/animate.css" />
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="../resources/plugins/slick/slick.css" />
    <link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css" />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../resources/css/style.css" />
    <style>
      .w-50 {
        width: 50%;
      }
      .w-40 {
        width: 40%;
      }
      .inline-block {
        display: inline-block;
      }

      .pr-2 {
        padding-right: 20px;
      }
      .pr-4 {
        padding-right: 40px;
      }
      .pl-1 {
        padding-left: 10px;
      }
      .pl-2 {
        padding-left: 20px;
      }
      .mr-1 {
        margin-right: 10px;
      }
      .ml-1 {
        margin-left: 10px;
      }
    </style>
  </head>

  <body id="body">
<%@ include file="/WEB-INF/views/header.jsp" %> 
  <%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>
    <!-- Page Wrapper -->
    <section class="page-wrapper success-msg">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <div class="block text-center">
              <i class="tf-ion-android-checkmark-circle"></i>
              <h2 class="text-center">주문이 완료되었습니다</h2>
              <div class="col-xs-4 text-center">
                <h4>주문번호:</h4>
              </div>
              <div class="col-xs-8 text-right"><h4>${param.order_no }</h4></div>
              <div class="col-xs-4 text-center">
                <h4>주문상품:</h4>
              </div>
              <div class="col-xs-8 text-right"><h4>${productName}</h4></div>
              <a href="#" class="btn btn-solid-border mt-20 mr-1"
                >다른 상품 보러가기</a
              ><a href="#" class="btn btn-solid-border mt-20 ml-1"
                >주문 확인 하러가기</a
              >
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /.page-warpper -->
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
