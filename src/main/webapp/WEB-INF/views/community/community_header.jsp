<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="menu">
      <nav class="navbar navigation">
        <div class="container">
          <div class="navbar-header">
            <h2 class="menu-title">Main Menu</h2>
            <button
              type="button"
              class="navbar-toggle collapsed"
              data-toggle="collapse"
              data-target="#navbar"
              aria-expanded="false"
              aria-controls="navbar"
            >
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
          </div>
          <!-- / .navbar-header -->

          <!-- Navbar Links -->
          <div id="navbar" class="navbar-collapse collapse text-center">
            <ul class="nav navbar-nav">
              <!-- Home -->
              <li class="dropdown">
                <a href="list.do?report_kind=best">베스트</a>
              </li>
              <!-- / Home -->
              <!-- Home -->
              <li class="dropdown">
                <a href="list.do">전체 독후감</a>
              </li>
              <!-- / Home -->
              
              <!-- Home -->
              <li class="dropdown">
                <a href="../mypage/p_history.do">마이페이지</a>
              </li>
              <!-- / Home -->
              <!-- Home -->
              <li class="dropdown">
                <a href="write.do">독후감 작성</a>
              </li>
              <!-- / Home -->
            </ul>
          </div>
          <!--/.navbar-collapse -->
        </div>
        <!-- / .container -->
      </nav>
    </section>