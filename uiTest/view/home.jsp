<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<html>
<head>
	<title>** 김문선 UI 구현 포트폴리오 **</title>
	<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
	<script src="resources/jsLib/uiTest.js"></script>
	<script src="resources/jsLib/axTest.js"></script>
	<script>
	function setClock() {
		var now = new Date() ;
		var t ='* Current Time: '
			+ now.getFullYear()+'년'+(now.getMonth()+1)+'월'+now.getDate()+'일'
		 	+'_'+now.getHours()+':'+now.getMinutes()+':'+now.getSeconds() ;
		document.getElementById("clock").innerHTML=t;
		setTimeout("setClock()",1000)  // 1/1000 초 단위
	}
	</script>
</head>

<body onload="setClock()">
<h2>Hello UI Test_20190823 !!! </h2>
<b><P id="clock"></p></b>
<img src="resources/image/mini33.gif" width="300" height="200"><br>

<!-- 회원가입 -->
<a href="joinf">[Join]</a>&nbsp;&nbsp;

<!-- 로그인 : internal ajax-->
<span id=aloginf class=textLink>[Login]</span>&nbsp;&nbsp;

<!-- 계산기 :popup창으로 표시  -->
<span id=calcf class=textLink>[Calculator]</span><br><br>
<hr>
<div id=resultArea></div>
</body>
</html>
