<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.thumbnail-wrap {
  width: 100%;
}

.thumbnail-wrap img {
  display: block;
  max-width: 100%;
  height: auto;
}

.thumbnail {
  position: relative;
  padding-top: 100%;
  overflow: hidden;
}

.thumbnail img {
  position: absolute;
  top:0;
  left: 0;
}

.thumbnail .centered  {
  position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  -webkit-transform: translate(50%,50%);
    -ms-transform: translate(50%,50%);
    transform: translate(50%,50%);
}

.thumbnail .centered img {
  -webkit-transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
    transform: translate(-50%,-50%);
}

.thumbnail img.portrait {
  width: 100%;
  max-width: none;
  height: auto;
}

.thumbnail img.landscape {
  width: auto;
  max-width: none;
  height: 100%;
}


.thumbnail-wrapw {
  width: 100%;
  height: 50%;
}

.thumbnail-wrapw imgw {
  display: block;
  max-width: 100%;
   height: 50%;
}

.thumbnailw {
  position: relative;
  padding-top: 100%;
  overflow: hidden;
}

.thumbnailw imgw {
  position: absolute;
  top:0;
  left: 0;
}

.thumbnailw .centeredw  {
  position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

.thumbnailw img.landscapew {
   width: 100%;
  max-width: none;
  height: 50%; 
}


/* carousel */
body{padding-top:20px;}
.carousel {
    margin-bottom: 0;
    padding: 0 40px 30px 40px;
}
/* The controlsy */
.carousel-control {
	left: -12px;
    height: 40px;
	width: 40px;
    background: none repeat scroll 0 0 #222222;
    border: 4px solid #FFFFFF;
    border-radius: 23px 23px 23px 23px;
    margin-top: 90px;
}
.carousel-control.right {
	right: -12px;
}
/* The indicators */
.carousel-indicators {
	right: 50%;
	top: auto;
	bottom: -10px;
	margin-right: -19px;
}
/* The colour of the indicators */
.carousel-indicators li {
	background: #cecece;
}
.carousel-indicators .active {
background: #428bca;
}
/* end carousel */

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
	    var curPage = 2;

	    var lastScrollTop = 0;
	    var easeEffect = 'easeInQuint';
	     
	    // 1. 스크롤 이벤트 발생
	    $(window).scroll(function(){ // ① 스크롤 이벤트 최초 발생
	         
	        var currentScrollTop = $(window).scrollTop();
	         
	        /* 
	            =================   다운 스크롤인 상태  ================
	        */
	        if( currentScrollTop - lastScrollTop > 0 ){
	            // down-scroll : 현재 게시글 다음의 글을 불러온다.
	            console.log("down-scroll");
	             
	            // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	            if ($(window).scrollTop() == ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
	                // 3. 현재 뿌려진 게시글의 curPage정보를 받아와, 다음페이지 분량의 list를 받아온다
//	                curPage = $("#curPage").val();
//	            	curPage++;
	                // 4. ajax를 이용하여 다음페이지의 게시물 데이터를 받아온다.
	                $.ajax({
	                    type : 'get',  // list를 요청하는 것이므로, get방식으로 보내도 될듯
	                    url : 'main/infiniteScrollList.jsp',// 요청할 서버의 url
						data : {	
							curPage:curPage
	                    },
	                    success : function(html){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	                        if(html != ""){
	                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.
//	                            $("#inputData").html(html);
	                            console.log("성공!! ============> ");
	                            $(".neweatList").last().after(html);
	                            console.log("현재페이지 ===============> " + curPage);
	                            curPage++;
	                        }// if : data!=null
	                        else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..
	                            alert("더 불러올 데이터가 없습니다.");
	                        }// else
	                    },// success
	                    error:function(request,status,error){
	                        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	                    }
	                });// ajax
	                 
	                // 여기서 class가 listToChange인 것중 가장 처음인 것을 찾아서 그 위치로 이동하자.
	                var position = $(".project-name").last().offset();// 위치 값
	                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
	                $('html,body').stop().animate({scrollTop : position.top }, 600, easeEffect);
	                }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	             
	            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
//	            lastScrollTop = currentScrollTop;
	        }// 다운스크롤인 상태
	         
	        /* 
	            =================   업 스크롤인 상태(미포)   ================
	        */
		});// scroll event
		
 
		$('#Carousel').carousel({
			  interval: 2000
		})
		 
	 
	});
