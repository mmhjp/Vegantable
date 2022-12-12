<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>

<header class="header-section">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/main.do"><b>Vegan</b>Table</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="/main.do">Home</a></li>
                            <li><a href="/recipe/recipe.do">비건 레시피</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    비건 푸드몰
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="/FoodMall/foodmall1.do">간식류</a></li>
                                    <li><a class="dropdown-item" href="/FoodMall/foodmall2.do">반찬류</a></li>
                                    <li><a class="dropdown-item" href="/FoodMall/foodmall3.do">대체육</a></li>
                                    <li><a class="dropdown-item" href="/FoodMall/foodmall4.do">밀키트</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    커뮤니티
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="/sample2/list.do">자유게시판</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right cart-menu">
                           <c:if test="${id==null}">
						<li><a href="/login/login.do" class="">로그인 </a></li>
						<li><a href="/join/join.do" class="">회원가입 </a></li>
					</c:if>
					<c:if test="${id != null}">
						<li><a  class="">${nick}님 환영합니다  </a></li>
						<li><a href="/etc/logout.do" class="">로그아웃 </a></li>
					</c:if>

                     
                     
                     
                            <!--  <li><a href="#" class="search-btn"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                        <li><a href="#"><span> Cart -$0&nbsp;</span> <span class="shoping-cart">0</span></a></li>
                    -->
                    </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>





