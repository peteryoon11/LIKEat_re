<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.star_rating {
	font-size: 0;
	letter-spacing: -4px;
}

.star_rating a {
	font-size: 22px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

.star_rating a:first-child {
	margin-left: 0;
}

.star_rating a.on {
	color: #777;
}

/* 
출처: http://uidevelop.tistory.com/36 [UI Develop]

출처: http://uidevelop.tistory.com/36 [UI Develop] */
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	$(".star_rating a").click(function() {
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		return false;
	});

	/* 
	출처: http://uidevelop.tistory.com/36 [UI Develop] */
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
  </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>
</head>
<body>
	<p class="star_rating">
		<a href="#" class="on">★</a> 
		<a href="#" class="on">★</a> 
		<a href="#"	class="on">★</a> 
		<a href="#">★</a> 
		<a href="#">★</a>
	</p>


	<!-- 출처: http://uidevelop.tistory.com/36 [UI Develop]
 -->
 <span class="glyphicon glyphicon-star-empty" onclick=""></span>
				별 자리
</body>
</html>