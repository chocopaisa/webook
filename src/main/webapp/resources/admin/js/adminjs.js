$(function(){

    // 게시글 옵션기능 삭제 
    
    $('#datatablesSimple').DataTable( {

        "ordering": false,
        "info":     false
    });    


	// 상품 등록 완료 알람
	$("#productsubmit").click(function(){
    	alert("상품 등록이 완료되었습니다.");
    })
    
    // 수량 수정 버튼
    $(".modifybtn").click(function(){
    
    const tr = $(this).parent().parent();
    const product_no = tr.find('.product_no').text();
    const modifycnt = tr.find('.modifycnt').val();
    const updatecnt = tr.find('.updatecnt');
    
    console.log(product_no)
    console.log(modifycnt)
    
    	
    	$.ajax({
    		type : 'get',
    		url : 'update.do',
    		contentType : 'application/x-www-form-urlencoded;charset=utf-8', // 숫자만 주고받기 때문에 굳이 필요없지만 그냥 써줌
    		data : { 
    				product_no : product_no,
    				product_cnt : modifycnt },
    		success : function(data) {
    			alert(data)
    			if(data=="성공"){
    				updatecnt.text(Number(updatecnt.text())+Number(modifycnt))
    			}
    		},
    		error : function(err) {
    			alert('입고할 수량을 입력해주세요')
    			console.log(err);
    		}
    		
    	}) // ajax
    	
    	tr.find('.modifycnt').val("");
    
    }) // end 수량 수정 버튼
    
    // 신고 게시글 전체 체크 박스 선택
    $("#checkAll").click(function(){
    	if($("#checkAll").prop("checked")) {
    		$(".checkok").prop("checked", true);
    	}else {
    		$(".checkok").prop("checked", false);
    	}
    
    });// end of checkAll
    
    // 개별로 체크 풀 때 전체 풀림
    $(".checkok").click(function(){
    	if(!$(".checkok").prop("checked")) {
    		$("#checkAll").prop("checked", false);
    	}
    
    });
    
    // 신고 게시글 삭제 버튼 누를 때
    $("#deletebtn").click(function(){
    	let delok = confirm("정말 삭제하시겠습니까?")
    	if(delok) {
    		$("#deletereport").submit()
    	} 
    })
    
    
    
    
    
    
  
})// 완전 끝