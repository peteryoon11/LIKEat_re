<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom CSS -->
<link rel="stylesheet" href="css/BStopfix1_1.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="row" id="fixed-menu">
		<div>ddddddd<br><br>ddddsss</div>
	</div>
	<div >
		<div class="row main-content" id="main-content">
			<!-- 중간 사진 있는 부분 -->
			<div class="col-sm-3">
				<img class="img-responsive"
					src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709367248107.jpg">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive"
					src="TestSource/Detailtest/dummy_image/dummy_02.jpg">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive"
					src="TestSource/Detailtest/dummy_image/dummy_03.jpg">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive"
					src="TestSource/Detailtest/dummy_image/dummy_04.jpg">
			</div>
		</div>
	<c:forEach varStatus="abc" begin="0" end="30">
	<div>${abc.count} </div>
	</c:forEach>
	</div>
</body>
</html>