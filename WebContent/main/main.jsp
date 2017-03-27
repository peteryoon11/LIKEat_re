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


<!-- -->


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
</style>

<script type="text/javascript">
	$(document).ready(function() {

		
	});
</script>
<body>
	<!-- TOPeat! -->
	<div class="container">

		<!-- Page Heading -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header" style="color: orange; font-style: italic; font-weight: bold;">TOPeat!</h1>
			</div>
		</div>
		<!-- /.row -->
		<!-- Projects Row -->
		
		
		
		

<section class="no-padding" id="portfolio">
	<div class="container">
    <!-- <div class="row no-gutter popup-gallery"> -->
	<div class="row popup-gallery">
		<div class="col-lg-3 col-sm-6">
			<a href="${storeList[0].imgSrc1}" class="portfolio-box">
				<div class="thumbnail-wrap">
					<div class="thumbnail">
						<div class="centered">
							<img src="${storeList[0].imgSrc1}" class="landscape">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${storeList[0].sname}
						</div>
						<div class="project-name">
 							${storeList[0].sname}
           	 			</div>
            		</div>
        		</div>
			</a>
		</div> 
		<div class="col-lg-3 col-sm-6">
			<a href="${storeList[1].imgSrc1}" class="portfolio-box">
				<div class="thumbnail-wrap">
					<div class="thumbnail">
						<div class="centered">
							<img src="${storeList[1].imgSrc1}" class="landscape">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${storeList[1].sname}
						</div>
						<div class="project-name">
 							${storeList[1].sname}
           	 			</div>
            		</div>
        		</div>
			</a>
		</div> 
		<div class="col-lg-3 col-sm-6">
			<a href="${storeList[1].imgSrc2}" class="portfolio-box">
				<div class="thumbnail-wrap">
					<div class="thumbnail">
						<div class="centered">
							<img src="${storeList[1].imgSrc2}" class="landscape">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${storeList[1].sname}
						</div>
						<div class="project-name">
 							${storeList[1].sname}
           	 			</div>
            		</div>
        		</div>
			</a>
		</div> 
		<div class="col-lg-3 col-sm-6">
			<a href="${storeList[1].imgSrc2}" class="portfolio-box">
				<div class="thumbnail-wrap">
					<div class="thumbnail">
						<div class="centered">
							<img src="${storeList[1].imgSrc2}" class="landscape">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${storeList[1].sname}
						</div>
						<div class="project-name">
 							${storeList[1].sname}
           	 			</div>
            		</div>
        		</div>
			</a>
		</div>         
	</div>
</section>

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

    <section class="no-padding" id="portfolio">
        <div class="container">
            <!-- <div class="row no-gutter popup-gallery"> -->
            <div class="row popup-gallery">






		<div class="col-lg-3 col-sm-6">
			<a href="${storeList[1].imgSrc2}" class="portfolio-box">
				<div class="thumbnail-wrapw">
					<div class="thumbnailw">
						<div class="centeredw">
							<img src="${storeList[1].imgSrc2}" class="landscapew">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${storeList[1].sname}
						</div>
						<div class="project-name">
 							${storeList[1].sname}
           	 			</div>
            		</div>
        		</div>
			</a>
		</div>         









                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive likeatList" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

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




	<c:forEach begin="1" end="3">
 
  
  
    <section class="no-padding" id="portfolio">
        <div class="container">
            <!-- <div class="row no-gutter popup-gallery"> -->
            <div class="row popup-gallery">
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[0].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[0].imgSrc1}" class="img-responsive" alt="" >
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[0].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[0].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive likeatList" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <a href="${storeList[1].imgSrc1}" class="portfolio-box">
                        <img src="${storeList[1].imgSrc1}" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-category text-faded">
                                    ${storeList[1].sname}
                                </div>
                                <div class="project-name">
                                    ${storeList[1].sname}
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
  
                <br/>
	</c:forEach>

 
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2014</p>
				</div>
			</div>
			<!-- /.row -->
		</footer>


	<!-- jQuery -->
	<script src="startbootstrap-4-col-portfolio-gh-pages/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="startbootstrap-4-col-portfolio-gh-pages/js/bootstrap.min.js"></script>
</body>