<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>WEBOOK</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link href="../resources/admin/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<title>sidebarMenu</title>
</head>
<body class="sb-nav-fixed">

	<div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="d-flex align-items-center ms-4 mb-4">
                                <div class="position-relative">
                                    <img class="rounded-circle" src="../resources/admin/img/userimg.png" alt="" style="width: 40px; height: 40px;">
                                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                                </div>
                                <div class="ms-3">
                                    <h6 class="mb-0">user</h6>
                                    <span>Admin</span>
                                </div>
                            </div>                            
                            <a class="nav-link" href="dashboard.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <a class="nav-link" href="charts.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="customerManager.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                회원 관리
                            </a>
                            <a class="nav-link" href="reportManager.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                신고 관리
                            </a>
                            <a class="nav-link" href="productManager.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                상품 관리
                            </a>
                        </div>
                    </div>
                </nav>
            </div>

</body>
</html>