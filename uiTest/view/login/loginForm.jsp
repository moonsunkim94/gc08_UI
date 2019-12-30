<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 김문선 UI 구현 포트폴리오 **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/axTest.js"></script>
<script src="resources/jsLib/uiTest.js"></script>
<script>
	var iCheck = false;
	var pCheck = false;

	$(function() {
		// id 확인	
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

		// password
		$('#password').focusout(function() {
			var password = $('#password').val();
			var pLength = password.length;
			if (password.length < 4) {
				$('#pMessage').text('Password 를 4글자 이상 정확하게 입력 하세요 ~~');
				$('#password').focus();
				pCheck = false;
			/* } else if (password.replace(/[!-*]/g, '').length >= pLength) {
				$('#pMessage').text('password는 특수문자를 반드시 입력해야 됩니다 ~~~');
				$('#password').focus();
				pCheck = false; */
			} else if (password.replace(/[!-*.0-9]/g, '').length > 0) {
				$('#pMessage').text('password는 숫자와 특수문자로만 정확하게 입력하세요 ~~~');
				$('#password').focus();
				pCheck = false;
			} else {
				pCheck = true;
				$('#pMessage').text('');
			}
		}); // password
		
		// login 처리
		$('#alogin').click(function(){
			if(iCheck==true && pCheck==true) {
				
				$.ajax({
					type:'Post',
					url:'login',
					data:{
						id:$('#id').val(),
						password:$('#password').val()
					},
					success:function(result){
						$('#resultArea').html(result);
					}
				});
			} else {
				alert('입력 자료에 오류가 있습니다.\n확인 후 전송 버튼을 누르세요..')
			}
		});
	}); // ready	


</script>
<style>
span {
	color: red;
	font-style: italic;
	font-size: x-small;
}
</style>
</head>
<body>
<h2>** UI구현 포트폴리오 로그인 **</h2>
<c:if test="${fail=='true'}">
	<script>alert('로그인 실패 ~~ 없는 아이디입다시 하세요~~');
			$('#id').focus();
	</script>
</c:if>

<!-- focusout 을 이용해서 입력 오류 확인을 하세요   -->
<form action="login" method="post">
<table>
	<tr>
		<td>I D :</td>
		<td><input type="text" name=id id=id value=banana><br>
			<span id=iMessage></span></td>
	</tr>
	<tr>
		<td>Password :</td>
		<td><input type="password" name=password id=password><br>
		    <span id=pMessage></span></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="button" value="Login" id=alogin>&nbsp;&nbsp;
			<input type="reset" value="Reset"><br>
			</td>
			</tr>

</table>
</form>
<a href="home">[HOME]</a>
</body>
</html>