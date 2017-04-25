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
.btn-search-detail {
	border: none;
	background-color: orange;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
	 
	});
</script>
<body id="mainPage">
	<c:choose>
		<c:when test="${searchList eq '[]'}">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h2>검색결과가 없습니다 :-(</h2>
               	</div>
            </div> 
          	<nav class="navbar navbar-default navbar-fixed-bottom">
				<div class="container" align="center">
					<p>Copyright &copy; LIKEat Project 2017</p>
				</div>
			</nav>
		</c:when>
		<c:otherwise>
		    <!-- Page Content -->
		    <div class="container">
		
		        <!-- Page Heading -->
		        <div class="row">
		            <div class="col-lg-12">
		                <h1 class="page-header">검색한 결과
		                    <small>총 ${resultCnt} 건</small>
		                </h1>
		            </div>
		        </div>
		        <!-- /.row -->
				
				<c:forEach items="${searchList}" var="storeDTO">
			        <!-- Project One -->
			        <div class="row">
			            <div class="col-md-4">
			                <a href="DetailPageController?sid=${storeDTO.sid}">
			                    <img class="img-responsive" src="${storeDTO.imgSrc1 }" alt="">
			                </a>
			            </div>
			            <div class="col-md-8">
			                <h3>${storeDTO.sname }</h3>
			                <h7>
			               		<c:choose>
									<c:when test="${0 eq storeDTO.ratingCnt}">
										아직 별점이 없습니다 ☞☜							
									</c:when>
									<c:otherwise>
							 			<c:set value="${storeDTO.rating / storeDTO.ratingCnt}" var="rate"/>
	 									<fmt:formatNumber value="${rate }" pattern=".0"/>
									</c:otherwise>
								</c:choose>
			                </h7>
			                <p>
								${storeDTO.menu }			                
			                </p>
			                <a class="btn btn-primary btn-search-detail" href="#">자세히 보러가기<span class="glyphicon glyphicon-chevron-right"></span></a>
			            </div>
			        </div>
			        <!-- /.row -->
			
			        <br/><br/><br/>
			
				</c:forEach>	
			</div>
			<!-- Pagination -->
<!-- 			<div class="row text-center">
			    <div class="col-lg-12">
			        <ul class="pagination">
			            <li>
			                <a href="#">&laquo;</a>
			            </li>
			            <li class="active">
			                <a href="#">1</a>
			            </li>
			            <li>
			                <a href="#">2</a>
			            </li>
			            <li>
			                <a href="#">&raquo;</a>
			            </li>
			        </ul>
			    </div>
			</div> -->
			 <!-- /.row -->
		<!-- Footer -->
			<footer class="container-fluid text-center">
				<a href="#mainPage" title="맨 위로">
					<span class="glyphicon glyphicon-chevron-up" style="color: orange;"></span>
				</a>
				<br/><br/>
				<p>Copyright &copy; LIKEat Project 2017</p>
			</footer>
		</c:otherwise>
	</c:choose>
	
<!-- jQuery -->
<!-- 
 	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>
	Bootstrap Core JavaScript
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
 -->
</body>