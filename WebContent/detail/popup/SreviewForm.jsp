<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="ReviewInputController" method="get">
			<table border="2" bordercolor="orange">
				<thead>
					<tr>
						<td>가게이름 :</td>
						<td><span class=""></span>${dddd}</td>
						<td>3</td>
						<td>4</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="4"><textarea id="content" rows="10" cols="10" name="content"></textarea></td>
					</tr>
				</tbody>
			</table>

			<input type="submit" value="전송"> &nbsp; <input type="reset"
				value="취소 ">

		</form>
	</div>

</body>
</html>