<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#requestRe").on("click", function() {
			//ajax 통신
			$.ajax({
				type : "get",
				url : "ReplyResult.jsp",

				data : {
					v1 : '16',
					v2 : '123',
					v3 : 's0016',
					sid : $("#sid").val()
					, rid : $("#rid").val(),
					rcontent : $("#rcontent").val(),
					rappr : $("#rappr").val()
					 },
				success : function(html) {
					$("#replylist").html(html);
					//(responseData);
					console.log("success")
				},
				error : function(error) {
					console.log(error);
				}
			});

		});
	});
</script>
<body>
	<div id="test">ddd</div>
	<div>
		<div>
		<input id="sid" value="s0015">
		<inputid="rid" value="r0015">늘어나기? 
		<input id="">
		<input id="rcontent" value="s0015">
		<input id="rappr" value="15">
		file1:<input type="file" name="file1">
		</div>
	</div>
<button id="requestRe">보내기 </button>
	<div id="reply">댓글 리스트</div>
	<div id="replylist"></div>
</body>
</html>