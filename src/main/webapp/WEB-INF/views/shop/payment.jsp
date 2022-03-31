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
    <title>WEBOOK | 뭐시기</title>

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
    <link rel="stylesheet" href="plugins/slick/slick-theme.css" />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../resources/css/style.css" />
    <style>
      .table > tbody > td {
        height: 80px;
        vertical-align: middle;
      }
      .w-50 {
        width: 50%;
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
              <h1 class="page-name">Checkout</h1>
              <ol class="breadcrumb">
                <li><a href="/main.do">Home</a></li>
                <li class="active">checkout</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
    </section>
    <div class="page-wrapper">
      <div class="checkout shopping">
        <div class="container">
          <div class="row">
            <div class="col-md-8">
              <div class="block billing-details">
                <h4 class="widget-title">상품 내역</h4>
                <div class="checkout-div">
                  <table class="table text-center" id="items_table">
                    <thead>
                      <tr>
                        <th class="text-center">상품명</th>
                        <th class="text-center">정가</th>
                        <th class="text-center">할인가</th>
                        <th class="text-center">수량</th>
                        <th class="text-center">가격</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${productList }" var="product">
                    
                      <tr value="${product.product_no }">
                        <td class="text-left">${product.product_name }</td>
                        <td class="text-center money">${product.product_price }</td>
                        <td class="text-center money-minus">${product.product_sale }</td>
                        <td class="text-center">${product.product_cnt }</td>
                        <td class="text-center money">0</td>
                      </tr>
                      </c:forEach>
                      
                    </tbody>
                  </table>
                </div>
              </div>
              <!-- 배송 정보 -->
              <div class="block billing-details">
                <h4 class="widget-title">배송 정보</h4>
                <div class="checkout-form">
                  <div class="form-group">
                    <button
                      type="button"
                      id="btnHome-my"
                      class="btn btn-main w-50"
                    >
                      내 배송지</button
                    ><button
                      type="button"
                      id="btnHome-add"
                      class="btn btn-main w-50"
                    >
                      신규 배송지 등록
                    </button>
                  </div>
                  <!-- 내 배송지 -->
                  <div id="home-my">
                    <div class="form-group">
                      <label for="user_name">주문자명</label>
                      <input
                        type="text"
                        class="form-control"
                        id="user_name"
                        value="이건희"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="user_addr">주소</label>
                      <input
                        type="text"
                        class="form-control"
                        id="user_addr"
                        value="(80808) 서울특별시 구로구 구일로 4길 65"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="user_detail_addr">상세 주소</label>
                      <input
                        type="text"
                        class="form-control"
                        id="user_detail_addr"
                        value="104동 1306호 (구로구 주공아파트)"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="user_tel">전화번호</label>
                      <input
                        type="text"
                        class="form-control"
                        id="user_tel"
                        value="010-9219-3678"
                        readonly
                      />
                    </div>
                  </div>
                  <!-- / 내 배송지 -->
                  <!-- 배송지 선택 -->
                  <div id="home-add">
                    <div class="form-group">
                      <label for="new_name">주문자명</label>
                      <input type="text" class="form-control" id="new_name" />
                    </div>
                    <div class="clearfix checkout-country-code">
                      <div class="form-group">
                        <label for="new_post_code">우편번호</label>
                        <input
                          type="text"
                          class="form-control"
                          id="new_post_code"
                          readonly
                        />
                      </div>
                      <div>
                        <a id="search-addr" class="btn btn-main">
                          우편번호 찾기
                        </a>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="new_addr">주소</label>
                      <input
                        type="text"
                        class="form-control"
                        id="new_addr"
                        readonly
                      />
                    </div>
                    <div class="clearfix checkout-country-code">
                      <div class="form-group">
                        <label for="new_detailAddr">상세 주소</label>
                        <input
                          type="text"
                          class="form-control"
                          id="new_detailAddr"
                        />
                      </div>
                      <div class="form-group">
                        <label for="new_extraAddr">참고 항목</label>
                        <input
                          type="text"
                          class="form-control"
                          id="new_extraAddr"
                          readonly
                        />
                      </div>
                    </div>
                    <div class="form-group text-right">
                      <button id="" class="btn btn-solid-border">
                        내 배송지로 저장
                      </button>
                    </div>
                    <div class="form-group">
                      <label for="new_tel">전화번호</label>
                      <input type="text" class="form-control" id="new_tel" />
                    </div>
                  </div>
                  <!-- / 배송지 선택 -->
                  <div class="form-group">
                    <select class="w-100">
                      <option>== 배송시 요구사항 ==</option>
                      <option>문 앞에 놔주세요</option>
                      <option>경비실에 맡겨주세요</option>
                      <option>부재시 연락주세요</option>
                    </select>
                  </div>
                </div>
              </div>
              <!-- /주소 입력 -->

              <!-- 쿠폰 적용 -->
              <div class="block">
                <div>
                  <h4 class="widget-title">쿠폰</h4>

                  <div
                    class="col-md-3 col-md-offset-2 col-sm-3 col-sm-offset-2"
                  >
                    <h4>할인 금액</h4>
                  </div>
                  <div class="col-md-3 col-sm-3 text-right">
                    <h4 id="product_discount" class="money-minus">0</h4>
                  </div>

                  <div
                    class="col-md-3 text-left col-md-offset-2 col-sm-3 col-sm-offset-2"
                  >
                    <h4>쿠폰 할인</h4>
                  </div>
                  <div class="col-md-3 col-sm-3 text-right">
                    <h4 id="coupon_discount" class="money-minus">0</h4>
                  </div>
                  <div class="col-md-4 col-sm-4">
                    <button
                      id="btnCoupon"
                      class="btn btn-main w-100"
                      data-toggle="modal"
                      data-target="#coupon-modal"
                    >
                      쿠폰 적용
                    </button>
                  </div>
                </div>
              </div>

              <!-- / 쿠폰 적용 -->
              <!-- 결제 방식 선택 -->
              <div class="block billing-details col-md-12 col-sm-12">
                <h4 class="widget-title">결제 방식</h4>
                <form class="checkout-form">
                  <div class="form-group">
                    <button type="button" id="btnPay-easy" class="btn btn-main">
                      간편 결제</button
                    ><button
                      type="button"
                      id="btnPay-other"
                      class="btn btn-main"
                    >
                      다른 결제 방법
                    </button>
                  </div>
                  <!-- 간편 결제-->
                  <div id="pay-easy">
                    <div class="inline-block">
                      <input
                        type="radio"
                        name="pay-easy"
                        class="pay-easy"
                        value="kakao"
                      /><label class="pl-1 pr-4">카카오페이</label>
                    </div>
                    <div class="inline-block">
                      <input
                        type="radio"
                        name="pay-easy"
                        class="pay-easy"
                        value="toss"
                      /><label class="pl-1 pr-4">토스</label>
                    </div>
                  </div>
                  <!-- / 간편결제 -->
                  <!-- 다른 결제 방법 -->
                  <div id="pay-other">
                    <div class="inline-block">
                      <input
                        type="radio"
                        name="pay-other"
                        class="pay-other"
                        value="card"
                      /><label class="pl-1 pr-4">신용카드</label>
                    </div>
                    <div class="inline-block">
                      <input
                        type="radio"
                        name="pay-other"
                        class="pay-other"
                        value="무통장결제"
                      /><label class="pl-1 pr-4">무통장 결제</label>
                    </div>
                  </div>
                  <!-- / 다른 결제 방법 -->
                </form>
              </div>
            </div>

            <!-- 결제 방식 -->
            <div class="col-md-4 col-sm-12">
              <div class="product-checkout-details">
                <div class="block">
                  <h4 class="widget-title">결제하기</h4>

                  <ul class="summary-prices">
                    <li>
                      <span>상품 가격</span>
                      <span class="price money" id="sumPrice">0</span>
                    </li>
                    <li>
                      <span>배송비</span>
                      <span id="postPrice" class="money">3500</span>
                    </li>
                    <li>
                      <span>할인가격</span>
                      <span id="sumDiscount" class="money-minus">0</span>
                    </li>
                  </ul>
                  <div class="summary-total">
                    <span>결제 금액</span>
                    <span id="totalPrice" class="money">0</span>
                  </div>
                  <div class="verified-icon">
                    <!-- 결제 정보 폼 -->
                    <form id="account_form" method="post">
                      <input id="account_name" name="user_email" type="hidden" />
                      <input id="account_post_code" name="post_code" type="hidden" />
                      <input id="account_address" name="delivery_place" type="hidden" />
                      <input id="account_tel" name="delivery_tel" type="hidden" />
                      <input id="account_coupon_id" name="coupon_no" type="hidden" />
                      <input id="account_method" type="hidden" />
                      <input id="account_post_price" name="post_price" type="hidden" />
                    </form>
                    <!-- / 결제 정보 폼-->
                    <button
                      id="btnPayment"
                      type="button"
                      class="btn btn-main w-100"
                    >
                      결제하기
                    </button>
                  </div>
                </div>
              </div>
            </div>
            <!-- / 결제 방식 -->
          </div>
        </div>
      </div>
    </div>

    <!-- 쿠폰 모달 -->
    <div class="modal fade" id="coupon-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <form>
              <div class="form-group">
                <table class="table">
                  <thead>
                    <tr>
                      <th class="text-center">쿠폰명</th>
                      <th class="text-center">유효기간</th>
                      <th class="text-center">할인금액</th>
                      <th class="text-center">선택</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>첫 구매혜택 쿠폰</td>
                      <td class="text-center">4월 29일까지</td>
                      <td class="text-center money">5000</td>
                      <td class="text-center">
                        <input
                          class="radioCoupon"
                          name="coupon"
                          type="radio"
                          value="쿠폰번호1"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>첫 구매혜택 쿠폰</td>
                      <td class="text-center">4월 29일까지</td>
                      <td class="text-center money">6000</td>
                      <td class="text-center">
                        <input
                          class="radioCoupon"
                          name="coupon"
                          type="radio"
                          value="쿠폰번호2"
                        />
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="text-right">
                <div class="w-40 inline-block">
                  <button
                    type="button"
                    class="w-100 btn btn-main"
                    data-dismiss="modal"
                    aria-label="Close"
                    id="coupon_use"
                  >
                    선택 쿠폰 적용
                  </button>
                </div>
                <div class="w-40 inline-block">
                  <button
                    type="button"
                    class="w-100 btn btn-main"
                    data-dismiss="modal"
                    aria-label="Close"
                    id="coupon_unuse"
                  >
                    쿠폰 미적용
                  </button>
                </div>
              </div>
            </form>
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

    <!-- 아임포트 -->
    <script
      type="text/javascript"
      src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"
    ></script>

    <!-- Main Js File -->
    <script src="../resources/js/script.js"></script>

    <script>
      $(function () {
        // 주소지 선택창
        $("#home-add").hide();
        $("#btnHome-add").addClass("btn-solid-border");
        $("#btnHome-my").click(function (e) {
          $("#home-my").show();
          $("#home-add").hide();
          $("#btnHome-add").addClass("btn-solid-border");
          $(this).removeClass("btn-solid-border");
        });

        $("#btnHome-add").click(function (e) {
          $("#home-add").show();
          $("#home-my").hide();
          $("#btnHome-my").addClass("btn-solid-border");
          $(this).removeClass("btn-solid-border");
        });

        // 결제 방법 선택창
        $("#pay-other").hide();
        $("#btnPay-other").addClass("btn-solid-border");
        $("#btnPay-easy").click(function (e) {
          $("#pay-easy").show();
          $("#pay-other").hide();
          $("#btnPay-other").addClass("btn-solid-border");
          $(this).removeClass("btn-solid-border");
          $(".pay-other").prop("checked", false);
        });

        $("#btnPay-other").click(function (e) {
          $("#pay-other").show();
          $("#pay-easy").hide();
          $("#btnPay-easy").addClass("btn-solid-border");
          $(this).removeClass("btn-solid-border");
          $(".pay-easy").prop("checked", false);
        });
      });

      var IMP = window.IMP;
      IMP.init("imp90051783"); // "iamport" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

      $("#btnPayment").click(function () {
    	  
        if (isChecked()) {
          // 상품명
          let pname = "";
          if (
            $(".account_pname").length > 1 ||
            $(".account_pcnt").first().val() > 1
          ) {
            let cnt = 0;
            $(".account_pname").each(function () {
              cnt += Number($(this).next().val());
            });
            pname =
              $(".account_pname").first().val() + " 외 " + (cnt - 1) + "개";
          } else {
            pname = $(".account_pname").first().val();
          }
          const name = $("#account_name").val(); // 이름
          const tel = $("#account_tel").val(); // 번호
          const addr = $("#account_address").val(); // 주소
          const postcode = $("#account_post_code").val(); // 우편번호

          // IMP.request_pay(param, callback) 호출
          IMP.request_pay(
            {
              pg: "html5_inicis", // version 1.1.0부터 지원.
              /*
      'kakao':카카오페이,
      html5_inicis':이니시스(웹표준결제)
      'nice':나이스페이
      'jtnet':제이티넷
      'uplus':LG유플러스
      'danal':다날
      'payco':페이코
      'syrup':시럽페이
      'paypal':페이팔
      */
              pay_method: "card",
              /*
      'samsung':삼성페이,
      'card':신용카드,
      'trans':실시간계좌이체,
      'vbank':가상계좌,
      'phone':휴대폰소액결제
      */
              merchant_uid: "merchant_" + new Date().getTime(),

              name: pname,

              amount: 100,

              buyer_name: name,
              buyer_tel: tel,
              buyer_addr: addr,
              buyer_postcode: postcode,
              m_redirect_url: "http://127.0.0.1:5500/project/confirmation.html",
              /*
      모바일 결제시,
      결제가 끝나고 랜딩되는 URL을 지정
      (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
      */
            },
            function (rsp) {
              console.log(rsp);
              if (rsp.success) {
                var msg = "결제가 완료되었습니다.";
                msg += "고유ID : " + rsp.imp_uid;
                msg += "상점 거래ID : " + rsp.merchant_uid;
                msg += "결제 금액 : " + rsp.paid_amount;
                msg += "카드 승인번호 : " + rsp.apply_num;
                // 페이지 넘기기 나중에 jsp로 처리
                window.location.href =
                  "http://127.0.0.1:5500/project/confirmation.html";
              } else {
                var msg = "결제에 실패하였습니다.";
              }
              alert(msg);
            }
          );
        }
      });
    </script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
      // 주소지
      $("#search-addr").click(function (e) {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ""; // 주소 변수
            var extraAddr = ""; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === "R") {
              // 사용자가 도로명 주소를 선택했을 경우
              addr = data.roadAddress;
            } else {
              // 사용자가 지번 주소를 선택했을 경우(J)
              addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === "R") {
              // 법정동명이 있을 경우 추가한다. (법정리는 제외)
              // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
              if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
                extraAddr += data.bname;
              }
              // 건물명이 있고, 공동주택일 경우 추가한다.
              if (data.buildingName !== "" && data.apartment === "Y") {
                extraAddr +=
                  extraAddr !== ""
                    ? ", " + data.buildingName
                    : data.buildingName;
              }
              // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
              if (extraAddr !== "") {
                extraAddr = " (" + extraAddr + ")";
              }
              // 조합된 참고항목을 해당 필드에 넣는다.
              document.getElementById("new_extraAddr").value = extraAddr;
            } else {
              document.getElementById("new_extraAddr").value = "";
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("new_post_code").value = data.zonecode;
            document.getElementById("new_addr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("new_detailAddr").focus();

            // 입력값 반영
            input_new_acc();
          },
        }).open();
      });
    </script>

    <!-- 입력값 히든 폼에 넣기 -->
    <script>
      let sum_price = 0; // 상품 전체 가격 (할인x)
      let sum_discount = 0; // 상품 전체 할인 가격 (쿠폰x)

      // 상품 개별
      let idx = 0;
      $("#items_table > tbody > tr").each(function () {
        const id = $(this).attr("value");
        const name = $(this).children("td:nth-child(1)").text().trim();
        const price = $(this).children("td:nth-child(2)").text().trim(); // 상품 개별 가격
        sum_price += Number(price);

        const cnt = $(this).children("td:nth-child(4)").text().trim(); // 개수
        const discount = $(this).children("td:nth-child(3)").text().trim(); // 할인가격

        sum_discount += discount * cnt; // 상품 할인 금액

        $(this)
          .children("td:nth-child(5)")
          .text((price - discount) * cnt);
        let item = "";
        item += "<div class='acc_plist'>";
        item += "<input class='account_pid' name='list[" + idx + "].product_no' value='" + id + "' hidden>"; // 상품아이디
        item += "<input class='account_pcnt' name='list[" + idx + "].product_cnt' value='" + cnt + "' hidden>"; // 개수
        item += "</div>";
        $("#account_form").append(item);
        idx++;
      });

      $("#sumPrice").text(sum_price);
      $("#product_discount").text(sum_discount);
      $("#sumDiscount").text(sum_discount);

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

      // 배송비
      const post_price = Number(
        $("#postPrice")
          .text()
          .replace(/[^0-9]/g, "")
      );
      $("#account_post_price").val(post_price);

      // 쿠폰 사용
      $("#coupon_use").click(function () {
        const cDis = $(".radioCoupon:checked")
          .parent()
          .prev()
          .text()
          .replace(/[^0-9]/g, "");
        const cDisNo = $(".radioCoupon:checked").attr("value");
        $("#account_coupon_id").val(cDisNo);
        const coupon_discount = Number(cDis);
        change_coupon(coupon_discount);
      });
      $("#coupon_unuse").click(function () {
        $(".radioCoupon").prop("checked", false);
        change_coupon(0);
      });
      input_user_acc(); // 유저 주소 정보 넣기
      calTotalPrice(); // 초기 결제 금액

      // 내 배송지 정보 넣기
      function input_user_acc() {
        $("#account_name").val($("#user_name").val());

        // 주소
        let addr = $("#user_addr").val();
        const addrArr = addr.split(")");
        const postcode = addrArr[0].replace("(", "");
        $("#account_post_code").val(postcode);
        $("#account_address").val(
          addrArr[1] + " " + $("#user_detail_addr").val()
        );

        // 전화번호
        $("#account_tel").val($("#user_tel").val());
      }

      $("#home-add input").each(function () {
        $(this).change(function () {
          input_new_acc();
        });
      });

      $("#btnHome-add").click(function () {
        input_new_acc();
      });

      $("#btnHome-my").click(function () {
        input_user_acc();
      });

      // 신규 배송지 목록 넣기
      function input_new_acc() {
        $("#account_name").val($("#new_name").val());

        // 주소
        let addr = [];
        addr.push($("#new_addr").val());
        addr.push($("#new_detailAddr").val());
        addr.push($("#new_extraAddr").val());

        const postcode = $("#new_post_code").val();
        $("#account_post_code").val(postcode);
        $("#account_address").val(addr.join(" "));

        // 전화번호
        $("#account_tel").val($("#new_tel").val());
      }

      // 쿠폰 변경
      function change_coupon(coupon_discount) {
        if (coupon_discount == 0) {
          $("#coupon_discount").text("0" + "원");
        } else {
          $("#coupon_discount").text(
            "-" + Number(coupon_discount).toLocaleString() + "원"
          );
        }
        $("#sumDiscount").text(
          "-" + (sum_discount + coupon_discount).toLocaleString() + "원"
        );
        calTotalPrice(coupon_discount);
      }
      // 결제 금액 계산
      function calTotalPrice(coupon_discount = 0) {
        $("#totalPrice").text(
          (
            sum_price +
            post_price -
            sum_discount -
            coupon_discount
          ).toLocaleString() + "원"
        );
      }

      // 결제방식 가져오기
      $(".pay-easy").click(function () {
        $("#account_method").val($(".pay-easy:checked").val());
      });
      $(".pay-other").click(function () {
        $("#account_method").val($(".pay-other:checked").val());
      });

      // 유효성 검사
      function isChecked() {
        if ($("#account_id").val() == "") {
          alert("잘못된 접근 입니다");
          return false;
        }
        if ($("#account_name").val() == "") {
          alert("이름을 입력해주세요");
          return false;
        }
        if (
          $("#account_post_code").val() == "" ||
          $("#account_address").val() == ""
        ) {
          alert("주소를 입력해주세요");
          return false;
        }
        if ($("#account_tel").val() == "") {
          alert("전화번호를 입력해주세요");
          return false;
        }
        if ($("#account_method").val() == "") {
          alert("결제 수단을 선택해주세요");
          return false;
        }
        return true;
      }
    </script>
  </body>
</html>
    