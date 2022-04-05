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
        <title>WEBOOK</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="../resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <style type="text/css">
            .card-body + h4 {padding: 0 0 20px 20px;}
            #layoutSidenav_content .row {padding-top: 2%;}
        </style>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="adminheader.jsp"></jsp:include>
        <div id="layoutSidenav">
        <jsp:include page="layoutsidenav.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">오늘의 주문량</div>
                                    <h4 class="mb-0">${selectTodayOrder }건</h4>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">오늘의 매출</div>
                                    <h4 class="mb-0" >${selectTodaySales }원</h4>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">오늘의 게시글 수</div>
                                    <h4 class="mb-0">${selectTodayBoard }개</h4>
                                </div>
                            </div>        
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        지난 일주일 매출
                                    </div>

                                     
                                    <div class="card-body"><canvas id="todaysales" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        월별 회원 가입 수 
                                    </div>
                                    <input hidden="">
                                    <div class="card-body"><canvas id="monthmember" width="100%" height="40"></canvas></div>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script type="text/javascript">
			// 지난 주 일일 매출 차트 
        	let jsonData = ${json}
        	console.log(jsonData);
        	let jsonObject = JSON.stringify(jsonData);
        	let jdata = JSON.parse(jsonObject);
        	
        	let weeklist = new Array();
        	let weeksales = new Array();
        	

        	
        	const weekday = ['','일','월','화','수','목','금','토']
        	
        	for(let i=0; i<jdata.length; i++) {
        		let d = jdata[i];
        		weeklist.push(weekday[Number(d.LastWeek)])
        		weeksales.push(d.LastWeekSales)
        	}
        	
        	let data = {
        				labels : weeklist,
        				datasets : [{
        					label : '매출(원)',
        					backgroundColor :'plum',
        					data : weeksales
        				}],
        				options : {
        					title : {
        						display : true,
        						text : '지난 주 일일 매출'
        					}
        				}
        	};
        	
        	let weekctx = document.getElementById("todaysales").getContext('2d');
        	new Chart(weekctx, {
        			type : 'bar',
        			data : data
        	});
        	
        	// 월별 회원가입 수
        	let jsonData2 = ${json2}
        	console.log(jsonData2);
        	let jsonObject2 = JSON.stringify(jsonData2);
        	let jdata2 = JSON.parse(jsonObject2);
        	
        	let monthlist = new Array();
        	let newmember = new Array();
        	

        	
        	const monthname = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
        	
        	for(let i=0; i<jdata2.length; i++) {
        		let d2 = jdata2[i];
        		monthlist.push(monthname[Number(d2.MonthList)])
        		newmember.push(d2.NewMemCnt)
        	}
        	
        	let data2 = {
        				labels : monthname,
        				datasets : [{
        					label : '명',
        					backgroundColor :'darkred',
        					data : newmember
        				}],
        				options : {
        					title : {
        						display : true,
        						text : '월별 회원가입 수'
        					}
        				}
        	};
        	
        	let monthctx = document.getElementById("monthmember").getContext('2d');
        	new Chart(monthctx, {
        			type : 'bar',
        			data : data2
        	});
        	
        	
        </script>
    </body>
</html>
