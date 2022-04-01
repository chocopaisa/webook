$(function(){

    // 게시글 옵션기능 삭제 
    
    $('#datatablesSimple').DataTable( {

        "ordering": false,
        "info":     false
    });    


    // 전체 체크 박스
    $("#checkall").click(function() {
        if($("#checkall").is(":checked")) $(".report-table").each(function(){$(this).prop('checked',true)});
        else $(".report-table").prop("checked", false);
    });
    
    $(".report-table").click(function() {
        var total = $(".report-table").length;
        var checked = $(".report-table:checked").length;
        
        if(total != checked) $("#checkall").prop("checked", false);
        else $("#checkall").prop("checked", true); 
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
    			alert('실패')
    			console.log(err);
    		}
    		
    	}) // ajax
    	
    	tr.find('.modifycnt').val("");
    
    }) // end 수량 수정 버튼
	
	

    
    

})// 완전 끝