<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Bootstrap Core CSS -->
<link
	href="startbootstrap-4-col-portfolio-gh-pages/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="startbootstrap-4-col-portfolio-gh-pages/css/4-col-portfolio.css"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
<style type="text/css">


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
	 
	});
</script>
<body>
<c:choose>
	<c:when test="${searchList eq null}">
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
		검색결과가 없습니다 ㅠ
	</c:when>

	<c:otherwise>
		<c:forEach items="${searchList}" var="storeDTO">
		${storeDTO.sname }
		</c:forEach>	
	</c:otherwise>
</c:choose>






 
	<!-- Footer -->
	<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; LIKEat Project 2017</p>
			</div>
		</div>
		<!-- /.row -->
	</footer>
<!-- jQuery -->
<!-- 

 	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>
	Bootstrap Core JavaScript
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
 -->
</body>