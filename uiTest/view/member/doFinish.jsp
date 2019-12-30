<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** UI구현 포트폴리오 회원가입 안내 **</title>
</head>
<body>
<h3>** UI구현 포트폴리오 회원가입 안내 **</h3>
<c:if test="${fCode=='D'}">
	<h3> 없는 ID입니다..~~~</h3>
	<a href="loginf">로그인 하기</a>
</c:if>
<c:if test="${fCode=='U'}">
	<h3> 정보 수정에 실패했습니다~~~</h3>
	<a href="mlist">memberList</a>
</c:if>
<c:if test="${fCode=='JS'}">
		<h3>회원 가입 실패~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	<a href="joinf">[회원가입]</a>&nbsp;&nbsp;
	<a href="#" onclick="history.back()">[다시 하기]</a> 




<!-- 
	<h3>${joinID} 님 회원 가입 되었습니다~~</h3>
	<a href="loginf">로그인 하기</a> -->
</c:if>
<c:if test="${fCode=='JF'}">
	<h3>회원 가입 실패~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	<a href="joinf">[회원가입]</a>&nbsp;&nbsp;
	<a href="#" onclick="history.back()">[다시 하기]</a> 
</c:if>
<c:if test="${fCode=='DS'}">
	<h3>회원 탈퇴 되었습니다~~</h3>
</c:if>
<c:if test="${fCode=='DF'}">
	<h3>회원 탈퇴 실패~~</h3>
	<a href="javascript:history.go(-1)">[다시 하기]</a> 
</c:if>
<br>
<a href="home">HOME</a>
</body>
</html>