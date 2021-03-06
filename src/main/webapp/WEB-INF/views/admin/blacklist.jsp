<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>고객 관리 페이지</title>
        <link rel="../stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css"/>
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
                        <h3 class="mt-4">블랙리스트 관리</h3>                          
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                회원 검색
                            </div>
                            <div class="card-body">
                            <form action="goblacklist">
                                <table id="blacklisttables">    
                                	<thead>                                
                                        <tr>                                                    
                                            <th>작성자 ID</th>
                                            <th>회원명</th>
                                            <th>전화번호</th>
                                            <th>생년월일</th>
                                            <th>가입 날짜</th>
                                            <th>블랙리스트 여부</th>
                                        </tr>							
									</thead>
									<tbody>
										<c:forEach items="${blackList}" var="member">
										
                                        <tr>                                                    
                                            <td>${member.user_email }</td>
                                            <td>${member.user_name }</td>
                                            <td>${member.user_tel }</td>
                                            <td>${member.user_birth }</td>
                                            <td>${member.user_regdate }</td>
                                            <td>${member.blacklist }</td>
                                            
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                </form>
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
