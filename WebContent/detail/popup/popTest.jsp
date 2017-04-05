<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	
	
	
		function popupOpen() {
			var popUrl = "SreviewForm.jsp"; //팝업창에 출력될 페이지 URL
	
			var popOption = "width=500, height=500, resizable=no, scrollbars=no,  left=500, top=120, status=no;"; //팝업창 옵션(optoin)
	
			window.open(popUrl, "", popOption);
	
		}
	</script>

	<form action="ReviewInputController">
		<input value="dffff" id="dd333" name="dddd"> 
		<a
			href="javascript:popupOpen();"> 열려라 팝업창! </a> <input type="button"
			value="팝업창" onclick="javascript:popupOpen();"> <input
			type="submit" value="보내기 ">
	</form>

	<!-- 
출처: http://h5bak.tistory.com/130 [이준빈은 호박머리] -->

</body>
</html>