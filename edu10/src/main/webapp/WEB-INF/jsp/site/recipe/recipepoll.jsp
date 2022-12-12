<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->


<title>레시피 등록</title>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/VeganReceipe.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/3260c78032.js" crossorigin="anonymous"></script>
 
<div id="contents">

  <div class="container">
            <h3>레시피 등록</h3>
            <form class="form-horizontal" action="/">
              <div class="form-group">
                <label class="control-label col-sm-2" for="reciepe_title">레시피 제목</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="title" placeholder="예)소고기 미역국 끓이기 " name="reciepe_title">
                </div>
                </div>
                
                
                
                <div class="form-group">
                    <label class="control-label col-sm-2" for="intro">요리소개</label>
                    <div class="col-sm-7">          
                        <textarea class="form-control" rows="2" placeholder="예) 레시피에 대한 탄생배경을 적어주세요" id="comment"></textarea>
                    </div>
                </div>
                <div class="form-group">
                <label class="control-label col-sm-2" for="intro">카테고리</label>
                <div class="btn-group">
                    <button type="button" class="btn btn-default">한식</button>
                  <button type="button" class="btn btn-default">일식</button>
                  <button type="button" class="btn btn-default">중식</button>
                  <button type="button" class="btn btn-default">베이킹</button>
                  <button type="button" class="btn btn-default">기타</button>
                </div>
            </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="intro">재료</label>
                <div class="col-sm-7">          
                    <textarea class="form-control" rows="3" placeholder="예)대체육 300g, 양배추 1/2개" id="comment"></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="intro">요리방법</label>
                <div class="col-sm-6"> 
                    <div class="camera">
                      <input type="text" placeholder="step1" class="camera-text" > 
                      <button class="cameraicon"><i class="xi-camera"></i></button>
                          
                     
                </div>
                    <div class="container p-3 my-3 border">
                        <ul>
                            <span class="fa-solid"><a href="#"><i class="fa-solid fa-circle-plus">순서추가</i></a></span>
                        </ul>
                    </div>
                </div>
            </div>
            
            
            
            
            
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-success" id="storebtn">등록</button>
                    <button type="submit" class="btn btn-Basic" id="cancelbtn">취소</button>
                </div>
            </div>
    <div class="poto"><button> <i class="xi-camera"></i>
        <div class="poto-font">요리 대표사진을 등록해주세요</div></button>
    
    </div>
   </form>
      
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

