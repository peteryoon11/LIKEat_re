<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.entity.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Custom CSS Source -->
<link rel="stylesheet" href="css/topfix1_1.css">

<!-- 네이버 지도 api -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=9Ipf6VeypcKkUVxMSP9n"></script>

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=9Ipf6VeypcKkUVxMSP9n&submodules=geocoder"></script>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>LikeEat Detail Page Proto</title>
<style type="text/css">
.glyphicon-eye-open, .glyphicon-pencil, .glyphicon-star {
	font-size: 20px;
	color: orange;
}

.glyphicon-star-empty, #starLikeat {
	font-size: 40px;
	color: orange;
}

#topMenu {
	padding-top: 70px;
}
</style>


<script type="text/javascript">

	$(document).ready(
		function() {

			$(".glyphicon").on("click", function() {
				$(this).toggleClass("glyphicon-star-empty");
				$(this).toggleClass("glyphicon-star");

			});

		});


	var xcoor;
	var ycoor;
<%StoreDTO sDTO = (StoreDTO) request.getAttribute("storeOne");
			String addr2 = sDTO.getAddr2();
			String test = "2fdff";
			System.out.println(addr2);%>
		//	var address=${storeOne.sname};
	
	var addr2="마포구 창전동 5-78";
 	var addr3=' 222 ' ;
	console.log('<%=addr2%>');
	naver.maps.Service.geocode({ // ajax? 
//		address : '마포구 창전동 5-78'
address : '<%=addr2%>'
<%-- 	
	address : '<%= addr2 %>'
 --%>
	}, function(status, response) {
		
		if (status !== naver.maps.Service.Status.OK) 
		{
			return alert('Something wrong!');
		}
		//				$(document).trigger('load');
		var result = response.result, // 검색 결과의 컨테이너
			items = result.items; // 검색 결과의 배열
		/* 
					console.log(result);
		 */ // console.log(result.items.point);
		/*  console.log(result.total);
		console.log(result.userquery);
		console.log(result.items[0]);
		
		console.log(result.items[0].point);
		 */
		console.log(result.items[0].point.x);
		console.log(result.items[0].point.y);

		// do Something
		xcoor = result.items[0].point.x;
		ycoor = result.items[0].point.y;



		console.log("mapOptions");
		console.log(xcoor);
		console.log(ycoor);


		// 맵 만들어주는 구간 
		var mapOptions = {
			//center : new naver.maps.LatLng(37.3595704, 127.105399),
			center : new naver.maps.LatLng(ycoor, xcoor),
			//	center : new naver.maps.LatLng(xcoor, ycoor),
			//                               y           x 
			zoom : 11
		};

		var map = new naver.maps.Map('map', mapOptions),
			marker = new naver.maps.Marker({
				map : map,
				position : new naver.maps.LatLng(ycoor, xcoor)
			});
		
			//map.attaed
		var contentString = [
			'<div class="">',
	//	'${storeOne.sname}',
			'test',
		//	+address+,			
			'</div>'
			/* 
			'<div class="iw_inner">',
			'   <h1>서울특별시청</h1>',
			'   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
		//	'       <img src="' + HOME_PATH + '/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
			'       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
			'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
			'   </p>',
			'</div>' */
		].join('');
	
		var infowindow = new naver.maps.InfoWindow({
			content : contentString,
			maxWidth : 140,
			backgroundColor : "#eee",
			borderColor : "#2db400",
			borderWidth : 5,
			anchorSize : new naver.maps.Size(30, 30),
			anchorSkew : true,
			anchorColor : "#eee",
			pixelOffset : new naver.maps.Point(20, -20)
		});
	
		naver.maps.Event.addListener(marker, "click", function(e) {
			if (infowindow.getMap()) {
				infowindow.close();
			} else {
				infowindow.open(map, marker);
			}
		});
	
	});

</script>
<!-- 
네이버 지도를 위한 script  client id 는 등록후 사용해 야함 -->






</head>

<%-- ${storeOne}
 --%>
