function inputCheck() {
	var id=$('#id').val();
	var password=$('#password').val();
	var password2=$('#password2').val();
	var pLength=password.length ;
	var name=$('#name').val();
	var lev=$('#lev').val();
	var birthd=$('#birthd').val();
	var pay=$('#pay').val();
	var paLength=pay.length ;
	var weight=$('#weight').val();
	
	if (id.length<4) {
		alert('ID 를 4자리이상 정확하게 입력하세요 ~~~') ;
		$('#id').focus();
		return false;
	}
	// id 영문과 숫자만 입력 확인	
	if (id.replace(/[a-z.0-9]/gi,'').length>0) {
		alert('ID는 영문과 숫자로만 정확하게 입력하세요 ~~~') ;
		$('#id').focus();
		return false;
	}
	
	if (password.length < 4) {
		alert('Password 를 4글자 이상 정확하게 입력 하세요 ~~');
		$('#password').focus();
		return false;
	} else if (password.replace(/[!-*]/g, '').length >= pLength) {
		alert('password는 특수문자를 반드시 입력해야 됩니다 ~~~');
		$('#password').focus();
		return false;
	} else if (password.replace(/[!-*.0-9]/g, '').length > 0) {
		alert('password는 숫자와 특수문자로만 정확하게 입력하세요 ~~~');
		$('#password').focus();
		return false;
	}
	
	// password2 와 동일성 확인 기능 추가
	if (password!=password2) {
		alert('password1, 2가 다릅니다~~\정확하게 입력하세요 ~~~') ;
		$('#password2').focus();
		return false;
	}
		
	if (name.length<3) {
		alert('name 을 정확하게 입력하세요 ~~~') ;
		$('#name').focus();
		return false;
	} 
	// name: 한글입력  확인
	if (name.replace(/[가-힣.a-z]/gi,'').length>0) {
		alert('name은 한글과 영문으로만 정확하게 입력하세요 ~~~') ;
		$('#name').focus();
		return false;
	}
	if (lev.length<0) {
		alert('Level 을 입력 하세요 ~~~') ;
		$('#lev').focus();
		return false;
	} 
		
	if (birthd.length!=10) {
		alert('날짜를  YYYY-MM-DD 정확하게 입력하세요 ~~~') ;
		$('#birthd').focus();
		return false;
	} 
	if (pay.length<1)  {
		alert('pay 를 정확하게 입력하세요 ~~~') ;
		$('#pay').focus();
		return false;
	}
		// 숫자형 확인 : isNumeric 과 정수 입력 확인('.' 이 있으면 안됨 )
	if ($.isNumeric(pay)==false || pay.replace('.','').length < paLength)  {
		alert('pay 를 정수로 정확하게 입력하세요 ~~~') ;	
		$('#pay').focus();
		return false;
	}
		// 실수형:parseFloat
	if (weight.length<1 || $.isNumeric(weight)==false) {
		alert('weight를 정확하게 입력하세요 ~~~') ;
		$('#weight').focus();
		return false;
	}else {
		if (parseFloat(weight) < 20 || parseFloat(weight) > 200) {
			alert('weight의 값이 범위를 벗어납니다.~~~') ;
			$('#weight').focus();
			return false;
		}
	}  
		
}; // inputCheck

function idCheck() {
	var id=$('#id').val();
	
	if (id.length<4) {
		alert('ID 를 4자리이상 정확하게 입력하세요 ~~~') ;
		//$('#id').val('') ;
		$('#id').focus();
		return false;
	}
	// id 영문과 숫자만 입력 확인	
	if (id.replace(/[a-z.0-9]/gi,'').length>0) {
		alert('ID는 영문과 숫자로만 정확하게 입력하세요 ~~~') ;
		$('#id').focus();
		return false;
	}
  }; // idCheck()
  
//password
function pwCheck() {
	
	if (password.length < 4) {
		alert('Password 를 4글자 이상 정확하게 입력 하세요 ~~');
		$('#password').focus();
		return false;
	} else if (password.replace(/[!-*]/g, '').length >= pLength) {
		alert('password는 특수문자를 반드시 입력해야 됩니다 ~~~');
		$('#password').focus();
		return false;
	} else if (password.replace(/[!-*.0-9]/g, '').length > 0) {
		alert('password는 숫자와 특수문자로만 정확하게 입력하세요 ~~~');
		$('#password').focus();
		return false;
	}
} ; // pwCheck