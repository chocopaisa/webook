<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>WEBOOK | 카트</title>

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
    .cnt {
        width: 50px;
        display: inline-block;
        text-align: right;
      }
	  .align-middle {
		  height: 90px;
		  
		  
	  }
	  div.align-middle {
		  display: table;
		  
	  }
	  div.align-middle > p {
		display: table-cell;
		vertical-align: middle;
	}
	.bg-gray {
		background-color: gray;
	}
	.delete-btn {
		text-align: right;
	}
	.delete-btn > h4 {
		display: inline;
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
  <%@ include file="/WEB-INF/views/shop/shopheader.jsp" %>
    <section class="page-header">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="content">
              <h1 class="page-name">Cart</h1>
              <ol class="breadcrumb">
                <li><a href="main.do">Home</a></li>
                <li class="active">cart</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>

    <div class="page-wrapper">
      <div class="cart shopping">
        <div class="container">
          <div class="row">
            <div class="col-md-10 col-md-offset-1">
              <div class="block">
                <div class="product-list">
                <c:if test="${items ne null }">
					<div class="delete-btn"><h4 class="pr-2"><text class='checkedCnt'>0</text>개 선택</h4><button class="btn btn-main" id="removeCartList">삭제하기</button></div>
					</c:if>
                  <div>
                  <form id='cart-form' action="payment_list.do" method="post">
                    <table class="table text-center">
                      <thead>
                        <tr>
                          <th class="text-center">
                            <input type="checkbox" id="checkbox-all" />
                          </th>
                          <th class="text-center">전체선택</th>
                          <th class="text-center">상품명</th>
                          <th class="text-center">판매가</th>
                          <th class="text-center">할인가격</th>
                          <th class="text-center">수량</th>
                          <th class="text-center">가격</th>
                          <th class="text-center">구매/삭제</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:if test="${items eq null }">
                      <tr>
                      	<td colspan="8" class="text-center">
                      	<h3>카트가 비어있습니다</h3>
                      	<h3>상품을 추가해주세요</h3>
                      	</td>
                      </tr>
                      </c:if>
                      <c:if test="${items ne null }">
                      <c:forEach var="idx" begin="1" end="${fn:length(items)  }">
                        <tr class="">
                          <td><input type="checkbox" class="ckb" name="list[${idx-1 }].product_no" value='${items[idx-1].product_no }'/></td>
                          <td class="text-center">
                            <div class="product-info">
                              <img width="80" src="${items[idx-1].product_image }" alt="" />
                            </div>
                          </td>
                          <td class="text-left"><a href="#!">${items[idx-1].product_name }</a></td>
                          <td class="text-right price money">${items[idx-1].product_price }</td>
                          <td class="text-right discount money-minus">${items[idx-1].product_sale }</td>
                          <td class="text-center">
                            <input
                              type="text"
                              class="form-control cnt"
                              name="list[${idx-1}].product_cnt"
                              value="${items[idx-1].product_cnt }"
                              maxlength="1"
                            />
                          </td>
                          <td class="text-right totalPrice">0원</td>
                          <td class="text-center">
                            <a href="payment.do?product_no=${items[idx-1].product_no }&product_cnt=1" class="btn btn-main btn-small">구매</a>
                            
                            <a href="removeCart.do?product_no=${items[idx-1].product_no }" class="btn btn-small">삭제</a>
                          </td>
                        </tr>
                        </c:forEach>
                        </c:if>
                      </tbody>
                    </table>
                    </form>
                    <c:if test="${items ne null }">
					<div class="bg-gray">
					<div class="col-sm-12 col-md-12">
						<h4>선택한 상품 <text class="checkedCnt">0</text>개 (<text class="totalCnt">0</text>개)</h4>
					</div>
					
                      <div class="col-sm-3 col-sm-offset-1 col-md-3 col-md-offset-1">
						  <div class="text-right">
						<h4>상품가격</h4>
					  </div>
					  <div class="text-right"><h3 id="sumPrice">20,000원</h3></div>
					</div>
					  <div class="col-sm-1 col-md-1 text-center align-middle"><p><h2>+</h2></p></div>
                      <div class="col-sm-3 col-md-3"><div class="text-right">
						<h4>배송비</h4>
					  </div>
					  <div class="text-right"><h3 id="postPrice">3,000원</h3></div></div>
					  <div class="col-sm-1 col-md-1 text-center align-middle"><p><h2>=</h2></p></div>
                      <div class="col-sm-3 col-md-3"><div class="text-right">
						<h4>주문 가격</h4>
					  </div>
					  <div class="text-right"><h3 id="sumTotalPrice">20,000원</h3></div></div>
                    </div>
                    </c:if>
				</div>
					<c:if test="${items ne null }">
                    <a class="btn btn-main pull-right col-xs-12 mt-2" id="paymenyBtn"
                      >결제 하러 가기</a
                    >
                    </c:if>
      </div>
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
	 	// 가격에 마이너스+콤마+원
	    $(".money").each(function () {
	      let price = Number($(this).text());
	      $(this).text(price.toLocaleString() + "원");
	    });
	
	    $(".money-minus").each(function () {
	      let price = Number($(this).text());
	      if (price == 0) {
	        $(this).text("0원");
	      } else {
	        $(this).text("-" + price.toLocaleString() + "원");
	      }
	    });
    </script>
    <script>
      checkChecked();
      // 체크박스
      $('.ckb').change(function(){
        checkChecked()
        if(!$(this).is(':checked')){
          $('#checkbox-all').prop('checked', false);
        }
      })
      // 전체 체크박스
      $('#checkbox-all').change(function(){
        
        if($(this).is(':checked')){
          
          $('.ckb').each(function(){
            $(this).prop('checked', true);
          })
        } else {
          $('.ckb').each(function(){
            $(this).prop('checked', false);
          })
        }
        checkChecked();
        
      })
      $('.cnt').change(function(){
        checkChecked()
      })
      // 전체 체크
      function checkChecked(){
        // 체크된 개수
        $('text.checkedCnt').each(function(){
          $(this).text($('.ckb:checked').length);
          
        });
        // 체크된 총 개수
        let cnt = 0;
        $('.ckb:checked').parent().parent().find('.cnt').each(function(){
          cnt += Number($(this).val());
        });
        $('.totalCnt').text(cnt);        
        
        // 개별 가격
        let sumPrice = 0;
        $('.ckb').parent().parent().each(function(){
          const price = $(this).find('.price').text().replace(/[^0-9]/g,'');
          const cnt = $(this).find('.cnt').val();
          const discount = $(this).find('.discount').text().replace(/[^0-9]/g,'');
          const totalPrice = (price-discount) * cnt;
          if($(this).find('.ckb').is(':checked')){
            sumPrice += totalPrice;
          }
          
          $(this).find('.totalPrice').text(totalPrice.toLocaleString()+'원');
        });

        $('#sumPrice').text(sumPrice.toLocaleString()+'원');
        $('#sumTotalPrice').text((sumPrice + 3000).toLocaleString() + '원');
      }
      
      $('#paymenyBtn').click(function(){
    	  $('#cart-form').submit()
      })
    </script>
    <script type="text/javascript">
    $('#removeCartList').click(function(){
    	$('#cart-form').attr('action','removeCartList.do').submit();
    })
    
    </script>
  </body>
</html>
    