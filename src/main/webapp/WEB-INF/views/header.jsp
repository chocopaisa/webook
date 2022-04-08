<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<section class="top-header">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-xs-12 col-sm-4">
            <ul class="top-menu text-center list-inline">
              <li>
                <div class="pr-2 pl-2">
                  <h3><a href="/webook/shop/main.do">BOOK</a></h3>
                </div>
              </li>
              <li>
                <div
					class="pr-2 pl-2"
				>
                  <h3><a href="/webook/community/main.do">COMMUNITY</a></h3>
                </div>
              </li>
            </ul>
          </div>
          <div class="col-md-4 col-xs-12 col-sm-4">
            <!-- Site Logo -->
            <div class="logo text-center">
              <a href="/webook/main.do">
                <!-- replace logo here -->
                <text id="WEBOOK"><h1>WEBOOK</h1></text>
              </a>
            </div>
          </div>
          <div class="col-md-4 col-xs-12 col-sm-4">
            <ul class="top-menu text-center list-inline">
            	<li class="dropdown">
                <div class="pr-2 pl-2">
                  <c:if test="${sessionScope.user eq null}">
                  <h5><a href="/webook/login.do">비회원 님</a></h5>
                </c:if>
                	<c:if test="${sessionScope.user ne null}">
                  <h5><a href="/webook/mypage/p_history.do">${sessionScope.user.user_name } 님</a></h5>
                </c:if>
                </div>
              </li>
              <li>
                <div class="pr-2 pl-2">
                <c:if test="${sessionScope.user eq null}">
                  <h5><a href="/webook/login.do">LOGIN</a></h5>
                </c:if>
                <c:if test="${ sessionScope.user ne null}">
                	<h5><a href="/webook/logout.do">LOGOUT</a></h5>
                </c:if>
                </div>
              </li>
              

              <!-- Search -->
              <li class="dropdown search dropdown-slide">
				  <div class="pr-2 pl-2">
                <h3>
                  <a
                    href="#!"
                    class="dropdown-toggle"
                    data-toggle="dropdown"
                    data-click="dropdown"
                    ><i class="tf-ion-ios-search-strong"></i
                  ></a>
                </h3>
			</div>
                <ul class="dropdown-menu search-dropdown">
                  <li>
					  <div>
                    <form id="total-search-frm" action="/webook/total_search.do">
                      <input
						            id="total-search"
                        type="text"
                        class="form-control"
                        placeholder="통합검색..." name="searchKeyword"
                      />
                    </form>
					</div>
                  </li>
                  
                </ul>
              </li>
              <!-- / Search -->
            </ul>
            <!-- / .nav .navbar-nav .navbar-right -->
          </div>
        </div>
      </div>
    </section>
    <!-- End Top Header Bar -->
    
    
    
	