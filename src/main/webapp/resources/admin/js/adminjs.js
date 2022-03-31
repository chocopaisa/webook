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
    

 })