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
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	    var lastScrollTop = 0;
	    var easeEffect = 'easeInQuint';
	    var curPage = "";
	     
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
	            if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
	                 
	                // 3. 현재 뿌려진 게시글의 curPage정보를 받아와, 다음페이지 분량의 list를 받아온다
//	                var curPage = $("#curPage").val();
	                 
	                // 4. ajax를 이용하여 다음페이지의 게시물 데이터를 받아온다.
	                $.ajax({
	                    type : 'get',  // list를 요청하는 것이므로, get방식으로 보내도 될듯
	                    url : 'main/infiniteScrollList.jsp',// 요청할 서버의 url
//	                    headers : {
//	                        "Content-Type" : "application/json",
//	                        "X-HTTP-Method-Override" : "POST"
//	                    },
	                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
//	                    data : JSON.stringify({ // 서버로 보낼 데이터 명시
						data : {	
							curPage:$("#curPage").val()
	                    },
	                    success : function(responseData){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
								                    	
	                    	 var str = "";
	                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	                        if(responseData != ""){
//	                            //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
//	                            // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
	                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.
//                                $(responseData.list).each(
//                                		function() {
                                			str += "<section class='no-padding' id='portfolio'>"
                                				+ 		"<div class='container'>"
	                                			+			"<div class='row popup-gallery'>"
                                    			+				"<c:forEach items='${pageDTO.list}' var='s' varStatus='i'>"
                                    			+					"<div class='col-lg-3 col-sm-6'>"
                                    			+						"<a href='${s.imgSrc1}' class='portfolio-box'>"
                                    			+							"<img src='${s.imgSrc1}' class='img-responsive' alt='' >"
                                    			+							"<div class='portfolio-box-caption'>"
                                    			+								"<div class='portfolio-box-caption-content'>"
                                   				+									"<div class='project-category text-faded'>"
                                   				+										${s.sname}
                                    			+									"</div>"
                                    			+									"<div class='project-name'>"
                                    			+										${s.sid}
                                    			+										"<input type='hidden' id='curPage' name='curPage'  value='${pageDTO.curPage}'>"
                                    			+									"</div>"
                                    			+								"</div>"
                                    			+							"</div>"
                                    			+						"</a>"
                                    			+					"</div>"
                                    			+				"</c:forEach>"
                                    			+			"</div>"
                                    			+		"</div>"
                                    			+	"</section>"
//                                		}
	                            $("#neweatList").after(str);
	                            
	                            
                                curPage = responseData;
	                            
	                        }// if : data!=null
	                        else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..
	                            alert("더 불러올 데이터가 없습니다.");
	                        }// else
	                    }// success
	                });// ajax
	                 
	                // 여기서 class가 listToChange인 것중 가장 처음인 것을 찾아서 그 위치로 이동하자.
	                var position = $(".neweatListClass:eq(" + (curPage - 1) + ")").offset();// 위치 값
	                 
	                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
	                $('html,body').stop().animate({scrollTop : position.top }, 600, easeEffect);
	     

	                }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	             
	            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
	            lastScrollTop = currentScrollTop;
	        }// 다운스크롤인 상태
	         
	        /* 
	            =================   업 스크롤인 상태   ================
	        */
