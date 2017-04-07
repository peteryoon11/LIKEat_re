<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#listButton").click(function() {
			$.ajax({
				type : 'post',
				url : 'list.jsp',
				data : {
					dtt : 1 
				},
				dataType : 'html',
				success : function(data) {
					$("#listDiv").html(data);
				}
			});
		})
	})
	/* 
	출처: http://roqkffhwk.tistory.com/46 [야근싫어하는 개발자] */
</script>
</head>
<body>
	<button>send</button>
	<div id="test"></div>


	<input type="button" id="listButton" value="리스트출력" />

	<br />
	<div id="listDiv"></div>

	<!-- 
출처: http://roqkffhwk.tistory.com/46 [야근싫어하는 개발자] -->
</body>
</html>