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
	        		
	        		}
	        	},
	        	error : function(err){
	        		alert('실패:');
	        		console.log(err);
        		}
        	});
		})
		
	});
		
		
	

})(jQuery);
