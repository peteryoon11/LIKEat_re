<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="css/topfix1_1.css">
<style>

</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>

	<div id="fixed-menu">
		<h1>CMSFactory.NET</h1>
		<ul>
			<li>Lorem</li>
			<li>Ipsum</li>
			<li>Dolor</li> 
		</ul>
	</div>
	
	<div id="main-content">
	<c:forEach begin="0" varStatus="abc" end="50" >
		<div>dddd ${abc.count}</div>
	</c:forEach>
	<ul>
			<li>Lorem</li>
			<li>Ipsum</li>
			<li>Dolor</li>
		</ul>
		<img src="androidImage.jpg">
	</div>

</body>
</html>