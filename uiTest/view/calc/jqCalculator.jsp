<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** UI 구현 계산기 **</title>
<style>
	button { width: 50px;}
</style>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>
	var expression='' ;
	function input(b) {
		expression+=b ;
		//document.getElementById('display').value
		//		= expression ; 
		// input Tag  의  value 값을 처리하는 메서드  : val()
		$('#display').val(expression);
		} ;
	
	// 1) compute , clear 기능을 jQuery 로 변경 하세요 ~~
	// 2) display Tag에 마우스가 닿으면 alert 로 
	//    dispaly의 value 값을 출력하세요
	$(function(){
		$('#eee').click(function() {
			var result = eval(expression) ;
			$('#display').val(result) ;
		}) ;
		
		$('#ccc').click(function() {
			expression="" ;
			$('#display').val(expression);
		}) ;
		
		$('#display').mouseenter(function() {
			var s=$('#display').val() ;
			alert('Display =>'+s);
		}) ;
		
		$('#close').click(function() {
			self.close();
		}) ;
	}) // ready
</script>
</head>
<body>
<h3>** UI Test_eval 을 이용한 계산기 **</h3>
=> eval : 문자열을 수식으로 바꾸어 계산해줌<br>
<input id="display" value="0" size="50"><br>
<button onclick="input('7')">7</button>
<button onclick="input('8')">8</button>
<button onclick="input('9')">9</button>
<button onclick="input('/')">/</button><br>

<button onclick="input('4')">4</button>
<button onclick="input('5')">5</button>
<button onclick="input('6')">6</button>
<button onclick="input('*')">*</button><br>

<button onclick="input('1')">1</button>
<button onclick="input('2')">2</button>
<button onclick="input('3')">3</button>
<button onclick="input('-')">-</button><br>

<button onclick="input('0')">0</button>
<button onclick="input('+')">+</button><br>
<button id=ccc>Clear</button>
<button id=eee>Enter</button>
<button id=close>종료</button>

</body>
</html>