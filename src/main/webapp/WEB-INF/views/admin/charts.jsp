<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Charts</title>
        <link href="../resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="adminheader.jsp"></jsp:include>
        <div id="layoutSidenav">
        <jsp:include page="layoutsidenav.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h3 class="mt-4">Charts</h3>                        
                        <div class="card mb-4">                            
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-area me-1"></i>
                                월별 매출
                            </div>
                            <div class="card-body"><canvas id="monthsales" width="100%" height="30"></canvas></div>
                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                        </div>
                        <div class="row">                            
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                         TOP 5 CATEGORY
                                    </div>
                                    <div class="card-body"><canvas id="categorysales" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        연령대별 가입자 수
                                    </div>
                                    <div class="card-body"><canvas id="AgeNewMember" width="100%" height="50"></canvas></div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../resources/admin/js/adminjs.js"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript">
        	// 월별 매출
        	let jsonData3 = ${json3}
        	let jsonObject3 = JSON.stringify(jsonData3);
        	let jdata3 = JSON.parse(jsonObject3);
        	
        	let monthName = new Array();
        	let monthDon = new Array();
        	
        	const monthlistname = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
        	
        	for(let i=0; i<jdata3.length; i++) {
        		let d3 = jdata3[i];
        		monthName.push(monthlistname[Number(d3.MonthListname)])
        		monthDon.push(d3.MonthMoney)
        	}
        	
        	let data3 = {
    				labels : monthlistname,
    				datasets : [{
    					label : '매출(원)',
    					backgroundColor :'midnightblue',
    					data : monthDon,
    					fill : false,
    					borderColor : 'skyblue',
    					lineTension:0.1
    				}],
    				options : {
    					title : {
    						display : true,
    						text : '월별 매출'
    					}
    				}
    	};
        	
       	let monthMoneyy = document.getElementById("monthsales").getContext('2d');
       	new Chart(monthMoneyy, {
       			type : 'line',
       			data : data3			
       	});
       	
       	// 카테고리별 매출
       	let jsonData4 = ${json4}
        	let jsonObject4 = JSON.stringify(jsonData4);
        	let jdata4 = JSON.parse(jsonObject4);
        	
        	let categoryName = new Array();
        	let categorySales = new Array();
        	
        	
        	for(let i=0; i<jdata4.length; i++) {
        		let d4 = jdata4[i];
        		categoryName.push(d4.CategoryName)
        		categorySales.push(d4.CategorySales)
        	}
        	
        	let data4 = {
    				labels : categoryName,
    				datasets : [{
    					label : '매출(원)',
    					backgroundColor : ['#FF6B6B','#FFD93D','#6BCB77','#4D96FF','#CE49BF'],
    					data : categorySales

    				}],
    				options : {
    					title : {
    						display : true,
    						text : '월별 매출'
    					}
    				}
    	};
        	
       	let monthMoneyy2 = document.getElementById("categorysales").getContext('2d');
       	new Chart(monthMoneyy2, {
       			type : 'pie',
       			data : data4			
       	});
       	
     // 연령대 별 가입자 수
       	let jsonData5 = ${json5}
        	let jsonObject5 = JSON.stringify(jsonData5);
        	let jdata5 = JSON.parse(jsonObject5);
        	
        	let Agelist = new Array();
        	let Agecnt = new Array();
        	
        	
        	for(let i=0; i<jdata5.length; i++) {
        		let d5 = jdata5[i];
        		Agelist.push(d5.AgeName)
        		Agecnt.push(d5.AgeSales)
        	}
        	
        	let data5 = {
    				labels : Agelist,
    				datasets : [{
    					label : '가입자 수(명)',
    					backgroundColor : ['#FF6B6B','#FFD93D','#6BCB77','#4D96FF','#CE49BF','#F190B7'],
    					data : Agecnt

    				}],
    				options : {
    					title : {
    						display : true,
    						text : '연령대 별 가입자 수'
    					}
    				}
    	};
        	
       	let AgeCategory = document.getElementById("AgeNewMember").getContext('2d');
       	new Chart(AgeCategory, {
       			type : 'pie',
       			data : data5			
       	});
        
        </script>
    </body>
</html>
