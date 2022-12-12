<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ include file="/WEB-INF/taglib/taglib.jspf"%><%@ taglib
	prefix="ui" uri="http://egovframework.gov/ctl/ui"%><%@ page
	session="false"%><!-- contents -->
<title>회원가입</title>
<link rel="stylesheet" href="/assets/vendor/vegantable/css/회원가입1.css">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<div id="contents">
	
	<div class="card align-middle">
		<form method="post" action="/etc/regist.do" class="joinForm">
			<div>
				<h2>회원가입</h2>
			</div>
			<input type="text" id="id" name="id"  oninput="checkId()" class="form-control1"
				placeholder="아이디"  >
				<!-- id ajax 중복체크 -->
				<span class="id_ok">사용 가능한 아이디입니다.</span> <span class="id_already">누군가
					이 아이디를 사용하고 있어요.</span>
				 
			<input
				type="password" id="pw" name="pw" class="form-control1"
				placeholder="비밀번호" autocomplete="off" onchange="checkPw()" 
				required /> 
			
			<input type="password" name="pwCheck" class="form-control1" id="pwCheck"
					placeholder="비밀번호 확인" onchange="checkPw()" autocomplete="off"
					required />
				<!-- 비밀번호 일치 -->
				<span id="check"> </span> 
			<input
				type="text" id="name" name="nick" class="form-control1" placeholder="닉네임"
				autocomplete="off" required /> 
			<input type="text" id="brith" name="age"
				class="form-control1" placeholder="나이"
				autocomplete="off" required />
			<div class="title">
				<b5>비밀번호 확인 질문</b5>
			</div>
			<div class="form-control1">
				<select name="question" class="text">
					<option value="0">기억에 남는 추억의 장소는?</option>
					<option value="1">자신의 인생 좌우명은?</option>
					<option value="2">자신의 보물 제1호는?</option>
					<option value="3">가장 기억에 남는 선생님 성함은?</option>
					<option value="4">타인이 모르는 자신만의 신체비밀이
						있다면?</option>
					<option value="5">추억하고 싶은 날짜가 있다면?</option>
				</select>

			</div>
			<input type="text" id="answer" name="answer" class="form-control1"
				placeholder="답변" autocomplete="off" required> 
				
			<div class="title">
				<b5>성별</b5>
			</div>
			<div class="radio1">
				<input type="radio" class="custom-control-input" name="gender" value="남자" checked> 
					<label class="custom-control-label" for="sex-1"id="man" name="gender" value="man">남</label> 
					<input type="radio"	class="custom-control-input" name="gender" value="여자">
					 <label	class="custom-control-label" for="sex-2" id="woman" name="gender" value="">여</label>
			</div>
			<input type="submit" class="btn1" value="회원가입">
		</form>
	</div>




	<script type="text/javascript">
	 //아이디 중복확인
	    function checkId(){
	        var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
	        $.ajax({
	            url:'/join/idCheck.do', //Controller에서 요청 받을 주소
	            type:'post', //POST 방식으로 전달
	            data:{id:id},
	            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
	            	console.log(id);
	                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
	                    $('.id_ok').css("display","inline-block"); 
	                    $('.id_already').css("display", "none");
	                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
	                    $('.id_already').css("display","inline-block");
	                    $('.id_ok').css("display", "none");
	                   
	                }
	            },
	            error:function(){
	                alert("에러입니다");
	            }
	        });
	        };
	        //비번조건설정
	        function checkPw(){
	        	var pw = $('#pw').val();
	        	var SC = ["!","@","#","$","%"];
	        	var check_SC = 0;
	        	var pwCheck = $("#pwCheck").val();
	        	if(pw.length < 6 || pw.length >16){
	                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
	                pw='';
	            }
	            for(var i=0;i<SC.length;i++){
	                if(pw.indexOf(SC[i]) != -1){
	                    check_SC = 1;
	                }
	            }
	            if(check_SC == 0){
	                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
	               pw='';
	            }
	            if(pw !='' && pwCheck !=''){
	                if(pw == pwCheck){
	                	console.log( $('#check').val())
	                    $('#check').text("비밀번호가 일치합니다.");
	                    $('#check').css("color","blue");
	                }
	                else{
	                	 $('#check').text("비밀번호가 일치하지 않습니다.");
		                    $('#check').css("color","red");
	                }
	            }
	        }
	</script>

















</div>