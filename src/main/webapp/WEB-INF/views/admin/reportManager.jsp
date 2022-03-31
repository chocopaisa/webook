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
        <title>신고 관리 페이지</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.11.5/datatables.min.css"/>
        <link href="../resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <style type="text/css">
            /* 탭 메뉴 */                   
            .btn-group  {
                margin: 10px 0 10px 0;
            }
            
            /* 테이블 */
            .card {float: inl;}
        </style>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="adminheader.jsp"></jsp:include>
        <div id="layoutSidenav">
        <jsp:include page="layoutsidenav.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4 tabSet" >
                        <h3 class="mt-4">신고 관리</h3>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-cumm-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-cumm" type="button" role="tab" aria-controls="pills-cumm"
                                    aria-selected="true">신고된 게시글</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-member-tab" data-bs-toggle="pill"
                                    data-bs-target="#pills-member" type="button" role="tab"
                                    aria-controls="pills-member" aria-selected="false">신고된 회원</button>
                            </li>                            
                        </ul>

                        
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-cumm" role="tabpanel" aria-labelledby="pills-cumm-tab">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                        게시글 신고
                                        
                                    </div>
                                    <div class="card-body tab-content" id="report-cu">                                                                         
                                        
                                        <table id="datatablesSimple" class="text-center">
                                            <thead>
                                                <tr>  
                                                    <th><input type="checkbox" name="checkall" id="checkall"/></th>                                                  
                                                    <th>게시글 제목</th>
                                                    <th>작성자 ID</th>
                                                    <th>신고 목록</th>
                                                    <th>신고 날짜</th>
                                                    <th>신고 횟수</th>
                                                </tr>
                                             </thead>
                                             <tfoot>
                                             	<tr>  
                                                    <th><input type="checkbox" name="checkall" id="checkall"/></th>                                                  
                                                    <th>게시글 제목</th>
                                                    <th>작성자 ID</th>
                                                    <th>신고 목록</th>
                                                    <th>신고 날짜</th>
                                                    <th>신고 횟수</th>
                                                </tr>
                                             </tfoot>
                                             <tbody>
                                                <tr>       
                                                    <td></td>                                             
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                </tr>                                                                                       
                                           	</tbody>
                                        </table>  
                                        <button type="button" class="btn btn-danger m-2" id="deletebtn">삭제하기</button>                                      
                                    </div>
                                                             
                                </div>
                            </div>
                            <div class="tab-pane fade" id="pills-member" role="tabpanel" aria-labelledby="pills-member-tab">
                                <div class="card mb-4 tab-content" id="report-mem"> <!--start report_mem-->
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                        회원 신고
                                    </div>
                                    <div class="card-body" id="report_mem">
                                        <table id="datatablesSimplee" class="report-table"> <!--게시글 구분위해 e가 하나 더 붙어있음-->
                                            <thead>
                                                <tr>                                                    
                                                    <th>작성자 ID</th>
                                                    <th>회원명</th>
                                                    <th>신고 목록</th>
                                                    <th>신고 날짜</th>
                                                    <th>신고 횟수</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>                                                    
                                                    <th>작성자 ID</th>
                                                    <th>회원명</th>
                                                    <th>신고 목록</th>
                                                    <th>신고 날짜</th>
                                                    <th>신고 횟수</th>
                                                </tr>
                                            </tfoot>
                                            <tbody>
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                   
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                    
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr> 
                                                <tr>                                                 
                                                    <td>hong1</td>
                                                    <td>홍이</td>
                                                    <td>욕설</td>
                                                    <td>2011/04/25</td>
                                                    <td>5</td>
                                                </tr>                                        
                                            </tbody>
                                        </table>
                                    </div>
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
