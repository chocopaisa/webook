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
<html lang="ko">
  <head>
    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8" />
    <title>Webook | E-commerce template</title>

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
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.png" />

    <!-- Themefisher Icon font -->
    <link rel="stylesheet" href="resources/plugins/themefisher-font/style.css" />
    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="resources/plugins/bootstrap/css/bootstrap.min.css" />

    <!-- Animate css -->
    <link rel="stylesheet" href="resources/plugins/animate/animate.css" />
    <!-- Slick Carousel -->
    <link rel="stylesheet" href="resources/plugins/slick/slick.css" />
    <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css" />

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="resources/css/style.css" />
  </head>

  <body id="body">
    <section class="signin-page account">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <div class="block text-center">
              <a class="logo" href="index.html">
                <h1>WEBOOK</h1>
              </a>
              <h2 class="text-center">회원가입</h2>
              <form class="text-left clearfix" id="frm" action="userInsert.do">
                <div class="form-group">
                  이메일
                  <input
                    type="text"
                    name="email"
                    id="email"
                    class="form-control"
                    placeholder="이메일을 입력하세요."
                  />
                </div>
                비밀번호
                <div class="form-group">
                  <input
                    type="password"
                    name="password"
                    id="password"
                    class="form-control"
                    placeholder="비밀번호를 입력하세요."
                  />
                </div>
                비밀번호 확인
                <div class="form-group">
                  <input
                    type="password"
                    name="password_check"
                    id="password_check"
                    class="form-control"
                    placeholder="비밀번호를 재입력하십시오."
                  />
                </div>
                이름
                <div class="form-group">
                  <input
                    type="text"
                    name="name"
                    id="name"
                    class="form-control"
                    placeholder="이름을 입력하세요."
                  />
                </div>
                성별
                <div class="form-group">
                  <div class="col-md-6">
                    <input type="radio" name="gender" id="" value="man" checked/>
                    MALE
                  </div>
                  <div class="col-md-6">
                    <input
                      type="radio"
                      name="gender"
                      id=""
                      value="woman"
                    />
                    FEMALE
                  </div>
                </div>
                생년월일
                <div class="form-group">
                  <input
                    type="date"
                    name="birth_date"
                    id="birth_date"
                    value=""
                    max=""
                    min=""
                  />
                </div>
                휴대전화
                <div class="form-group">
                  <input
                    type="tel"
                    name="Tel"
                    id="tel"
                    class="form-control"
                    placeholder="전화번호를 입력하세요."
                  />
                </div>
                <div class="text-center">
                  <button
                    type="button"
                    id="btn"
                    class="btn btn-main text-center"
                  >
                    가입하기
                  </button>
                </div>
              </form>
              <p class="mt-20">
                이미 가입되있으십니까?<a href="login.html"> 로그인</a>
              </p>
              <p>
                <a href="forget-password.html"> 패스워드를 잊어버리셨습니까?</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 
    Essential Scripts
    =====================================-->

    <!-- Main jQuery -->
    <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Bootstrap Touchpin -->
    <script src="resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
    <script type="text/javascript" src="resources/plugins/google-map/gmap.js"></script>

    <!-- Main Js File -->
    <script src="js/script.js"></script>

    <script>
      $("#btn").click(function(){
          if(checks()){
        	  $("#frm").submit()
          }
      });

      function checks() {
        var getEmail =
          /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var getPassword = /^[A-Za-z0-9]{4,12}$/;
        var getName = /^[가-힣]{2,6}$/;
        var getPhone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

       

       //아이디 공백 확인
       if ($("#email").val() == "") {
          const err =
            '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 이메일을 작성해주세요</div>';

          $("#email").parent().append(err);
          $("#email").focus();
          return false;
        }
        $("#frm").remove();

        // 아아디 유효성 검사
        if(!getEmail.test($("#email").val())){
        alert("이메일 양식에 맞지 않습니다.");
        $("#email").val("");
        $("#email").focus();
        return false;
       }


       //비밀번호 공백 확인
       if ($("#password").val() == "") {
          const err =
          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 비밀번호를 작성해주세요.</div>';

          $("#password").parent().append(err);
          $("#password").focus();
          return false;
        }
        $("#frm").remove();

         // 비밀번호 유효성 검사
         if(!getPassword.test($("#password").val())){
        alert("비밀번호가 양식에 맞지 않습니다.");
        $("#password").val("");
        $("#password").focus();
        return false;
       } 


       //비밀번호 확인 공백 확인
       if ($("#password_check").val() == "") {
          const err =
          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 비밀번호를 다시 한번 작성해주세요.</div>';

          $("#password_check").parent().append(err);
          $("#password_check").focus();
          return false;
        }
        $("#frm").remove();
       
        
       // 비밀번호 확인 유효성 검사
       if(!getPassword.test($("#password_check").val())){
        alert("비밀번호가 틀렸습니다. 다시한번 입력해주세요.");
        $("#password_check").val("");
        $("#password_check").focus();
        return false;
       }

        //이름 공백 확인
        if ($("#name").val() == "") {
          const err =
          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 이름을 작성해주세요</div>';

          $("#name").parent().append(err);
          $("#name").focus();
          return false;
        }
        $("#frm").remove();

         // 이름 유효성 검사
         if(!getName.test($("#name").val())){
        alert("이름 양식에 맞지 않습니다.");
        $("#name").val("");
        $("#name").focus();
        return false;
       }

        // 성별 공백 확인
       if ($("#gender").val() == "") {
          const err =
            '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 필수 입력사항입니다.</div>';

          $("#gender").parent().append(err);
          $("#gender").focus();
          return false;
        }
        $("#frm").remove();

           // 생년월일 공백 확인
          if ($("#birth_date").val() == "") {
          const err =
          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 생년월일이 입력되지 않았습니다.</div>';

          $("#birth_date").parent().append(err);
          $("#birth_date").focus();
          return false;
        }
        $("#frm").remove();

        //휴대전화 공백 확인
          if ($("#tel").val() == "") {
          const err =
          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 휴대전화번호를 작성해주세요</div>';

          $("#tel").parent().append(err);
          $("#tel").focus();
          return false;
        }
        $("#frm").remove();

         // 휴대전화 유효성 검사
         if(!getPhone.test($("#tel").val())){
        alert("휴대전화번호 양식에 맞게 기입해주세요.");
        $("#tel").val("");
        $("#tel").focus();
        return false;
       }
         return true;
      }
    </script>
  </body>
</html>