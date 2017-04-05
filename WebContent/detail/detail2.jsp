<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LikeEat Detail Page Proto</title>
<style type="text/css">
/* <div>
					<span class="glyphicon glyphicon-eye-open"></span> 
					<input type="hidden" value="뷰어">
					 :00 
					<span class="glyphicon glyphicon-pencil"></span>
					<input type="hidden" value="리뷰">
					:00 
					<span class="glyphicon glyphicon-star"></span>
					<input type="hidden" value="찜하기"> :00
					</div> */
.glyphicon-eye-open ,
.glyphicon-pencil ,.glyphicon-star
 {
	font-size: 20px;
	color:orange;
}

.glyphicon-star-empty, #starLikeat
{
	font-size: 40px;
	color:orange;
}
/*
.glyphicon-pencil
{
	font-size: 20px;
	color:orange;
}

.glyphicon-star
{
	font-size: 20px;
	color:orange;
}
 */
</style>
</head>
${storeOne}
<body>
	<div class="row fixed-menu">
		<!-- 가장 윗부분 -->
		<div class="col-sm-2">로고 가 들어 가야 할 부분 2</div>
		<div class="col-sm-6">
			<button type="button" class="btn btn-info">
				<span class="glyphicon glyphicon-search"></span> Search
			</button>
			<div class="form-group">
				<input type="email" class="form-control" width="200" id="search"
					placeholder="찾을 맛집을 입력하세요">
			</div>
			검색창이 들어가는 부분 6
		</div>
		<div class="col-sm-4">
			사용자 메뉴 들어가는 부분 4

			<div class="btn-group">
				<button type="button" class="btn btn-primary">예약</button>
				<button type="button" class="btn btn-primary">맛집리스트</button>
				<button type="button" class="btn btn-primary">맛집리스트</button>

				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle"
						data-toggle="dropdown">
						Sony <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Tablet</a></li>
						<li><a href="#">Smartphone</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	
	<div class="row">
		<!-- 중간 사진 있는 부분 -->
		<div class="col-sm-3">
			<img class="img-responsive" src="${Rdata.imgSrc1}">
		</div>
		<div class="col-sm-3">
			<img class="img-responsive" src="${Rdata.imgSrc2}">
		</div>
		<div class="col-sm-3">
			<img class="img-responsive" src="${Rdata.imgSrc3}">
		</div>
		<div class="col-sm-3">
			<img class="img-responsive" src="${Rdata.imgSrc4}">
		</div>
	</div>
	<div class="row">
		<!-- 아래 음식점 정보와  -->
		<div class="col-sm-8">
			.col-sm-4 음식점 정보들과

			<div class="row">
				<div class="col-sm-8">
					<p>${Rdata.sname}평점 4.0</p>
					<div>
						<span class="glyphicon glyphicon-eye-open"></span> <input
							type="hidden" value="뷰어"> :00 <span
							class="glyphicon glyphicon-pencil"></span> <input type="hidden"
							value="리뷰"> :00 <span class="glyphicon glyphicon-star"></span>
						<input type="hidden" value="찜하기"> :00
					</div>

				</div>
				<div class="col-sm-4">
					<span class="glyphicon glyphicon-star-empty " id="starLikeat"></span> 별
					자리

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
					<div>주소: ${Rdata.addr1}&nbsp; ${Rdata.addr2}</div>
					<div>영업시간:</div>
					<div>주소:</div>
					<div>주소:</div>
					<div>주소:</div>
					<div>주소:</div>

				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-7">~~ 식당의 리뷰 갯수(00)</div>
				<div class="col-sm-5">

					<!-- 전체 (33) 맛있다 (20) 괜찮다 (10) 별로 (2)
					 -->
					<ul class="breadcrumb">
						<li><a href="#">전체(33)</a></li>
						<li><a href="#">맛있다(20)</a></li>
						<li><a href="#">괜찮다(10)</a></li>
						<li class="active">별로(2)</li>
					</ul>

				</div>
			</div>
			<!-- 페이지 들어올때 해당되는 레스토랑의 리뷰들을 불러와서 foreach 문으로 갯수만큼 불러오기
			추후에 무한스크롤 jquery 이용해서 보완예정
			 -->
			<hr>
			<div>
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

			</div>
		</div>

		<div class="col-sm-4">
			.col-sm-4
			<div>
				지도 자리 <img class="img-responsive"
					src="TestSource/Detailtest/dummy_image/dummy_map.png">
			</div>
			<div>
				주변 맛집 정보!!
				<!-- 
				레스토랑 정보를 받아올 때 위치 값을 받아와서 반경 500m 내외로 
				맛집 정보를 출력해줌 이때도 동적으로 변함  -->
				<div class="row">
					<div class="col-sm-3">음식점 사진</div>
					<div class="col-sm-3">음식점 정보</div>
					<div class="col-sm-6"></div>

				</div>
				<div>음식점 설명!</div>

			</div>
		</div>
	</div>
	<footer>
	<div class="row">
		<!-- 아래 음식점 정보와  -->
		<div class="col-sm-12">
			bottom 부분 copyright
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Private</a></li>
				<li><a href="#">Pictures</a></li>
				<li class="active">Vacation</li>
			</ul>

		</div>

	</div>
	<div>${Rdata}</div>
	<br>
	<hr>
	<div>${storeOne}</div>
	</footer>
</body>
</html>