<body>
	<div class="container" id="topMenu">
		<div class="row">
			<!-- 중간 사진 있는 부분 -->
			<div class="col-sm-3">
				<img class="img-responsive" src="${storeOne.imgSrc1}">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive" src="${storeOne.imgSrc2}">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive" src="${storeOne.imgSrc3}">
			</div>
			<div class="col-sm-3">
				<img class="img-responsive" src="${storeOne.imgSrc4}">
			</div>
		</div>
	</div>

	<!--  <div class="container" > 
  
	<div class="row">
		<!-- 아래 음식점 정보와  -->
	<div class="col-sm-8">
		<div class="row">
			<div class="col-sm-8">
				<script type="text/javascript">
			$(document).ready(function (){
			
			var grade1=${storeOne.rating/storeOne.ratingCnt};
			var grade2=grade1.toFixed(1);
			document.getElementById("grade").innerHTML+=grade2;
			//document.getElementById("grade").innerHTML+="1234";
		
			});
			
			</script>
				<p id="grade">${storeOne.sname}
					평점
					<%-- ${storeOne.rating/storeOne.ratingCnt} --%>
				</p>
				<div>
					<span class="glyphicon glyphicon-eye-open"></span> <input
						type="hidden" value="뷰어"> :00 <span
						class="glyphicon glyphicon-pencil"></span> <input type="hidden"
						value="리뷰"> :00 <span class="glyphicon glyphicon-star"></span>
					<input type="hidden" value="찜하기"> :00
				</div>

			</div>
			<div class="col-sm-4">
				<span class="glyphicon glyphicon-star-empty " id="starLikeat"></span>


			</div>

		</div>
		<hr>
		<div>휴무일 여부나 식당에 대한 소개</div>

		<hr>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-4">

				<!-- 	보내주는 컬럼의 수만큼 넣어 줄 공간들 현재는 dummy 정보
				 -->
				<!-- 
				 storeOne.sname -->
				<table width="400" style="table-layout: fixed">
					<tr>
						<td>주소:</td>
						<td>${storeOne.addr1}&nbsp;${storeOne.addr2}</td>
					</tr>
					<tr>
						<td>영업시간:</td>
						<td><span>${storeOne.shour1} ~ ${storeOne.shour2}</span></td>
					</tr>
					<tr>
						<td>대표 메뉴 :</td>
						<td><span>${storeOne.menu}</span></td>
					</tr>
					<tr>
						<td>종류:</td>
						<td>${storeOne.scategory}</td>
					</tr>
					<tr>
						<td>전화번호 :</td>
						<td><span>${storeOne.sphone1}-${storeOne.sphone2}-${storeOne.sphone2}</span></td>
					</tr>
					<tr>
						<td>가격대 :</td>
						<td>${storeOne.sprice}</td>
					</tr>
					<c:if test=""></c:if>

				</table>

			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-3">식당의 리뷰 갯수(${recount})</div>

			<div class="col-sm-3">
				<input type="button" id="reviewApply"
					onclik="javascript:popupOpen();" value="리뷰 등록하기">

			</div>
			<!--  -->
			<div class="col-sm-6">

				<!-- 전체 (33) 맛있다 (20) 괜찮다 (10) 별로 (2)
					 -->
				<ul class="breadcrumb">
					<li><a href="#">전체(${recount})</a></li>

					<li><a href="#">맛있다(${countcarr.recountHigh})</a></li>

					<li><a href="#">괜찮다(${countcarr.recountMiddle})</a></li>

					<li class="active"><a href="#">
							별로(${countcarr.recountLow})</a></li>
				</ul>

			</div>
		</div>
		<!-- 페이지 들어올때 해당되는 레스토랑의 리뷰들을 불러와서 foreach 문으로 갯수만큼 불러오기
			추후에 무한스크롤 jquery 이용해서 보완예정
			 -->
		<hr>
		<div>
			<!-- 
		storelist
			request.setAttribute("storeOne", sdto);
		request.setAttribute("sreplylist", rlist);
		request.setAttribute("storelist", slist);
		
		 -->

			<c:forEach items="${sreplylist}" var="abc">
				<!-- value="Hello World" var="msg"
			 -->
				<%-- <div>${abc.sid }</div>
				 --%>

				<div class="row">
					<div class="col-sm-2">
						<div>
							<img src="detail/image/prosam.png" width="100px" height="100px">
						</div>
						<div>프로맛집러</div>
						<span class="glyphicon glyphicon-pencil"></span> <input
							type="hidden" value="리뷰"> :30
						<div></div>
					</div>
					<div class="col-sm-7">
						<div>날짜 ${abc.rwrda }</div>
						내용 <br>${abc.rcontent}
						<div class="row">
							<div>
								<img class="img-responsive col-sm-6" src="${abc.img1}">
							</div>

							<div>

								<img class="img-responsive col-sm-6" src="${abc.img2}">
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<c:if test="${abc.rappr eq '1'}">
							<img class=" col-sm-6" src="detail/image/low.png" width="100px"
								height="100px">

							<br>
						</c:if>
						<c:if test="${abc.rappr eq '3'}">
							<img class=" col-sm-6" src="detail/image/avr.png" width="100px"
								height="100px">
							<br>
						</c:if>
						<c:if test="${abc.rappr eq '5'}">
							<img class=" col-sm-6" src="detail/image/good.png" width="100px"
								height="100px">
							<br>
						</c:if>

					</div>
				</div>
				<hr>
			</c:forEach>
			<!-- 
			<div class="row">
				<div class="col-sm-2">
					<div>글쓴이 프로필 사진</div>
					<div>글쓴이의 이름</div>
					<div>글쓴이의 리뷰 갯수</div>
				</div>
				<div class="col-sm-8">
					<div>리뷰 날짜 2017-03-20</div>
					실제 리뷰 내용 아래에는 사진 추가 예정
					<div>사진 파일 들어갈 예정 갯수</div>
				</div>

				<div class="col-sm-2">평점 이미지로 나올 예정</div>
			</div>
 -->
		</div>
	</div>

	<div class="col-sm-4">
		<!-- .col-sm-4
		 -->
		<div>
			<div id="map" style="width: 100%; height: 300px;"></div>

		</div>
		<%-- 
		<c:forEach var="${sNealist}" items="nStorelist"> --%>
		<h1>주변 맛집</h1>
		<c:forEach items="${sNealist}" var="nStorelist">
			<%-- 	${nStorelist }<br>
			 --%>
			<div class="row">
				<div class="col-sm-6">
					<img src="${nStorelist.imgSrc1 }" class="img-responsive">

				</div>
				<div class="col-sm-6">
					<div>${nStorelist.sname }</div>
					<div>${nStorelist.addr2 }</div>
					<div>${nStorelist.sphone1 }- ${nStorelist.sphone2 } -
						${nStorelist.sphone1 }</div>
					<div>${nStorelist.menu }</div>
				</div>
				<!-- <div class="col-sm-3"></div>
 -->
			</div>
 <br><br>
		</c:forEach>
		<!-- 	<div>
			주변 맛집 정보!!
	 -->
		<!-- 
				레스토랑 정보를 받아올 때 위치 값을 받아와서 반경 500m 내외로 
				맛집 정보를 출력해줌 이때도 동적으로 변함  -->
		<!-- 		<div class="row">
				<div class="col-sm-3">음식점 사진</div>
				<div class="col-sm-3">음식점 정보</div>
				<div class="col-sm-6"></div>

			</div>
			<div>음식점 설명!</div>

		</div>
 -->
		<!-- 	</div> -->
	</div>
	<footer>
	<div class="row">
		<!-- 아래 음식점 정보와  -->
		<div class="col-sm-12">
			<!-- bottom 부분 copyright -->
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Private</a></li>
				<li><a href="#">Pictures</a></li>
				<li class="active">Vacation</li>
			</ul>

		</div>

	</div>

	</footer>


</body>
</html>