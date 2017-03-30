<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<!-- Website Font style -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

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
.formValidation {
	color: red;
	font-size: 12px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#loginForm").on("submit", function(event) {
//		event.preventDefault();
		var result = false;

		if($("#userid").val().trim().length == 0) {
			$(".userid").text("아이디를 입력해주세요");
		} else if($("#userpw").val().trim().length == 0) {
			$(".userpw").text("비밀번호를 입력해주세요");
		} else {
			result = true;
		}
		return result;
	});
	
	
	$("#userid").on("focus", function() {
		$(".userid").text("");		
	});//focus
	$("#userpw").on("focus", function() {
		$(".userpw").text("");		
	});//focus
	
	
});//ready
</script>


<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
               <div class="panel-title text-center">
               		<h1 class="title">Hello LIKEat-er!</h1>
               		<hr />
               	</div>
            </div> 
			<div class="main-login main-center">
				<form id="loginForm" class="form-horizontal" method="post" action="LoginController">
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="Name">아이디</label>  
					  <div class="col-md-2">
					  <input id="userid" name="userid" type="text" class="form-control input-md">
					  </div>
					  <span class="formValidation userid"></span>
					</div>
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="password">비밀번호</label>
					  <div class="col-md-2">
					    <input id="userpw" name="userpw" type="password" class="form-control input-md">
					  </div>
					  <span class="formValidation userpw"></span>
					</div>
					
					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-5 control-label" for="submit"></label>
					  <div class="col-md-4">
					    <button id="submit" name="submit" class="btn btn-primary" style="background-color: orange; border: none; border-color: orange; font-weight: bold;">LIKEat NOW!</button>
					  </div>
					</div>
					<div class="form-group">
					  <label class="col-md-5 control-label" ></label>
					  <div class="col-md-4">
					  	<a href="JoinFormController">
						  	<input type="button" id="join" name="join" class="btn btn-primary" style="background-color: white; border-color: orange; color: orange; font-weight: bold;" value="join LIKEat!">
					  	</a>
					  	<span style="background-color: white; border-color: orange; color: orange; font-weight: bold; font-size: small;">&nbsp;&nbsp;함께해요 LIKEat!</span>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>

		<!-- jQuery -->
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
</body>