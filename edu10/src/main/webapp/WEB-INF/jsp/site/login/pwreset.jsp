<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->


<title>비밀번호 재설정</title>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/pwreset.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<div id="contents">

  <section class="new-section1">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <div class="titie-section1 wow fadeInDown animated ">
                        <h1>비밀번호 재설정</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="card align-middle" >


        <div class="card-body">
            <form action="/login/pwreset.do" class="form-signin" method="POST">
                <p class="check" >내 아이디  : 0000</p><br/>
                <input type="password" name="pw" id="pw" class="form-control" placeholder="비밀번호" required autofocus><BR>
                <input type="password" name="pwcheck" id="pwcheck" class="form-control" placeholder="비밀번호 재확인" required><br>
                <p class="check" id="check"></p><br />
                <p class="check" id="check2"></p><br />
                <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비 밀 번 호 재 설 정</button>

            </form>

        </div>
        <div class="links">
            <a href="login/idfind.do">아이디 찾기</a> | <a href="/login/login.do">로그인</a> | <a href="#">회원가입</a>

        </div>
    </div>
        
       

    
</div>
<script src="/assets/vendor/vegantable/js/pwreset.js"></script>