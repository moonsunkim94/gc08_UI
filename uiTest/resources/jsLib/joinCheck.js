// joinCheck.js 파일입니다.
// joinForm.jsp의 구조를 체크하는 파일입니다.


	var iCheck = false; // 1.아이디 체크
	var pCheck = false; // 2.패스워드 체크
	var nCheck = false; // 3.이름 체크
	var lCheck = false; // 4.등급 체크
	var bCheck = false; // 5.생일체크
	var payCheck = false; // 6.급여체크
	var wCheck = false; // 7.weight 체크
	var imageCheck = false; // 8.이미지 파일 체크

	//2)  개별적 focusout 이벤트의  function 작성	
	//=> JQuery 방식 : 그러므로  $(document).ready(function()... 필요	
	$(function() {
		// 1. id 확인	
		$('#id').focusout(function() {
			var id = $('#id').val();
			// id : 길이확인 (4이하 오류)
			if (id.length < 4) {
				$('#iMessage').text('ID 를 4글자 이상 정확하게 입력 하세요 ~~');
				$('#id').focus(); // 해당태그에 focus In
				iCheck = false;
			} else if (id.replace(/[a-z.0-9]/gi, '').length > 0) {
				$('#iMessage').text('ID 를 영문자와 숫자로만 정확하게 입력 하세요 ~~~');
				$('#id').focus(); // 해당태그에 focus In
				iCheck = false;
			} else {
				iCheck = true;
				$('#iMessage').text('');
			}
		}); // id

//================================================================================

		// 2.password
		$('#password').focusout(function() {
			var password = $('#password').val();
			var pLength = password.length;
			if (password.length < 4) {
				$('#pMessage').text('Password 를 4글자 이상 정확하게 입력 하세요 ~~');
				$('#password').focus();
				pCheck = false;
			} else if (password.replace(/[!-*]/g, '').length >= pLength) {
				$('#pMessage').text('password는 특수문자를 반드시 입력해야 됩니다 ~~~');
				$('#password').focus();
				pCheck = false;
			} else if (password.replace(/[!-*.0-9]/g, '').length > 0) {
				$('#pMessage').text('password는 숫자와 특수문자로만 정확하게 입력하세요 ~~~');
				$('#password').focus();
				pCheck = false;
			} else {
				pCheck = true;
				$('#pMessage').text('');
			}
		}); // password

//================================================================================
		
		// 3. name  
		$('#name').focusout(function() {
			var name = $('#name').val();
			if (name.length < 2) {
				$('#nMessage').text('Name을  2글자 이상 정확하게 입력 하세요 ~~');
				$('#name').focus();
				nCheck = false;
			} else if (name.replace(/[가-힣.a-z]/gi, '').length > 0) {
				$('#nMessage').text('Name을  한글과 영문으로만 정확하게 입력 하세요 ~~');
				$('#name').focus();
				nCheck = false;
			} else {
				nCheck = true;
				$('#nMessage').text('');
			}
		}); // name
		
//================================================================================
		
		// 4. level	 ::lev ::lCheck
		// -> 등급 선택안할 시, 
		$('#lev').focusout(function() {  
	
		})		
		
//================================================================================
	
	   	// 5. birthday	:: birthd   bCheck
		$('#birthd').focusout(function() {  
	
		})
	   	
//================================================================================
	
		//	6. pay  급여 payCheck
		$('#pay').focusout(function() {  
			var pay = $('#pay').val();
			if (pay.length < 2) {
				alert("Pay를 정확히 입력하세요.");
				$('#pay').focus();
				nCheck = false;
			} else if (name.replace(/[가-힣.a-z]/gi, '').length > 0) {
				$('#nMessage').text('Name을  한글과 영문으로만 정확하게 입력 하세요 ~~');
				$('#pay').focus();
				nCheck = false;
			} else {
				nCheck = true;
				$('#nMessage').text('');
			}
		}); // pay
		
//================================================================================
	
		// 7. weight
		$('#weight').focusout(function() {  
	
		})
		
//================================================================================
	
		// 8. image
		$('#uploadfilef').focusout(function() {  
	
		})
		
//================================================================================

	}) // ready	

	//3) 전체적으로 입력 오류 가 없음을 확인하고 submit 여부를 판단하는 function
	function insertCheck() {
		if (iCheck == true && pCheck == true)
			return true; // submit 진행
		else {
			alert('입력 자료에 오류가 있습니다.~~\n확인 후 전송 버튼을 누르세요 ~~');
			return false; // submit 무효화
		}
	} // inputCheck