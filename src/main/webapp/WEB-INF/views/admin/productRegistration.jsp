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
        <title>상품 등록 페이지</title>
        <link href="../resources/admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        </script>
        <style type="text/css">
            /* 입력창 전체 크기 조정 */
            .regiinput {
                width: 1100px;
                margin: 0 auto;
                text-align: center;
            }
            #bookLangselect {
                width:220px;
                margin-bottom: 5px;
            }           
        </style>
        <script></script>
    </head>
    <body>
        <jsp:include page="adminheader.jsp"></jsp:include>
        <div id="layoutSidenav">
        <jsp:include page="layoutsidenav.jsp"></jsp:include>
            <div id="layoutSidenav_content">
                <main>
					<form action="saveProduct.do" method="post" enctype="multipart/form-data">
                    <div class="bg-light rounded h-100 p-4 regiinput">
                        <h3 class="mb-4">상품 등록하기</h3>
                        <div id="bookLangselect">
                        <select class="form-select" id="productLang" name="product_lang">                            
                        	<option selected>국내/해외 선택</option>
                            <option value="국내">국내</option>
                            <option value="해외">해외</option>
                        </select>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">책 번호</span>                        
                            <input type="text" class="form-control" aria-label="bookNo"
                                aria-describedby="basic-addon1" name="product_no"/>
                            <span class="input-group-text">장르번호</span>
                            <input type="text" class="form-control" aria-label="genreNo" 
                            	aria-describedby="basic-addon2" name="genre_no"/>
                                <span class="input-group-text">책 제목</span>
                            <input type="text" class="form-control"aria-label="bookName"
                                aria-describedby="basic-addon1" name="product_name"/>
                            <span class="input-group-text">작가명</span>
                            <input type="text" class="form-control"aria-label="bookwriter"
                                aria-describedby="basic-addon1" name="product_writer"/>
                        </div>
                        <div class="input-group mb-3">
                            
                            <span class="input-group-text">출판사</span>
                            <input type="text" class="form-control" aria-label="publisher" aria-describedby="basic-addon2" name="product_publisher"/>
                            <span class="input-group-text">출판일</span>
                            <input type="date" class="form-control" aria-label="productDate" aria-describedby="basic-addon2" name="product_date"/>
                            <span class="input-group-text">책 가격</span>
                            <input type="text" class="form-control" aria-label="price" aria-describedby="basic-addon2" placeholder="0" name="product_price"/>                                                        
                        	<span class="input-group-text">입고 수량</span>
                            <input type="text" class="form-control" aria-label="productcnt" aria-describedby="basic-addon2" placeholder="0" name="product_cnt"/>
                        </div>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Leave a comment here" style="height: 320px;" name="product_desc"></textarea>
                            <label for="floatingTextarea">책에 대한 설명을 적어주세요(1500자 이내)</label>
                        </div>
                        <div class="mb-3">                            
                            <input class="form-control form-control-sm" id="formFileSm" type="file" name="file">
                        </div>
                        <div><button type="submit" class="btn btn-outline-dark m-2" id="productsubmit">상품 등록하기</button></div>
                    </div>
                    </form>
                </main>
                <jsp:include page="footer.jsp"></jsp:include>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../resources/admin/js/scripts.js"></script>
        <script src="../resources/admin/js/adminjs.js"></script>
    </body>
</html>
