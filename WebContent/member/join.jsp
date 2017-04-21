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
	
	$("#username").on("focus", function() {
		$(".username").text("");
		if($("#username").val().trim().length == 0) {
			$("#username").val("");
		}
	});

	$("#userid").on("focus", function() {
		$(".userid").text("");
		if($("#userid").val().trim().length == 0) {
			$("#userid").val("");
		}
	});

	$("#userid").on("focus", function() {
		$(".userpwCheck").text("");
		if($("#userid").val().trim().length == 0) {
			$("#userid").val("");
		}
	});

	
	var idResult = '';
	$("#userid").on("keyup", function() {
         $.ajax({
            type:"post",
            url:"idValidationCheck.jsp",
            dataType:"text", 
            data:{
                userid:$("#userid").val()
            },
            success:function(responseData, status, xhr) {
            	idResult = responseData;
            	$(".userid").text(responseData);
            },
            error:function(error) {
                console.log("실패이유 : " + error);
            }
        });//ajax 
	});// id중복체크
	
	$("#userpw, #userpwCheck").on("focus", function() {
		if($(this).attr("id") == "userpw") {
			$("#userpw").val("");
		} else {
			$("#userpwCheck").val("");
		}
	});
	
	
	$("#userpwCheck").on("keyup", function() {
		if($("#userpwCheck").val() != $("#userpw").val()) {
			$(".userpwCheck").removeAttr("style");
			$(".userpwCheck").css("color", "red").text("비밀번호를 확인해주세요");
		} else if($("#userpwCheck").val() == $("#userpw").val()) {
			$(".userpwCheck").removeAttr("style");
			$(".userpwCheck").css("color", "green").text("비밀번호가 일치합니다");
		}
	});
	
	$("#joinForm").on("submit", function(event) {
		var result = false;

		if(idResult.includes("존재하는")) {
			$(".userid").text("존재하는 아이디입니다!");
		} else if($("#username").val().trim().length == 0) {
			$(".username").text("이름을 입력해주세요");
		} else if($("#username").val().length != $('#username').val().replace(/ /g, '').length) {
			$(".username").text("빈칸없이 입력해주세요");
		} else if($("#userid").val().trim().length == 0) {
			$(".userid").text("아이디를 입력해주세요");
		} else if($("#userid").val().length != $('#userid').val().replace(/ /g, '').length) {
			$(".userid").text("빈칸없이 입력해주세요");
		} else if($("#userpw").val().trim().length == 0) {
			$(".userpwCheck").text("비밀번호를 입력해주세요");
		} else if($("#userpw").val().length != $('#userpw').val().replace(/ /g, '').length) {
			$(".userpwCheck").text("빈칸없이 입력해주세요");
		} else if($("#userpwCheck").val().trim().length == 0) {
			$(".userpwCheck").text("비밀번호를 확인해주세요");
		} else if($("#userpwCheck").val() != $("#userpw").val()) {
			$(".userpwCheck").css("color", "red").text("비밀번호를 확인해주세요");
		} else if($("#email").val().trim().length == 0) {
			$(".email").text("이메일을 입력해주세요");
		} else if($("#email").val().length != $('#email').val().replace(/ /g, '').length) {
			$(".email").text("빈칸없이 입력해주세요");
		} else if($("#phone2").val().trim().length == 0) {
			$(".phone").text("전화번호를 입력해주세요");
		} else if($("#phone3").val().trim().length == 0) {
			$(".phone").text("전화번호를 입력해주세요");
		} else {
			result = true;
		}
		return result;
	});
	
});//ready
</script>		
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
               <div class="panel-title text-center">
               		<h1 class="title">JOIN LIKEat!</h1>
               		<hr />
               	</div>
            </div> 
			<div class="main-login main-center">
				<form id="joinForm" class="form-horizontal" method="post" action="JoinController">
					<div class="form-group">
					  <label class="col-md-5 control-label" for="Name">이름</label>  
					  <div class="col-md-2">
					  <input id="username" name="username" type="text" class="form-control input-md">
					  </div>
					  <span class="formValidation username"></span>
					</div>
					
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
					  <span class="formValidation"></span>
					</div>
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="password2">비밀번호 확인</label>
					  <div class="col-md-2">
					    <input id="userpwCheck" name="userpwCheck" type="password" class="form-control input-md">
					  </div>
					  <span class="formValidation userpwCheck"></span>
					</div>


					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-5 control-label" for="emailaddr">Email</label>  
					  <div class="col-md-4">
					  <input id="email" name="email" type="text" placeholder="LIKEat@LIKEat.com" class="form-control">
						<span class="formValidation email"></span>
					  </div>
					</div>
					
					<div class="form-group">
						<label class="col-md-5 control-label" for="Name">전화번호</label>  
						<div class="col-md-6">
							<div class="form-inline">
								<select name="phone1" id="phone1" class="form-control col-xs-1">
									<option value="010" selected="selected">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="02">02</option>
								</select>
								 &nbsp;-&nbsp;<input id="phone2" name="phone2" type="text" class="form-control input-md" size="8" maxlength="4">
								-&nbsp;<input id="phone3" name="phone3" type="text" class="form-control input-md" size="8" maxlength="4">
							</div>
						<span class="formValidation phone"></span>
						</div>
					</div>
					
					
					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-5 control-label" for="submit"></label>
					  <div class="col-md-4">
					  	<input type="reset" id="clearForm" name="clearForm" class="btn btn-primary" style="background-color: orange; border: none;" value="다시 작성하기">
					    <button id="submit" name="submit" class="btn btn-primary" style="background-color: white; border-color: orange; color: orange; font-weight: bold;">LIKEat NOW!</button>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>

<!-- 	<script type="text/javascript" src="assets/js/bootstrap.js"></script> -->
		<!-- jQuery -->
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
</body>
