<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->


<title>로그인</title>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/login.css">

<div id="contents">

<div class="card align-middle" style="width:50rem;" >
            <div class="card-title" style="margin-top:30px;">
                <img src="/assets/vendor/vegantable/images/로고1.png" alt="" class="login-brand">
    
            </div>
          <form action ="/login/goLogin.do" method="POST">
          
            <div class="card-body">
      
            <input type="text" name="id" id="id" class="form-control" placeholder="아이디" autofocus required><BR>
            <input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호"  required><br>
             <p id="check" class="check"></p><br/>
            <input id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" value="로 그 인">
            </div>
          </form>
        
            
            <div class="links">
                <a href="/login/idfind.do">아이디 찾기</a> | <a href="/login/pwfind.do">비밀번호 찾기</a> | <a href="memberRegist">회원가입</a>
    
            </div>
        </div>
        
       

    
</div>