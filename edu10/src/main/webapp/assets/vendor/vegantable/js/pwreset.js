

// 비밀번호 정규식
var pwJ = /^[a-z0-9]{6,20}$/; 
var pwc = false;
var pwc2 = false;

$("#pw").focusout(function(){
	 if($('#pw').val() == ""){
		   $('#check').text('비밀번호를 입력해주세요.');
			 $('#check').css('color', 'red');
			 

	 }else{
		 pwc2 = true;
		 $('#check').hide();
	 }
  });

$("#pwcheck").focusout(function(){
	 if($('#pwcheck').val() == ""){
		   $('#check').text('필수 정보입니다.')
			 $('#check').css('color', 'red')
	 }else
		$('#check').hide()
  });

$("#pwcheck").keyup(function(){
	   
	if($(this).val()!=$("#pw").val()){
		$("#check2").html("비밀번호가 다릅니다");
		$("#check2").css("color",'red');
		pwc = false;

	}else{
		$("#check2").html("비밀번호가 일치합니다");
		$("#check2").css("color",'blue');
		pwc = true;
	}
});

$("#pw").keyup(function(){
		 
	if($(this).val()!=$("#pwcheck").val()){
		$("#check2").html("비밀번호가 다릅니다");
		$("#check2").css("color",'red');
		pwc = false;

	}else{
		$("#check2").html("비밀번호가 일치합니다");
		$("#check2").css("color",'blue');
		pwc = true;
	}
});

function regist(){
	
	 if(pwc == false ){
			  alert('비밀번호를 다시 확인해주세요')
	}else{
	 $('form').submit();
	}

	};