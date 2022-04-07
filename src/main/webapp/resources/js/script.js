(function ($) {
  'use strict';

  // Preloader
  $(window).on('load', function () {
    $('#preloader').fadeOut('slow', function () {
      $(this).remove();
    });
  });

  
  // Instagram Feed
  if (($('#instafeed').length) !== 0) {
    var accessToken = $('#instafeed').attr('data-accessToken');
    var userFeed = new Instafeed({
      get: 'user',
      resolution: 'low_resolution',
      accessToken: accessToken,
      template: '<a href="{{link}}"><img src="{{image}}" alt="instagram-image"></a>'
    });
    userFeed.run();
  }

  setTimeout(function () {
    $('.instagram-slider').slick({
      dots: false,
      speed: 300,
      // autoplay: true,
      arrows: false,
      slidesToShow: 6,
      slidesToScroll: 1,
      responsive: [{
          breakpoint: 1024,
          settings: {
            slidesToShow: 4
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 2
          }
        }
      ]
    });
  }, 1500);


  // e-commerce touchspin
  $('input[name="producr_cnt"]').TouchSpin();


  // Video Lightbox
  $(document).on('click', '[data-toggle="lightbox"]', function (event) {
    event.preventDefault();
    $(this).ekkoLightbox();
  });


  // Count Down JS
  $('#simple-timer').syotimer({
    year: 2022,
    month: 5,
    day: 9,
    hour: 20,
    minute: 30
  });

  //Hero Slider
  $('.hero-slider').slick({
    // autoplay: true,
    infinite: true,
    arrows: true,
    prevArrow: '<button type=\'button\' class=\'heroSliderArrow prevArrow tf-ion-chevron-left\'></button>',
    nextArrow: '<button type=\'button\' class=\'heroSliderArrow nextArrow tf-ion-chevron-right\'></button>',
    dots: true,
    autoplaySpeed: 7000,
    pauseOnFocus: false,
    pauseOnHover: false
  });
  $('.hero-slider').slickAnimation();



	

	// 카트 총 가격 계산
	let cartSumPrice = 0;
	$('.cart_price').each(function(){
		cartSumPrice += Number($(this).text().replace('원','').replace(',','').trim());
	})
	$('#cartSumPrice').text(cartSumPrice);
	
	
	// 카트 상품 제거
	$('.removeCartItem').each(function(){
		$(this).click(function(){
			const pDiv = $(this).parent();
			const pno = pDiv.find("input").val();
		
			$.ajax({
	        	type : 'get',
	        	url : 'removeCartInHeader.do',
	        	data : { product_no : pno },
	        	contentType : 'application/x-www-form-urlencoded;charset=utf-8',
	        	success : function(result){
	        		pDiv.remove();
	        		if(result == 0){
	        			$('div.cart-summary').remove();
	        			alertMessage('선택한 상품이 삭제되었습니다');
	        		}
	        	},
	        	error : function(err){
	        		alert('실패:');
	        		console.log(err);
        		}
        	});
		})
		
	});
	// 측면 이동바
	$('.btn_gotop').css({
		'position' : 'fixed',
		'right' : '0px',
		'z-index' : '999',
		'cursor' : 'pointer',
		'font-size' : '20px',
		'text-align' : 'center',
		'width' : '60px',
		'height' : '60px',
		'outline' : 'none',
		'border' : '1px solid #ccc',
		'padding':'15px 20px',
		'color' : 'white'
		 
	});
	// 현재 주소
	let loca = $(location).attr('href');
	let currentLoca = loca.split('webook/')[1];
	
	// 현재 주소에 따라 뜨는 버튼 변경
	$('.btn_gotop').hide();
	if(currentLoca.startsWith('shop')){
		$('.btn-basic').show()
		$('.btn-shop').show()
	}
	if(currentLoca.startsWith('community')){
		$('.btn-basic').show()
		$('.btn-community').show()
		if(currentLoca.startsWith('community/getcontent.do')){
			$('.btn-chatbox').show()
			
		}
	}
	if(currentLoca.startsWith('main.do')){
		$('.btn-basic').show()
	}
	
	// 상하 위치 조정
	let bottom = 60;
	$('.btn_gotop').each(function(){
		if($(this).css('display') != 'none'){
			bottom += 60;
			$(this).css('bottom',bottom + 'px');
		}
	})
	// 상단 이동 버튼 클릭시 애니메이션 이동
	$('.btn-top').click(function(){
		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
	})
	
	
	
	// 상단에 메시지 띄우기
	$('.page-alert').hide();
	$('.page-alert').css({
		'position' : 'fixed',
		'z-index' : '999',
		'text-align' : 'center',
		'top' : '0px',
		'width' : '100%'
	});
	
	
	
})(jQuery);

// 알림창
	function alertMessage(msg){
		$('#page-alert').show();
		$('#page-alert .alert-message').text(msg);
		setTimeout(function(){
			$('#page-alert').fadeOut();
		},3000);
	}
	
	// 경고창
	function alertWarnMessage(msg){
		$('#page-warn').show();
		$('#page-warn .alert-message').text(msg);
		setTimeout(function(){
			$('#page-alert').fadeOut();
		},3000);
	}