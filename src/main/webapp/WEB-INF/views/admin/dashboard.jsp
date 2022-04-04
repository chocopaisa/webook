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
                                        일별 매출
                                    </div>
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
                                    <input hidden="" value="${ }" class="todaysales">
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
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
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
        <script src="../resources/admin/js/chart-bar-demo.js"></script> 
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    </body>
</html>
