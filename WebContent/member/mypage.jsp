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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$(".tabMenu").on("click", function () {
		var originId = $(this).attr("id");
	     $(".tabMenu").each(function () {
	    	 var checkID = $(this).attr("id");
	    	 var contentPath = 'member/' + originId + '.jsp'; 
 	         if(checkID != originId) {
 	        	$(this).closest("li").removeAttr("class", "active");
	         } else {
 	        	$(this).closest("li").attr("class", "active");
 				console.log('contentPath ===> ' + contentPath);
	        	
	        	
	        	$.ajax({
                    type : 'get',  
                    url : contentPath,
					data : {	
// 						dto:${session.dto} 
						msg : "hello"
					},
                    success : function(html){
                        if(html != ""){
                            console.log("성공!! ============> ");
                            $("#mypageContent").text(html);
                        }// if : data!=null
                        else{ 
                            alert("더 불러올 데이터가 없습니다.");
                        }// else
                    },// success
                    error:function(request,status,error){
                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                    }
                });// ajax
	         }//ifelse
	     });
	});//click	
	
});
</script>
<body>


<div class="container">
	<h3 style="color: orange; font-style: italic; font-weight: bold;">MyPage</h3>
	<br/>
	<ul class="nav nav-tabs">
		<li class="active"><a href="#" class="tabMenu" id="menu1">내가 찜한 식당</a></li>
		<li><a href="#" class="tabMenu" id="menu2">내가 단 댓글</a></li>
		<li><a href="#" class="tabMenu" id="menu3">내 정보수정하기</a></li>
	</ul>
	<br/>
	<div id="mypageContent">
		<jsp:include page="menu1.jsp" />
	</div>
</div>



<!-- jQuery -->
<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
</body>