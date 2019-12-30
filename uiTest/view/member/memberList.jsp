<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring_MVC MemberList_Mybatis **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/axTest.js"></script>
<script src="resources/jsLib/axTest2.js"></script>
</head>
<body>
<h3>** Spring_MVC MemberList_Mybatis **</h3>
<img src="resources/image/bar.gif">
<table style="width:800;" border="1">
<tr align="center" height=30 bgcolor="pink">
	<td>I D</td><td>Password</td><td>Name</td>
	<td>Lev</td><td>BirthDay</td><td>Pay</td>
	<td>Weight</td><td>Image</td>
</tr>
	<c:forEach var="mm" items="${Banana}">
	<td><a href="#" onclick="axBoard(${mm.id})">${mm.id}</a></td>
	
	<td>${mm.password}</td><td>${mm.name}</td>
	<td>${mm.lev}</td>
	<td>${mm.birthd}</td>
	<td>
		<fmt:formatNumber value="${mm.pay}" pattern="##,###,###"/>
	</td>
	<td>${mm.weight}</td>
	<td><img src="${mm.uploadfile}" width="100" height="100"/></td>
	</tr>
	</c:forEach>
</table>

<a href="home">[HOME]</a><br>
<a href="#" onclick="history.back()">[이전으로]</a> 

<div id="resultArea2"></div>
</body>
</html>