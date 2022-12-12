<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->
<title>메인페이지</title>

 <link rel="stylesheet" href="/assets/vendor/vegantable/css/style.css">
 <script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
 <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


<div id="contents">

 <section class="search-section">
            <div class="container">
                <div class="row subscribe-from">
                    <div class="col-md-12">
                        <form class="form-inline col-md-12 wow fadeInDown animated">
                            <div class="form-group">
                                <input type="email" class="form-control subscribe" id="email" placeholder="Search...">
                                <button class="suscribe-btn" ><i class="pe-7s-search"></i></button>
                            </div>
                        </form><!-- end /. form -->
                    </div>
                </div><!-- end of/. row -->
            </div><!-- end of /.container -->
        </section><!-- end of /.news letter section -->

        <section class="slider-section">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators slider-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="/assets/vendor/vegantable/images/banner.jpg" width="1648" height="600" alt="">
                        <div class="carousel-caption">
                            <h2>Fill your nutrition with healthy vegetables</h2>
                            <h3><Span>비건 테이블은 당신의 식탁위의 영양을 책임집니다.</Span></h3>
                        </div>
                    </div>
                    
                    <div class="item">
                        <img src="/assets/vendor/vegantable/images/baner2.jpg" width="1648" height="600" alt="">
                        <div class="carousel-caption">
                            <h2>Fill your nutrition with healthy vegetables</h2>
                            <h3><Span>비건 테이블은 당신의 식탁위의 영양을 책임집니다.</Span></h3>
                        </div>
                    </div>
                    <div class="item ">
                        <img src="/assets/vendor/vegantable/images/baner3.jpg" width="1648" height="600" alt="">
                        <div class="carousel-caption">
                            <h2>Fill your nutrition with healthy vegetables</h2>
                            <h3><Span>비건 테이블은 당신의 식탁위의 영양을 책임집니다.</Span></h3>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="pe-7s-angle-left glyphicon-chevron-left" aria-hidden="true"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="pe-7s-angle-right glyphicon-chevron-right" aria-hidden="true"></span>
                </a>
            </div>
        </section>

        <section class="service-section">
            <div class="container">
                <div class="Explanation">
                    <h4>비건테이블은?</h4>
                    <h4>식단체크, 비건 레시피, 비건 푸드몰, 커뮤니티를 제공하는 비건 웹서비스입니다.</h4>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.1s">
                        <div class="service-item">
                            <img src="/assets/vendor/vegantable/images/식단체크.png" alt="" class="service">
                            <h3>식단체크</h3>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.2s">
                        <div class="service-item">
                            <img src="/assets/vendor/vegantable/images/레시피.png" alt="" class="service">
                            <h3>비건 레시피</h3>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.3s">
                        <div class="service-item">
                            <img src="/assets/vendor/vegantable/images/비건푸드몰.png" alt="" class="service">
                            <h3>비건 푸드몰</h3>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated" data-wow-delay="0.3s">
                        <div class="service-item">
                            <img src="/assets/vendor/vegantable/images/커뮤니티.png" alt="" class="service">
                            <h3>커뮤니티</h3>

                        </div>
                    </div>
                    <!-- Controls -->


                </div>
            </div>
        </section>


        <section class="offer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow fadeInDown animated ">
                        <h1>Vegan recipe</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="new-section">
            <div class="container">
                <div class="row">

                    <div class="col-md-12">
                        <div class="titie-section wow fadeInDown animated ">
                            <h1>비건 레시피</h1>
                        </div>
                    </div>
                </div>
      


                <i class="xi-angle-left" style="display: none;"></i>
                <i class="xi-angle-right" style="display: none;"></i>
                <section class="visual">
                    <div class="row">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/03/22/74e7d739f9fc09a0140376ee282f2fdd1_m.jpg" alt="" width="100%">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">노버터 스콘</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/10/05/237cdc29e7818b1496cd1e5748a22c211_m.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">호두 통밀 식빵</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/04/13/c00d47439f0dbbff7f88f57fb43fb02d1_m.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">감자 크래커</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/28/a37e2cfb48df6d2120789a74e65133691_m.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">고기 없는 버섯 잡채</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/05/01/2a5db2de839be324a6a8feaaf3ed94cd1_m.jpg" class="img-responsive" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">새송이 소금 구이</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2017/03/03/1b25b8390aeb3ff33b263e1782644a4e1_m.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">애호박 군만두</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src=https://recipe1.ezmember.co.kr/cache/recipe/2021/08/20/1e38af09266571316627dbe937fdb9821_m.jpg alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">매콤하고 담백한 애호박 만두</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/연두부샐러드.png" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">연두부 샐러드</a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>
   

      

        

        <section class="offer-section1">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow fadeInDown animated ">
                        <h1>popular posts</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="best-seller-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titie-section wow fadeInDown animated ">
                            <h1>인기 게시물</h1>
                        </div>
                    </div>
                </div>
                <i class="xi-angle-left" style="display: none;"></i>
                <i class="xi-angle-right" style="display: none;"></i>
                <section class="visual">
                    <div class="row">
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물1.jpg" >
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#"><나의 비거니즘 만화> 보선 작가님과 함께하는 사랑방</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물2.png">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">비건 위크 2022 제주_ 'Vegan Week 2022 Jeju ' 행사 소식입니다</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물3.png">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">비건 채식주의자를 위한 앱이 개발되었습니다.비건쿡앱</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물4.jpg">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">[코리아비건페어 2022] 🔥사전등록&티켓예매 20%할인 마감임박!!🔥</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물5.png">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">감사합니다 :) 함께 기념하는 해피비건크리스마스 어때요🎄</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물6.jfif">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">비건 버거, 파스타, 피자가 있는 러빙헛 역삼점</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물7.jpg">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">7월 채식캠프 신청받습니다. 이광조&윤미정 박사 채식캠프</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/게시물8.jfif" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">오일과 계란없이 고소한 비건 마요네즈와 아이올리를 활용한 콩샐러드</a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>

        <section class="offer-section2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 wow fadeInDown animated ">
                        <h1>Vegan food mall</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="best-seller-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titie-section wow fadeInDown animated ">
                            <h1>비건 푸드몰</h1>
                        </div>
                    </div>
                </div>
                <i class="xi-angle-left" style="display: none;"></i>
                <i class="xi-angle-right" style="display: none;"></i>
                <section class="visual">
                    <div class="row">
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/HU1.jpg" alt="" width="100%">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">간식류</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/WM100.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">대체육</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/MK6.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">밀키트</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/TB5.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">베이커리</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/ED4.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">간식류</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/VG100.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">대체육</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/VR6.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">밀키트</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-item">
                        <img src="/assets/vendor/vegantable/images/Flow12.jpg" alt="">
                        <div class="product-hover">
                            <div class="product-meta">

                                <a href="#">베이커리</a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </section>

        	   <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p class="center">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">B건조</a></p>
    
                        
                    </div>
                </div>
            </div>
        </footer>

        <!-- JQUERY -->
        <!--<script src="js/vendor/jquery-1.11.2.min.js"></script> 푸드 레시피에 사용해야함-->
      
 		<script src="/assets/vendor/vegantable/js/bootstrap.min.js"></script>
        <script src="/assets/vendor/vegantable/js/isotope.pkgd.min.js"></script>
        <script src="/assets/vendor/vegantable/js/owl.carousel.min.js"></script>
        <script src="/assets/vendor/vegantable/js/wow.min.js"></script>
        <script src="/assets/vendor/vegantable/js/custom.js"></script>
        

        <script type="text/javascript">

            $('.visual').slick({
                slidesToShow: 4,
                slidesToScroll: 4
               
            });

        </script>




	
	  
      
</div>
</div>
</div>
      