<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>간단한 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=9Ipf6VeypcKkUVxMSP9n"></script>

<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=9Ipf6VeypcKkUVxMSP9n&submodules=geocoder"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta name="twitter:url" content="https://navermaps.github.io/maps.js">

</head>

<body>
	<div id="map" style="width: 100%; height: 400px;"></div>

	<script>
	//	$(document).ready(
	//			function() {
	
		var xcoor;
		var ycoor;
	
		naver.maps.Service.geocode({ // ajax? 
			address : '마포구 창전동 5-78'
		}, function(status, response) {
			if (status !== naver.maps.Service.Status.OK) {
				return alert('Something wrong!');
			}
			$(document).trigger('load');
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
	
			var mapOptions = {
				//center : new naver.maps.LatLng(37.3595704, 127.105399),
				center : new naver.maps.LatLng(ycoor, xcoor),
				//	center : new naver.maps.LatLng(xcoor, ycoor),
				//                               y           x 
				zoom : 10
			};
	
			var map = new naver.maps.Map('map', mapOptions),
				marker = new naver.maps.Marker({
					map : map,
					position : new naver.maps.LatLng(ycoor, xcoor)
				});
	
	
		});
	
	
		console.log("111");
		/* 
		var HOME_PATH = window.HOME_PATH || '.';
		var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147),
		    map = new naver.maps.Map('map', {
		        center: cityhall,
		        zoom: 10
		    }),
		    marker = new naver.maps.Marker({
		        map: map,
		        position: cityhall
		    });
	*/
		var contentString = [
			'<div class="iw_inner">',
			'   <h3>서울특별시청</h3>',
			'   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
			'       <img src="' + HOME_PATH + '/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
			'       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
			'       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
			'   </p>',
			'</div>'
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
	
	
	
	
		//	$(document).ready(function(){
		//	});	
		//});
	</script>
</body>
</html>