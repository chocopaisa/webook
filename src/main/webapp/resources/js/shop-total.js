/** 일단 자바스크립트 파일 말고 프로젝트에 바로 파일 만듦
 * 
 */
 
 $(document).ready(function(){
/********* 상세페이지  **********/
//상세페이지 처음에는 독후감, 이동 버튼 숨기기 (책의 상세정보만 나오기)
$(".bookreport").hide();


//하단의 review 버튼을 누르면 책 상세 사진은 사라지고 독후감과 이동 버튼 나옴 
$('.active2').click(function() {
	$(".bookreport").show();
$('.move-btn-review').show();
$(".productDescImage").hide();
$('.tab-content patternbg').hide();	
})
	
//책의 상세정보만 다시 볼 수 있게 함
$('.active').click(function(){
$(".bookreport").hide();
$('.move-btn-review').hide();
$(".productDescImage").show();
$('.tab-content patternbg').show();
})



$('#addCart').click(function(){
$('#frm').attr('action','addCart.do').submit(); 

});



	
	
	


});


  $('input[name="product_cnt"]').TouchSpin();