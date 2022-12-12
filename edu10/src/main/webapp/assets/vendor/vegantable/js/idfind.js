$("#nick").focusout(function(){
  			
    if($('#nick').val() == ""){
          $('#check').text('닉네임을 입력해주세요.');
            $('#check').css('color', 'red');
  
    }else{
        $('#check').hide();
    }
});

$("#pw").focusout(function(){
    if($('#pw').val() == ""){
          $('#check').text('비밀번호 확인 질문을 입력해주세요');
            $('#check').css('color', 'red');
    }else{
        $('#check').hide();
    }
});
