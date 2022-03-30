/*!
    * Start Bootstrap - SB Admin v7.0.5 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2022 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    // 
// Scripts
// 



window.addEventListener('DOMContentLoaded', event => {    

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        // if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
        //     document.body.classList.toggle('sb-sidenav-toggled');
        // }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

    // data-table
   // Simple-DataTables
    //https://github.com/fiduswriter/Simple-DataTables/wiki
    
    
    
    const datatablesSimplee = document.getElementById('datatablesSimplee');
        if (datatablesSimplee) {
        new simpleDatatables.DataTable(datatablesSimplee);
    }

    const customertables = document.getElementById('customertables');
        if (customertables) {
        new simpleDatatables.DataTable(customertables);
        }
   
    
    });


   // $(function(){

    // 게시글 옵션기능 삭제 
    
    $('#datatablesSimple').DataTable( {
        "paging":   false,
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

    // 등록 알람    
       

 //   })