</script>
<body id="mainPage">
	<!-- TOPeat! -->
	<div class="container" style="padding-top: 50px">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="color: orange; font-style: italic; font-weight: bold;">TOPeat!</h1>
			</div>
		</div>
		<!-- /.row -->
		<!-- Projects Row -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
		            <div id="CarouselTop" class="carousel slide">
			            <ol class="carousel-indicators">
			                <li data-target="#CarouselTop" data-slide-to="0" class="active"></li>
			                <li data-target="#CarouselTop" data-slide-to="1"></li>
			            </ol>
		          	  <!-- Carousel items -->
			            <div class="carousel-inner">
							<div class="item active">
								<div class="popup-gallery">
									<c:forEach items="${topList}" var="topDTO" begin="0" end="3" varStatus="i">
								  	<div class="col-md-3">
								  		<a href="DetailPageController?sid=${topDTO.sid}" class="portfolio-box">
											<div class="thumbnail-wrap">
												<div class="thumbnail" style="overflow: hidden">
													<div class="centered">
														<img src="${topDTO.imgSrc1}" class="landscape" style="max-width:100%;">
													</div>
												</div>
											</div>
										<div class="portfolio-box-caption">
											<div class="portfolio-box-caption-content">
												<div class="project-name">
													${topDTO.sname}
												</div>
												<div class="project-category text-faded">
													<c:choose>
														<c:when test="${0 eq topDTO.ratingCnt}">
															"아직 별점이 없습니다"							
														</c:when>
														<c:otherwise>
															<c:set value="${topDTO.rating / topDTO.ratingCnt}" var="rate"/>
							 								<fmt:formatNumber value="${rate }" pattern=".0"/>
														</c:otherwise>
													</c:choose>
													${topDTO.sid}
						          	 			</div>
							           		</div>
						       			</div>
										</a>
									</div>
								</c:forEach>
								</div><!--.popup-gallery-->
							</div><!--.item-->
			              
			            	<div class="item">
								<div class="popup-gallery">
									<c:forEach items="${topList}" var="topDTO" begin="4" end="7" varStatus="i">
									  	<div class="col-md-3">
									  		<a href="DetailPageController?sid=${topDTO.sid}" class="portfolio-box">
												<div class="thumbnail-wrap">
													<div class="thumbnail">
														<div class="centered">
															<img src="${topDTO.imgSrc1}" class="landscape" style="max-width:100%;">
														</div>
													</div>
												</div>
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-name">
															${topDTO.sname}
														</div>
														<div class="project-category text-faded">
															<c:choose>
																<c:when test="${0 eq topDTO.ratingCnt}">
																	"아직 별점이 없습니다"							
																</c:when>
																<c:otherwise>
								 									<c:set value="${topDTO.rating / topDTO.ratingCnt}" var="rate"/>
							 										<fmt:formatNumber value="${rate }" pattern=".0"/>
																</c:otherwise>
															</c:choose>
															${topDTO.sid}
							          	 				</div>
								           			</div>
							       				</div>
											</a>
										</div>
									</c:forEach>
								</div><!--.popup-gallery-->
							</div><!--.item-->
            			</div><!--.carousel-inner-->
		            	<a data-slide="prev" href="#CarouselTop" class="left carousel-control">‹</a>
						<a data-slide="next" href="#CarouselTop" class="right carousel-control">›</a>
           	 		</div><!--.Carousel-->
				</div> <!-- end : col-md-12 -->
			</div> <!-- end : row popup-gallery -->
		</div> <!-- end : content container -->
	</div>
	<!-- TOPeat! container -->



	<!-- NEWeat! container -->
	<div class="container">
		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="color: orange; font-style: italic; font-weight: bold;">NEWeat!</h1>
			</div>
		</div>
		<!-- /.row -->
		<!-- Projects Row -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
		            <div id="CarouselNew" class="carousel slide">
			            <ol class="carousel-indicators">
			                <li data-target="#CarouselNew" data-slide-to="0" class="active"></li>
			                <li data-target="#CarouselNew" data-slide-to="1"></li>
			            </ol>
		          	  <!-- Carousel items -->
			            <div class="carousel-inner">
							<div class="item active">
								<div class="popup-gallery">
									<c:forEach items="${newList}" var="newDTO" begin="0" end="3" varStatus="i">
								  	<div class="col-md-3">
								  		<a href="DetailPageController?sid=${newDTO.sid}" class="portfolio-box">
											<div class="thumbnail-wrap">
												<div class="thumbnail">
													<div class="centered">
														<img src="${newDTO.imgSrc1}" class="landscape" style="max-width:100%;">
													</div>
												</div>
											</div>
										<div class="portfolio-box-caption">
											<div class="portfolio-box-caption-content">
												<div class="project-name">
													${newDTO.sname}
												</div>
												<div class="project-category text-faded">
													<c:choose>
														<c:when test="${0 eq newDTO.ratingCnt}">
															"아직 별점이 없습니다"							
														</c:when>
														<c:otherwise>
							 								<c:set value="${newDTO.rating / newDTO.ratingCnt}" var="rate"/>
							 								<fmt:formatNumber value="${rate }" pattern=".0"/>
														</c:otherwise>
													</c:choose>
													${newDTO.sid}
						          	 			</div>
							           		</div>
						       			</div>
										</a>
									</div>
								</c:forEach>
								</div><!--.popup-gallery-->
							</div><!--.item-->
			              
			            	<div class="item">
								<div class="popup-gallery">
									<c:forEach items="${newList}" var="newDTO" begin="4" end="7" varStatus="i">
									  	<div class="col-md-3">
									  		<a href="DetailPageController?sid=${newDTO.sid}" class="portfolio-box">
												<div class="thumbnail-wrap">
													<div class="thumbnail">
														<div class="centered">
															<img src="${newDTO.imgSrc1}" class="landscape" style="max-width:100%;">
														</div>
													</div>
												</div>
												<div class="portfolio-box-caption">
													<div class="portfolio-box-caption-content">
														<div class="project-name">
															${newDTO.sname}
														</div>
														<div class="project-category text-faded">
															<c:choose>
																<c:when test="${0 eq newDTO.ratingCnt}">
																	"아직 별점이 없습니다"							
																</c:when>
																<c:otherwise>
								 									<c:set value="${newDTO.rating / newDTO.ratingCnt}" var="rate"/>
							 										<fmt:formatNumber value="${rate }" pattern=".0"/>
																</c:otherwise>
															</c:choose>
															${newDTO.sid}
							          	 				</div>
								           			</div>
							       				</div>
											</a>
										</div>
									</c:forEach>
								</div><!--.popup-gallery-->
							</div><!--.item-->
            			</div><!--.carousel-inner-->
		            	<a data-slide="prev" href="#CarouselNew" class="left carousel-control">‹</a>
						<a data-slide="next" href="#CarouselNew" class="right carousel-control">›</a>
           	 		</div><!--.Carousel-->
				</div> <!-- end : col-md-12 -->
			</div> <!-- end : row popup-gallery -->
		</div> <!-- end : content container -->
	</div>
	<!-- NEWeat! container -->


	<div class="container">
		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="color: orange; font-style: italic; font-weight: bold;">
					LIKEat! <small>all the list</small>
				</h1>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- NEWeat! container -->
    <section class="no-padding neweatList" id="portfolio">
        <div class="container">
            <div class="row popup-gallery">
				<c:forEach items="${pageDTO.list}" var="s" varStatus="i">
					<div class="col-lg-3 col-sm-6">
					    <a href="DetailPageController?sid=${s.sid}" class="portfolio-box">
					        <img src="${s.imgSrc1}" class="img-responsive" alt="" >
					        <div class="portfolio-box-caption">
					            <div class="portfolio-box-caption-content">
					                <div class="project-name">
					                    ${s.sname}
					                </div>
					                <div class="project-category text-faded">
					                    ${s.sid}
					                    <input type="hidden" id="curPage" name="curPage"  value="${pageDTO.curPage}">
					                </div>
					            </div>
					        </div>
					    </a>
					</div>
            	</c:forEach>
            </div>
        </div>
    </section>
  <div id="inputData"></div>
    <br/>


<!-- Footer -->
	<footer class="container-fluid text-center">
		<a href="#mainPage" title="맨 위로">
			<span class="glyphicon glyphicon-chevron-up" style="color: orange;"></span>
		</a>
		<br/><br/>
		<p>Copyright &copy; LIKEat Project 2017</p>
<!-- <p>Bootstrap Theme Made By <a href="https://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p> -->
	</footer>

 
 
 
 
<!-- jQuery -->
<!-- 

 	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>
	Bootstrap Core JavaScript
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
 -->
</body>