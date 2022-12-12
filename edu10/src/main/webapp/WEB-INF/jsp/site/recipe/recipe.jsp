<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->


<title>레시피</title>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/레시피.css">

<div id="contents">

 <div class="main">
    <section class="featured-section">
        <div class="container">
       
            <div class="row">
                <div class="col-md-12">
                    <div class="filter-menu"  >
                        <ul class="button-group sort-button-group" id="btn1" >
                            <li class="button active" data-category="all"><img src="/assets/vendor/vegantable/images/전체.png" class="categoryimg" alt=""> 전체</li>
                            <li class="button" data-category="cat-1"><img src="/assets/vendor/vegantable/images/한식.png" class="categoryimg" alt="">한식</li>
                            <li class="button" data-category="cat-2"><img src="/assets/vendor/vegantable/images/중식.png" class="categoryimg" alt="">중식</li>
                            <li class="button" data-category="cat-3"><img src="/assets/vendor/vegantable/images/일식.png" class="categoryimg" alt="">일식</li>
                            <li class="button" data-category="cat-3"><img src="/assets/vendor/vegantable/images/베이킹.png"class="categoryimg" alt="">베이킹</li>
                            <li class="button" data-category="cat-3"><img src="/assets/vendor/vegantable/images/기타.png" class="categoryimg" alt="">기타</li>
                        </ul>

                        <div class="categoryplay">
                            <button id="btn2" onclick="offDisplay()" class="categorybutton" >카테고리 닫기<i class="xi-arrow-bottom"></i></button>
                            <button id="btn3" onclick="onDisplay()"  style="display: none;" class="categorybutton" >카테고리 열기<i class="xi-arrow-bottom"></i></button>
                        </div>
                    
                        
                        
                    </div>
                    <div class="recipesearch">
                        <input type="text" placeholder="레시피 검색">
                        <button>검색</button>
                    </div>
                </div>
            </div>
            <div class="recipesearchSort">
                <button><a href="#">최신순</a></button>
                <button><a href="#">추천순</a></button>
            </div>
            <div class="row featured isotope">
                <div class="col-md-3 col-sm-6 col-xs-12 cat-3 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/03/22/74e7d739f9fc09a0140376ee282f2fdd1_m.jpg" class="img-responsive" width="255" height="322" alt="">
                      
              	         <div class="product-hover">
                            <div class="product-meta">
                              <h3>고소한 콩가루 스콘 ! 비건레시피, 노버터 스콘</h3>
                            </div>
                        </div>
                         
                        <div class="product-title">
                            <a href="#">
                                <h3 class="recipeh3">MJ홈베이킹</h3>
                                <span>조회수 1.6만</span>
                              
                                
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-2 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/05/04/059293013789ac076f6da60db79d89fc1_m.jpg" class="img-responsive" width="255" height="322" alt="">
                             <div class="product-hover">
                            <div class="product-meta">
                            		<h3>비건 통밀쿠키 ! 초간단에 맛있고 난리부르스</h3>
                            </div>
                        </div>
                         
                        <div class="product-title">
                            <a href="#">
                                <h3> MJ홈베이킹 </h3>
                                <span> 조회수 3.8만</span>
                               
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-1 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2019/10/05/237cdc29e7818b1496cd1e5748a22c211_m.jpg" class="img-responsive" width="255" height="322" alt="">
                       
                                 <div class="product-hover">
                            <div class="product-meta">
                              <h3>호두 통밀식빵 만들기[손반죽] 노버터, 노우유, 노달걀 비건식빵 </h3>
                              
                            </div>
                        </div>
                         
                        <div class="product-title">
                            <a href="#">
                                <h3>앙이맘스윗홈</h3>
                                <span>조회수 8천</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-3 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2020/04/13/c00d47439f0dbbff7f88f57fb43fb02d1_m.jpg" class="img-responsive" width="255" height="322" alt="">
                  
                                <div class="product-hover">
                            <div class="product-meta">
                            	<h3>비건베이킹인데 너무 맛있는 감자 크래커!</h3>
                            </div>
                        </div>
                         
                        <div class="product-title">
                            <a href="#">
                                <h3> MJ홈베이킹</h3>
                                <span>조회수 3.8만</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-2 featured-items isotope-item">
                    <div class="product-item">
                        <img src=https://recipe1.ezmember.co.kr/cache/recipe/2020/02/24/840820005d49a07b80d1e33e2275a9171_m.jpg class="img-responsive" width="255" height="322" alt="">
                       
                      <div class="product-hover">
                            <div class="product-meta">
                           	  <h3>[비건채식] 콩나물불고기 대신 콩나물언리미트~</h3>
                            </div>
                        </div>
                      
                        <div class="product-title">
                            <a href="#">
                                <h3>vegan cooker</h3>
                                <span>조회수 2천</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-3 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2021/04/28/a37e2cfb48df6d2120789a74e65133691_m.jpg" class="img-responsive" width="255" height="322" alt="">
                    
                               <div class="product-hover">
                            <div class="product-meta">
                              <h3>고기없이도 충분히 맛있는 쫄깃한 버섯 잡채 #비건(채식)레시피</h3>
                            </div>
                        </div>
                   
                        <div class="product-title">
                            <a href="#">
                                <h3>hiisu</h3>
                                <span>조회수 1.1만</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-1 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2018/05/01/2a5db2de839be324a6a8feaaf3ed94cd1_m.jpg" class="img-responsive" width="255" height="322" alt="">
                   
                        <div class="product-hover">
                            <div class="product-meta">
                                <h3>비건채식] 새송이버섯 소금구이</h3>
                            </div>
                        </div>
                   
                        <div class="product-title">
                            <a href="#">
                                <h3>비건러브</h3>
                                <span>조회수 1만</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 cat-3 featured-items isotope-item">
                    <div class="product-item">
                        <img src="https://recipe1.ezmember.co.kr/cache/recipe/2017/03/03/1b25b8390aeb3ff33b263e1782644a4e1_m.jpg" class="img-responsive" width="255" height="322" alt="">
                      <div class="product-hover">
                            <div class="product-meta">
                             <h3>2500원으로만드는 애호박군만두 만들기</h3>
                            </div>
                        </div>
                        
                        <div class="product-title">
                            <a href="#">
                                <h3>요생이</h3>
                                <span>조회수 8천</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div  class="recipesingup"><button ><a href="/recipe/recipepoll.do">레시피 등록</a></button></div>
        </div>
    </section>


    </div>
	 <script>
       function onDisplay() {
        
        $('#btn1').show();
        $('#btn2').show();
        $('#btn3').hide();
        
       }
       function offDisplay(){
        $('#btn1').hide();
        $('#btn2').hide();
        $('#btn3').show();
       }

    </script>
<script src="/assets/vendor/vegantable/js/jquery-1.11.2.min.js"></script> 
<script src="/assets/vendor/vegantable/js/bootstrap.min.js"></script>
<script src="/assets/vendor/vegantable/js/isotope.pkgd.min.js"></script>
<script src="/assets/vendor/vegantable/js/owl.carousel.min.js"></script>
<script src="/assets/vendor/vegantable/js/wow.min.js"></script>
<script src="/assets/vendor/vegantable/js/custom.js"></script>
</div>

