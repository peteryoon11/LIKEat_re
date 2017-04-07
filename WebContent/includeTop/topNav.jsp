<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- Bootstrap Core CSS -->
<link href="startbootstrap-creative-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="startbootstrap-creative-gh-pages/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="startbootstrap-creative-gh-pages/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="startbootstrap-creative-gh-pages/css/creative.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 
<style type="text/css">
.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#searchForm").on("submit", function(e) {
			var result = false;
			if($("#searchKeyword").val() == null || $("#searchKeyword").val().trim().length == 0) {
			} else {
				result = true;
			}
			return result;
		});
		
		$(".notyetRegion").on("click", function() {
			alert('아직 준비중입니다 :-)');
		});
		
/*	
		$("#MyPage").on("click", function(event) {
			event.preventDefault;
			
 			if() {
// 로그인이 안되어있을 시, 로그인하고 오라는경고창 띄워야함				
			}
 		});
*/		
	});
</script>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
  
    <!-- Brand and toggle get grouped for better mobile display -->
    	<div class="navbar-header col-lg-1">
      		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        		<span class="sr-only">menu</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
      		</button>
     		 <a class="navbar-brand" href="LikeatMainController" style="color: orange;">LIKEat!</a>
   		</div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse col-lg-4" id="bs-example-navbar-collapse-1">
	    	<form class="navbar-form navbar-left" id="searchForm"  name="searchForm" action="SearchController" method="get">
		        <div class="form-group">
		        	<input id="searchKeyword" name="searchKeyword" type="text" class="form-control" placeholder="상호명 또는 대표 메뉴로 검색해보세요 :-)" size="50">
		        </div>
	      	</form>
	 	</div>
	 	<!-- /.navbar-collapse -->
      	
		<ul class="nav navbar-nav ">
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">menu<span class="caret"></span></a>
		        <ul class="dropdown-menu" aria-labelledby="dropdownMenuDivider dropdownMenu3">
		        	<li class="dropdown-header">지역별</li>
					<li><a href="RegionGangnamController">강남구</a></li>
					<li><a href="RegionSongpaController">송파구</a></li>
					<li><a href="RegionYongsanController">용산구</a></li>
					<li><a href="#" class="notyetRegion">강북구</a></li>
					<li><a href="#" class="notyetRegion">강서구</a></li>
					<li role="separator" class="divider"></li>
		        	<li class="dropdown-header">종류별</li>
					<li><a href="CategoryKController">한식</a></li>
					<li><a href="CategoryCController">중식</a></li>
					<li><a href="CategoryFController">양식</a></li>
					<li><a href="#" class="notyetRegion">일식</a></li>
					<li><a href="#" class="notyetRegion">분식</a></li>
				</ul>
			</li>
		</ul>
		
		<ul class="nav navbar-nav navbar-right">
			<c:choose>
				<c:when test="${loginfo eq null}">
					<li>
						<a href="JoinFormController">
							<span class="glyphicon glyphicon-user"></span>
							JOIN
						</a>
					</li>
					<li>
						<a href="LoginFormController">
							<span class="glyphicon glyphicon-log-in"></span> 
							LOGIN
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<a href="MyPageController" id="MyPage">
							<span class="glyphicon glyphicon-cog"></span> 
							MYPAGE
						</a>
					</li>
					<li>
						<a href="LogoutController">
							<span class="glyphicon glyphicon-log-out"></span> 
							LOGOUT
						</a>
					</li>
				</c:otherwise>
			</c:choose>
 		</ul>
	</div><!-- /.container-fluid -->
</nav>


	<!-- jQuery -->
	<script src="startbootstrap-creative-gh-pages/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="startbootstrap-creative-gh-pages/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- Plugin JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="startbootstrap-creative-gh-pages/vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="startbootstrap-creative-gh-pages/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Theme JavaScript -->
	<script src="startbootstrap-creative-gh-pages/js/creative.min.js"></script>
</body>