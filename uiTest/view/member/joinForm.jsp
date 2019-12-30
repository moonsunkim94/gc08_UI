<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 김문선 UI 구현 포트폴리오 **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/inCheck.js"></script>
<script src="resources/jsLib/uiTest.js"></script>
<script>

function idDupCheck() {
		if (idCheck()==false) return ;
	$.ajax({
		type:'Post',
		url:'jsidCheck',
		data: {
			id:$('#id').val(),
		},
		success:function(data){
	
			if (data.code==200) {
				//사용 불가능
				alert("** 이미 사용중인 ID 입니다, 다시 ID를 입력하세요. **");
				$('#id').focus();
			}else if (data.code==201) {
				alert("** 사용가능한 ID 입니다. **");
				$('#password').focus();
				document.getElementById('sss').disabled="";
			}
		} // success
	}); // ajax
}; // idDupCheck 

$(function(){
	$('#id').change(function() {
		document.getElementById('sss').disabled="disabled";
	}); // change
}); //ready

</script>
</head>
<body>
<h3>** UI구현 포트폴리오 회원가입 **</h3>
<h3>
<form action="mjoin" method="post" enctype="multipart/form-data" >
<table>
	<tr height="40"><td bgcolor="yellow">I D</td>
	<td><input type="text" name="id" id=id size="10">
		<input type="button" value="ID 중복확인" onclick="idDupCheck()">
	</td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Password</td>
	<td><input type="password" name="password" id="password" size="10"></td>
	</tr>
	<tr height="40"><td bgcolor="silver">Password</td>
	<td><input type="password" id="password2" size="10"></td>
	</tr>
	
	<tr height="40"><td bgcolor="yellow">Name</td>
	<td><input type="text" name="name"  id="name" value="홍길동" size="10"></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Level</td>
	<td><select name="lev" id="lev">
		<option value="A">VIP</option>
		<option value="B">나무</option>
		<option value="C">잎새</option>
		<option value="D" selected="selected">새싹</option>
	</select></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">BirthDay</td>
	<td><input type="date" name="birthd" id="birthd" ></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Pay</td>
	<td><input type="text" name="pay" id="pay" value="1000" size="10"></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Weight</td>
	<td><input type="text" name="weight" id="weight" value="75.77" size="10"></td>
	</tr>
	<tr height="40"><td bgcolor="yellow">Image</td>
	<td><input type="file" name="uploadfilef"></td>
	</tr>
	<tr height="40"><td></td>
	<td><input type="submit" value="가입" onclick="return inputCheck()"
				disabled="disabled" id="sss">
	&nbsp;&nbsp;
	    <input type="reset"  value="취소">&nbsp;
	   </td>
	</tr>
</table>
</form></h3>
<a href="home"> [Home]</leva>
</body>
</html>