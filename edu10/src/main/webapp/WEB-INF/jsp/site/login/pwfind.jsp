<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page session="false" %><!-- contents -->


<title>비밀번호 찾기</title>

<link rel="stylesheet" href="/assets/vendor/vegantable/css/pwfind.css">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<div id="contents">

 <section class="new-section1">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <div class="titie-section1 wow fadeInDown animated ">
                        <h1>비밀번호 찾기</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="card align-middle" >


        <div class="card-body">
            <form action="/login/pwfind.do" class="form-signin" method="POST">

                <input type="text" name="id" id="id" class="form-control" placeholder="아이디" required autofocus><BR>
                <input type="text" name="nick" id="nick" class="form-control" placeholder="닉네임" required autofocus><BR>
                <input type="text" name="pw" id="pw" class="form-control" placeholder="비밀번호 확인 질문" required><br>
                <p class="check" id="checks"></p><br />
                <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비 밀 번 호 찾 기</button>

            </form>

        </div>
        <div class="links">
            <a href="/login/idfind.do">아이디 찾기</a> | <a href="/login/login.do">로그인</a> | <a href="#">회원가입</a>

        </div>
    </div>
        
       

    
</div>
<script src="/assets/vendor/vegantable/js/pwfind.js"></script>