/*	        else{
	            // up- scroll : 현재 게시글 이전의 글을 불러온다.
	            console.log("up-scroll");          
	 
	            // 2. 현재 스크롤의 top 좌표가  <= 0 되는 순간
	            if ($(window).scrollTop() <= 0 ){ //
	                 
	                // 3. class가 scrolling인 것의 요소 중 첫 번째 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
	                //      즉, 현재 뿌려진 게시글의 첫 번째 bno값을 읽어오는 것이다.( 이 전의 게시글들을 가져오기 위해 필요한 데이터이다.)
	                var firstbno = $(".scrolling:first").attr("data-bno");
	                 
	                // 4. ajax를 이용하여 현재 뿌려진 게시글의 첫 번째 bno를 서버로 보내어 그 이전의 20개의 게시물 데이터를 받아온다.
	                $.ajax({
	                    type : 'post',  // 요청 method 방식
	                    url : 'infiniteScrollUp',// 요청할 서버의 url
	                    headers : {
	                        "Content-Type" : "application/json",
	                        "X-HTTP-Method-Override" : "POST"
	                    },
	                    dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
	                    data : JSON.stringify({ // 서버로 보낼 데이터 명시
	                        bno : firstbno
	                    }),
	                    success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	                         
	                        var str = "";
	                         
	                        // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	                        // 이때 서버에서 값이 없으면 null을 던질줄 알았는데 ""를 던진다. 따라서 (data != null) 이라는 체크를 해주면 안되고, (data != "") 만 해주어야한다.
	                        // 이건아마 컨트롤러의 리턴타입이 @ResponseBody로 json형태로 던져지는데 이때 아마 아무것도 없는게 ""로 명시되어 날아오는것 같다.
	                        if(data != ""){
	                             
	                            //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
	                            $(data).each(
	                                // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
	                                function(){
	                                    console.log(this);     
	                                    str +=  "<tr class=" + "'listToChange'" + ">"
	                                        +       "<td class=" +  "'scrolling'" + " data-bno='" + this.bno +"'>"
	                                        +           this.bno
	                                        +       "</td>"
	                                        +       "<td>" + this.title + "</td>"      
	                                        +       "<td>" + this.writer + "</td>"
	                                        +       "<td>" + this.regdate + "</td>"
	                                        +       "<td>" + this.viewcnt + "</td>"
	                                        +   "</tr>";
	                                         
	                            });// each
	                            // 8. 이전까지 뿌려졌던 데이터를 비워주고, <th>헤더 바로 밑에 위에서 만든 str을  뿌려준다.
	                            $(".listToChange").empty();// 셀렉터 태그 안의 모든 텍스트를 지운다.                       
	                            $(".scrollLocation").after(str);
	                                 
	                        }//if : data != ""
	                        else{ // 9. 만약 서버로 부터 받아온 데이터가 없으면 그냥 아무것도 하지말까..??
	                             
	                            alert("더 불러올 데이터가 없습니다.");
	                        }// else
	     
	                    }// success
	                });// ajax
	                 
	                // 스크롤 다운이벤트 때  ajax통신이 발생하지 않을때 까지의 좌표까지 스크롤을 내려가주기.
	                var position =($(document).height() - $(window).height()) -10;
	                 
	                // 이동  위로 부터 position.top px 위치로 스크롤 하는 것이다. 그걸 500ms 동안 애니메이션이 이루어짐.
	                $('html,body').stop().animate({scrollTop : position}, 600, easeEffect);
	                 
	            }//if : 현재 스크롤의 top 좌표가  <= 0 되는 순간
	         
	            // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
	            lastScrollTop = currentScrollTop;
	        }// else : 업 스크롤인 상태
*/	         
	});// scroll event
	 
		
		
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
			<a href="${pageDTO.list[0].imgSrc1}" class="portfolio-box">
				<div class="thumbnail-wrap">
					<div class="thumbnail">
						<div class="centered">
							<img src="${pageDTO.list[0].imgSrc1}" class="landscape">
						</div>
					</div>
				</div>
				<div class="portfolio-box-caption">
					<div class="portfolio-box-caption-content">
						<div class="project-category text-faded">
							${pageDTO.list[0].sname}
						</div>
						<div class="project-name">
 							${pageDTO.list[0].sid}
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
    <section class="no-padding neweatListClass" id="portfolio neweatList">
        <div class="container">
            <div class="row popup-gallery">
				<c:forEach items="${pageDTO.list}" var="s" varStatus="i">
					<div class="col-lg-3 col-sm-6">
					    <a href="${s.imgSrc1}" class="portfolio-box">
					        <img src="${s.imgSrc1}" class="img-responsive" alt="" >
					        <div class="portfolio-box-caption">
					            <div class="portfolio-box-caption-content">
					                <div class="project-category text-faded">
					                    ${s.sname}
					                </div>
					                <div class="project-name">
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
  
    <br/>

 
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