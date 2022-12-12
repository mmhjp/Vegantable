	  	//아이디 정규식
          var idJ = /^[a-z0-9]{5,20}$/;
		
  		$("#id").focusout(function(){
	     if($('#id').val() == ""){
	   		$('#checks').text('아이디를 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
  		
  		$("#nick").focusout(function(){
	     if($('#nick').val() == ""){
	   		$('#checks').text('닉네임을 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
	     
  		$("#pw").focusout(function(){
	     if($('#pw').val() == ""){
	   		$('#checks').text('비밀번호 확인 질문을 입력해주세요');
	   	  	$('#checks').css('color', 'red');
	     }
	     });