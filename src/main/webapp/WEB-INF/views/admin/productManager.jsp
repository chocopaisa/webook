<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상품 관리 페이지</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
       	<link href="../resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <style type="text/css">
            /* 상품 등록 버튼 */
            div.submitbtn {text-align: right;}
            #datatablesSimplee {text-align: center;}
            #datatablesSimplee .btn {height: 30px;}
        </style>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="adminheader.jsp"></jsp:include>
        <div id="layoutSidenav">
        <jsp:include page="layoutsidenav.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h3 class="mt-4">상품 관리</h3> 
                        <div class="submitbtn"><button type="submit" class="btn btn-outline-dark m-2" onclick="location='productRegistration.do'">상품 등록</button></div>                       
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            재고 수량
                            
                        </div>                       

                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <div class="card mb-4">
                                    
                                    <div class="card-body">
                                        <table id="datatablesSimplee"> <!--게시글 구분위해 e가 하나 더 붙어있음-->
                                                <thead>
	                                                <tr>                                                     
	                                                    <th>책 번호</th>
	                                                    <th>장르 번호</th>
	                                                    <th>책 제목</th>
	                                                    <th>작가명</th>
	                                                    <th>남은 수량</th>
	                                                    <th>수량 변경</th>
	                                                </tr>
                                                </thead>
                                                <tfoot>
	                                                <tr>                                                 
	                                                    <th>책 번호</th>
	                                                    <th>장르 번호</th>
	                                                    <th>책 제목</th>
	                                                    <th>작가명</th>
	                                                    <th>남은 수량</th>
	                                                    <th>수량 변경</th>
	                                                </tr>
                                                </tfoot>
                                                <tbody>
                                                <c:forEach items="${productList }" var="product">
                                                
                                                <tr>     
                                                    <td>${product.product_no }</td>
                                                    <td>${product.genre_no }</td>
                                                    <td>${product.product_name }</td>
                                                    <td>${product.product_writer }</td>
                                                    <td>${product.product_cnt }</td>
                                                    <td><button type="button" class="btn btn-success align-middle delbtn">입고</button></td>
                                                </tr>
                                                </c:forEach>
                                                </tbody>
                                        </table>
                                                                               
                                    </div>                           
                                </div>
                            </div>
                            
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div class="card mb-4 tab-content" id="report-mem"> <!--start report_mem-->                                    
                                    
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
        <script src="../resources/admin/js/scripts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../resources/admin/js/adminjs.js"></script>       
           
    </body>
</html>
