-- 테이블 생성
CREATE TABLE store
 ("SID" VARCHAR2(5 BYTE) constraint store_sid_pk PRIMARY KEY,
  "SNAME" VARCHAR2(20 BYTE) not null,
  "SHOUR1" varchar2(5),
  "SHOUR2" varchar2(5),
  "POST1" VARCHAR2(3 BYTE) not null,
  "POST2" VARCHAR2(3 BYTE) not null,
  "ADDR1" VARCHAR2(500 BYTE) not null,
  "ADDR2" VARCHAR2(500 BYTE) not null,
  "SCATEGORY" VARCHAR2(10 BYTE) not null,
  "SPHONE1" VARCHAR2(3 BYTE),
  "SPHONE2" VARCHAR2(4 BYTE),
  "SPHONE3" VARCHAR2(4 BYTE),
  "MENU" VARCHAR2(500 BYTE) not null,
  "SPRICE" NUMBER(6,0) not null,
  "PARKING" CHAR(1 BYTE),
  "RATING" NUMBER(4,0),
  "RATINGCNT" NUMBER(4,0),
  "IMGSRC1" VARCHAR2(500 BYTE) not null,
  "IMGSRC2" VARCHAR2(500 BYTE),
  "IMGSRC3" VARCHAR2(500 BYTE),
  "IMGSRC4" VARCHAR2(500 BYTE),
"createAt" date default sysdate
 )

-- 데이터 삽입
   
   
Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
's0001',
'호무랑' , '1130', '2200', '000', '000', '서울특별시', '강남구 청담동 4-1', '일식', '02', '6947', '1279', '소바, 우니, 우동', '30000', 'y', 0, 0, 
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/46474_145512052254721.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/2989/136334_1490074030393_4535',
'https://mp-seoul-image-production-s3.mangoplate.com/2989/136334_1490074030393_4536',
'https://mp-seoul-image-production-s3.mangoplate.com/2989/136334_1490074030393_4541'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'쿠촐로오스테리아' , '1800', '2400', '000', '000', '서울특별시', '용산구 용산동2가 45-13', '양식', '02', '6083', '0102', '이탈리아, 리조또, 파스타', '25000', 'n', 48, 10,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/378744_1447349230670.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/722502_1489922756092733.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/549710_1488810198924467.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/194068/651689_1484663376169_651689_1484109733536_651689_1482672895607_6817'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'다운타우너' , '1130', '2130', '000', '000', '서울특별시', '용산구 한남동 683-63', '양식', '02', '8820', '3696', '수제버거, 브런치, 샌드위치', '10000', 'y', 55, 14,
'https://mp-seoul-image-production-s3.mangoplate.com/257803/pupo0dpmgbzg5d.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/576813_1489762005104987.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/123432_1484868405351961.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/257803/645328_1483451188699_645328_1483451144863_645328_1483450926129_67089'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'보니스피자펍' , '1400', '2200', '000', '000', '서울특별시', '용산구 용산동2가 44-19', '양식', '02', '792', '0303', '피자, 맥주', '15000', 'n', 42, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/10679/452919_1458211337097_35082',
'https://mp-seoul-image-production-s3.mangoplate.com/10679/442306_1490199179101_73516',
'https://mp-seoul-image-production-s3.mangoplate.com/10679/442306_1490199179101_73512',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/584169_1488208929300108.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'쟈니덤플링' , '1130', '2130', '000', '000', '서울특별시', '용산구 이태원동 131-40', '중식', '02', '797', '8830', '딤섬, 만두', '10000', 'n', 43, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/184_1453798180191.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/supporters_admin/ki4vkwczrxqh4y.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/619788_1475067345931071.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/443968_1471270100031911.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'레호이' , '1200', '2200', '000', '000', '서울특별시', '용산구 이태원동 261-9', '양식', '02', '4242', '0426', '베트남, 쌀국수', '15000', 'y', 29, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/188186_1425544322858',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/132097_1489397038118834.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/313917_1488110090813280.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/188186/614677_1486280875531_18059'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'어메이징타이' , '1130', '2200', '000', '000', '서울특별시', '용산구 한남동 683-134', '양식', '02', '796', '7377', '태국, 커리, 카레, 팟타이', '15000', 'y', 36, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/14655/2525_1490274478668_17738',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33200_1489290278294255.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33200_1489290279381767.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/26786_1488638397643542.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'노리테이블' , '1200', '2300', '000', '000', '서울특별시', '용산구 이태원동 455-47', '일식', '02', '792', '4427', '스시, 초밥, 캘리포니아롤', '15000', 'y', 42, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/179982_1481455413024399.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/supporters_admin/eeacljp1jaqq1z.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/supporters_admin/i5-rox4ekokkxe.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/619788_1491233873655659.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'라페름' , '1130', '2400', '000', '000', '서울특별시', '용산구 한남동 683-8', '양식', '02', '790', '6685', '브런치, 버거, 샌드위치', '15000', 'y', 27, 8,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/4852_1448279357360.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33537_1490975588315383.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33537_1490975590221289.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33200_1489100938584560.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'파르크' , '1130', '2200', '000', '000', '서울특별시', '용산구 한남동 743-1', '한식', '02', '792', '2022', '한정식, 백반, 집밥', '15000', 'y', 22, 8,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/4852_1477309831072317.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/66561_1471157675929854.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/497624_1470497620704234.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/12953_1427814604278'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'매덕스피자' , '1200', '2000', '000', '000', '서울특별시', '용산구 청파동3가 26-14', '일식', '02', '6213', '9689', '일본가정식, 돈카츠', '10000', 'n', 31, 8,
'https://mp-seoul-image-production-s3.mangoplate.com/190245_1436625128948.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/25442_1482575795375290.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/190245/368837_1481984795830_368837_1481984370383_38066',
'https://mp-seoul-image-production-s3.mangoplate.com/190245/617816_1478409111528_69506'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'로지노키친' , '1200', '2200', '000', '000', '서울특별시', '용산구 이태원동 129-9', '양식', '02', '792', '2420', '이탈리아, 피자', '15000', 'n', 31, 8,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/431607_1467444478333459.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/596203_1472130874701763.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/42056_1457521458274123.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/38642/fnaozqyg4v1tm7.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'마렘마' , '1200', '2300', '000', '000', '서울특별시', '용산구 한남동 739-17', '양식', '02', '790', '5633', '이탈리아, 뇨끼, 파스타', '15000', 'y', 41, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/52544_1457053863777740.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/24665_1489331990067287.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/533227_1489296061420691.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/225277/662658_1489222342408_3356'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'코레아노스키친' , '1200', '2300', '000', '000', '서울특별시', '용산구 이태원동 457-3', '양식', '02', '795', '4427', '남미, 멕시칸, 브리또, 타코', '15000', 'y', 41, 11,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/24665_1489759280951918.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/187061/619980_1489359715509_42428',
'https://mp-seoul-image-production-s3.mangoplate.com/187061/653683_1488703674744_35182',
'https://mp-seoul-image-production-s3.mangoplate.com/187061/468284_1485094342698_468284_1485088504882_6568'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'스시쵸우' , '1200', '2200', '000', '000', '서울특별시', '용산구 한남동 729-18', '일식', '02', '749', '0235', '스시, 오마카세', '45000', 'n', 31, 7,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/438944_1465132964964856.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65043_1459111153811918.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65043_1459111153812300.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65043_1459111153812866.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'문오리' , '1200', '2100', '000', '000', '서울특별시', '용산구 이태원동 255-39', '한식', '070', '8153', '5252', '오리전골, 오리고기, 문어', '45000', 'n', 33, 7,
'https://mp-seoul-image-production-s3.mangoplate.com/14546_1438313763392',
'https://mp-seoul-image-production-s3.mangoplate.com/14546/98175_1477706566811_13780',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/533668_1467554728438862.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/533668_1467554728439242.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'매니멀스모크하우스' , '1200', '2230', '000', '000', '서울특별시', '용산구 이태원동 455-33', '양식', '02', '790', '6788', '스테이크, 바베큐, 맥앤치즈', '35000', 'n', 34, 7,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/601838_1490581944603789.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/722536_1490507184711699.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/638706_1490447814994503.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/638706_1490447814297992.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'테이스팅룸' , '1130', '2300', '000', '000', '서울특별시', '용산구 한남동 744-29', '양식', '02', '790', '8202', '이탈리아, 잠발라야, 피자', '25000', 'y', 21, 7,
'https://mp-seoul-image-production-s3.mangoplate.com/12352/569295_1466426586514_35630',
'https://mp-seoul-image-production-s3.mangoplate.com/12352/569295_1466426586514_35631',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/437019_1465717590699443.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/12352_1440318295476'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'바다식당' , '1130', '2200', '000', '000', '서울특별시', '용산구 한남동 743-7', '한식', '02', '790', '8202', '탕, 찌개, 전골', '15000', 'y', 23, 7,
'https://mp-seoul-image-production-s3.mangoplate.com/12352/569295_1466426586514_35630',
'https://mp-seoul-image-production-s3.mangoplate.com/12352/569295_1466426586514_35631',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/437019_1465717590699443.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/12352_1440318295476'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'구 스테이크 733' , '1200', '2230', '000', '000', '서울특별시', '용산구 한남동 733-70', '양식', '02', '790', '8202', '스테이크, 바베큐, 드라이에이징', '45000', 'y', 29, 6,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/460278_1465005096433627.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/48000_1458728246263.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/48000_1458728244108.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/46474_145509899023203.jpg'
);

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'쪽갈비제작소' , '1700', '2300', '000', '000', '서울특별시', '용산구 이태원동 118-16', '한식', '02', '790', '8202', '쪽갈비, 주먹밥', '15000', 'n', 22, 5,
'https://mp-seoul-image-production-s3.mangoplate.com/217311/553783_1485171980586_90966',
'https://mp-seoul-image-production-s3.mangoplate.com/217311/231718_1475192143969_21931',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/435_1473350394803316.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/484247_1470215762977269.jpg'
);


-- LIKeat 강남구 dummy data 20개 홍우랑 제외 카테고리는 한일중양분 

  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'꼼다비뛰드' , '1100', '1800', '000', '000', '서울특별시', '강남구 논현동 257', '양식', '010', '9413', '6343', '마들렌, 샌드위치', '10000', 'n', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/463709_1475415494823884.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/36223_1488859879758469.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/36223_1488859893961994.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/317603_1490932993883704.jpg');



  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'버블앤코클스' , '1800', '2300', '000', '000', '서울특별시', '강남구 신사동 643-18', '양식', '070', '7776', '8877', '샌드위치,맥주,시푸드', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/242283_1458888193697344.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1489844067276953.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1489844070940035.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1489844075077648.jpg');


-- 3 
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'저스트스테이크' , '1200', '2200', '000', '000', '서울특별시', '강남구 신사동 657-3', '양식', '02', '544', '9357', '스테이크,안심스테이크', '35000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/242/reviews/02963987f779.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/242/593273_1489856045247_40281',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/698370_1488112105523421.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/698370_1488112105732161.jpg');


-- 4
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'피쉬스토리' , '1100', '2359', '000', '000', '서울특별시', '강남구 신사동 661-18', '양식', '02', '544', '9357', '회,스시', '15000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/242/reviews/02963987f779.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/242/593273_1489856045247_40281',
'https://mp-seoul-image-production-s3.mangoplate.com/49377/218307_1483187720695_130352',
'https://mp-seoul-image-production-s3.mangoplate.com/49377/90579_1474713606863_459110');



-- 5
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'파이어벨' , '1130', '2130', '000', '000', '서울특별시', '강남구 대치동 908-17', '양식', '02', '6489', '0041', '브런치,버거,샌드위치', '15000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/185862_1420466358270',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33537_1491266288898127.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/33537_1491266296047148.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/457166_1490410610050204.jpg');


-- 6
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'뚜또베네' , '1200', '2300', '000', '000', '서울특별시', '강남구 청담동 118-9', '양식', '02', '546', '1489', '라자냐,리조또', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/1008_1424850505999',
'https://mp-seoul-image-production-s3.mangoplate.com/1008_1424850522644',
'https://mp-seoul-image-production-s3.mangoplate.com/1008_1424850524024',
'https://mp-seoul-image-production-s3.mangoplate.com/1008_1424850524343');


-- 7
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'뽕나무쟁이' , '1200', '0200', '000', '000', '서울특별시', '강남구 대치동 896-5', '한식', '02', '558', '9279', '족발', '15000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/3000_1443145350860',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/558706_1490803768267546.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/558706_1490803769594774.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/643594_1490799928236584.jpg');

-- 8
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'미드가르드' , '1130', '2230', '000', '000', '서울특별시', '강남구 신사동 561-11', '양식', '02', '516', '9400', '파스타', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/14509/garosugil_13.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/14509/reviews/b3a4ef3bfda9.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/14509/reviews/c7578fa3c533.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/14509/reviews/b3a4ef3bfda9.jpg');


-- 9
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'농민백암왕순대' , '1100', '2200', '000', '000', '서울특별시', '강남구 대치동 896-33', '한식', '02', '555', '9603', '순대,해장국', '10000', 'n', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1450300886725.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/605/593273_1490409035021_41998',
'https://mp-seoul-image-production-s3.mangoplate.com/605/593273_1490409035023_42001',
'https://mp-seoul-image-production-s3.mangoplate.com/605/116586_1490104442282_116586_1490102871181_116586_1490102793217_34594');


-- 10
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'대가방' , '1130', '2130', '000', '000', '서울특별시', '강남구 논현동 99-7', '중식', '02', '544', '6336', '탕수육,짜장면', '15000', 'n', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/2787/pnvpzriexgqzy2.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/746777_1491362980312023.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/73816_1490887978812877.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/726175_1489804765147701.jpg');


-- 11
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'쮸즈' , '1700', '2100', '000', '000', '서울특별시', '강남구 신사동 540-15', '중식', '02', '6081', '9888', '딤섬,만두', '15000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/335908_1460216479729333.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/723118_1490844346636578.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/723118_1490844353339647.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/723118_1490844358462072.jpg');



-- 12
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'욘트빌' , '1200', '2230', '000', '000', '서울특별시', '강남구 청담동 83-6', '양식', '02', '541', '1550', '비스트로,푸아그라', '45000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/747755_1490231233322624.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/747755_1490231235917300.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/747755_1490231237192802.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/747755_1490231238581196.jpg');


-- 13
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'톡톡' , '1200', '2200', '000', '000', '서울특별시', '강남구 신사동 656-6', '양식', '02', '542', '3030', '비스트로', '45000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/71016_1457954947940500.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/71016_1457954947942168.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/71016_1457955308640994.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/71016_1457954947941942.jpg');


-- 14
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'지아니스나폴리' , '1130', '2230', '000', '000', '서울특별시', '강남구 신사동 541-6', '양식', '02', '3416', '0316', '파스타,리조또', '15000', 'n', 9, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/242283_1464954273518671.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/12931/442306_1490652427058_78399',
'https://mp-seoul-image-production-s3.mangoplate.com/12931/442306_1490652427059_78398',
'https://mp-seoul-image-production-s3.mangoplate.com/12931/442306_1490652427059_78397');

-- 15
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'스시선수' , '1200', '2200', '000', '000', '서울특별시', '강남구 신사동 651-16', '일식', '02', '514', '0812', '스시,사시미', '45000', 'n', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/1148/reviews/6e8083ba3207.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/571641_1490715841301871.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/1148/652152_1488697783217_6176',
'https://mp-seoul-image-production-s3.mangoplate.com/1148/652152_1488697783217_6175');

-- 16
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'우동명가기리야마' , '1130', '2230', '000', '000', '서울특별시', '강남구 역삼동 824-11', '일식', '02', '567', '0068', '라멘,소바,우동', '15000', 'n', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/52544_1456114936513101.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/50880/703083_1490273501367_6344',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/669862_1487860158251083.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/50880/714389_1486007879717_67033');

-- 17
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'리김밥' , '0800', '2130', '000', '000', '서울특별시', '강남구 신사동 610', '분식', '02', '548', '5552', '김밥,라면', '10000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/14896/31168_1421491951901',
'https://mp-seoul-image-production-s3.mangoplate.com/14896/12258_1490126908910_21810',
'https://mp-seoul-image-production-s3.mangoplate.com/14896/645104_1488468838908_47716',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/28561_1484860182441509.jpg');

-- 18
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'리북집' , '1500', '0530', '000', '000', '서울특별시', '강남구 논현동 163-4', '한식', '02', '540', '8589', '족발,막걸리', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/10214/328060_14422994543756409',
'https://mp-seoul-image-production-s3.mangoplate.com/10214/751601_1490752534455_191090',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/596640_1490119188851876.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/596640_1490119189348600.jpg');

-- 19
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'테라13' , '1100', '2300', '000', '000', '서울특별시', '강남구 청담동 50-8', '양식', '02', '546', '6809', '파스타,리조또', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/260292/643209_1481373862727_26033',
'https://mp-seoul-image-production-s3.mangoplate.com/260292/643209_1490102742922_28920',
'https://mp-seoul-image-production-s3.mangoplate.com/260292/643209_1490081898196_28866',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/736862_1489515422335280.jpg');


-- 20
  Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'멜팅샵' , '1100', '2300', '000', '000', '서울특별시', '강남구 신사동 647-19', '양식', '02', '544', '4256', '파스타,리조또', '25000', 'y', 10, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/187749_1439612221657',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/689406_1490796281853494.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/689406_1490796282831106.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/689406_1490796283749525.jpg');

Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'뉴질랜드스토리' , '1030', '2200', '000', '000', '서울특별시', '송파구 송파동 32-1', '양식', '070', '7523', '6265', '브런치, 수제버거', '10000', 'y', 9, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/56239_1418057037931',
'https://mp-seoul-image-production-s3.mangoplate.com/56239/453255_1491294202948_40913',
'https://mp-seoul-image-production-s3.mangoplate.com/56239/453255_1491294202948_40912',
'https://mp-seoul-image-production-s3.mangoplate.com/56239/453255_1491294202948_40911'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'파오파오' , '1130', '2130', '000', '000', '서울특별시', '송파구 잠실동 205-16', '분식', '02', '412', '9198', '새우만두, 만두', '10000', 'n', 10, 4,
'https://mp-seoul-image-production-s3.mangoplate.com/1679/437106_1447809067335_68819',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/75173_1489929093359706.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/75173_1489929099381738.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/75173_1489929101462792.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'바베네' , '1130', '2300', '000', '000', '서울특별시', '송파구 송파동 23-3', '양식', '02', '6397', '0997', '이탈리안, 양갈비', '20000', 'y', 10, 4,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/4852_1465566806135731.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/539129_1489317113229014.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/539129_1489317115202541.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/539129_1489317116573821.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'르빵' , '0900', '2230', '000', '000', '서울특별시', '송파구 신천동 29', '양식', '02', '3231', '4180', '베이커리, 밤식빵', '10000', 'y', 9, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/377896_1458992250611559.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/54992_1490892721766944.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/54992_1490892722354102.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/187717/79866_1488704602831_79866_1488704533057_177436'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'콩당콩당' , '1230', '1530', '000', '000', '서울특별시', '송파구 잠실동 85', '양식', '02', '2203', '1214', '카페, 디저트', '10000', 'y', 18, 6,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/27907_1484547489055297.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/750886_1490876001513511.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/279305/113339_1490855026915_1112',
'https://mp-seoul-image-production-s3.mangoplate.com/279305/113339_1490855026915_1110'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'몽중헌' , '1130', '2200', '000', '000', '서울특별시', '송파구 방이동 44-5', '분식', '02', '2202', '8004', '딤섬, 만두', '10000', 'y', 21, 5,
'https://mp-seoul-image-production-s3.mangoplate.com/12724/38146_143533218560150284',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1491216052141318.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1491216054027654.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/361632_1491216055256459.jpg'
);




Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'파티세리김영모' , '1030', '2000', '000', '000', '서울특별시', '송파구 신천동 29', '양식', '02', '3213', '2543', '베이커리, 바게트', '10000', 'y', 9, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/187726/136334_1454803594284_41980',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/689406_1489501637810437.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/689406_1489501643176356.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/567494_1485230510399461.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'만푸쿠' , '1200', '2030', '000', '000', '서울특별시', '송파구 송파동 52-1', '일식', '02', '424', '4702', '돈부리, 벤또', '10000', 'y', 20, 4,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/486848_145554260238199.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/262896_1491229631837265.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/185277/684696_1490358278964_9798',
'https://mp-seoul-image-production-s3.mangoplate.com/185277/684696_1490358278965_9805'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'멘야하나비' , '1130', '2100', '000', '000', '서울특별시', '송파구 송파동 57', '일식', '070', '8959', '1108', '라멘, 소바', '10000', 'y', 18, 6,
'https://mp-seoul-image-production-s3.mangoplate.com/227551/653276_1490709261893_18882',
'https://mp-seoul-image-production-s3.mangoplate.com/227551/653276_1490709261892_18885',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/553767_1490495029958714.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/553767_1490495032177074.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'제주오겹살왕돌구이집' , '1200', '0030', '000', '000', '서울특별시', '송파구 방이동 69-10', '한식', '02', '423', '0333', '오겹살, 제주', '20000', 'y', 6, 2,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/394407_1452782739297.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/705152_1490578416120767.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/705152_1490578417446772.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/705152_1490578418418721.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'파티세리도효' , '1030', '2200', '000', '000', '서울특별시', '송파구 송파동 51-11', '양식', '02', '7523', '6265', '카페, 디저트', '10000', 'y', 50, 16,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/553767_1490536138340271.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/282462/457236_1490444085257_21157',
'https://mp-seoul-image-production-s3.mangoplate.com/282462/457236_1490444085257_21155',
'https://mp-seoul-image-production-s3.mangoplate.com/282462/457236_1490444085257_21158'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'엘리스리틀이태리' , '1130', '2200', '000', '000', '서울특별시', '송파구 송파동 8', '양식', '02', '422', '1210', '이탈리안, 연어', '10000', 'y', 20, 5,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/277947_1460717124430735.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/502008_1491147641438457.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/502008_1491147644964270.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/254511/660879_1488377170889_111817'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'맛찬들' , '1200', '0300', '000', '000', '서울특별시', '송파구 잠실동 192-10', '한식', '02', '3432', '6692', '고기, 삼겹살', '10000', 'n', 27, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/341739_1453277674040.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/567494_1486601225714567.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/567494_1486601232747534.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/332941_1478590485755583.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'오향가' , '1130', '2200', '000', '000', '서울특별시', '송파구 가락동 73-3', '중식', '02', '401', '6999', '족발, 짬뽕', '20000', 'y', 12, 8,
'https://mp-seoul-image-production-s3.mangoplate.com/187661/42460_144414749944029449',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/655313_1488225644315816.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/655313_1488225645573620.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/539129_1487805140464324.jpg'
);



Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'미미네' , '1030', '2300', '000', '000', '서울특별시', '송파구 신천동 29', '분식', '02', '3213', '4639', '국물떡볶이, 새우튀김', '10000', 'y', 9, 3,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/238971_1452966404104.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/187689/13158_1483530837271_58225',
'https://mp-seoul-image-production-s3.mangoplate.com/187689/13158_1483530837271_58223',
'https://mp-seoul-image-production-s3.mangoplate.com/187689/13158_1483530837271_58227'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'쌜모네키친' , '1130', '2200', '000', '000', '서울특별시', '송파구 문정동 150-32', '일식', '02', '409', '3923', '연어, 화이트소스파스타', '30000', 'y', 20, 6,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/535668_1462090150397979.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/498553_1490625771908220.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/498553_1490625774211925.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/498553_1490625776417688.jpg'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'도쿄등심' , '1100', '2200', '000', '000', '서울특별시', '송파구 신천동 7-18', '일식', '02', '2146', '2266', '등심, 연어', '30000', 'y', 45, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/328908_1456662468108097.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurant/272147_143798062255014240',
'https://mp-seoul-image-production-s3.mangoplate.com/216244/607429_1490746205493_3677',
'https://mp-seoul-image-production-s3.mangoplate.com/216244/607429_1490746205493_3676'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'큐스시' , '1800', '0200', '000', '000', '서울특별시', '송파구 오금동 11', '일식', '02', '430', '6681', '이자카야, 오뎅', '10000', 'y', 12, 4,
'https://mp-seoul-image-production-s3.mangoplate.com/56342_1430150400772',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/290723_1477063604224952.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/290723_1477063604225131.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/290723_1477063604225202.jpg'
);



Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'타르타르' , '1100', '2200', '000', '000', '서울특별시', '송파구 방이동 168-13', '양식', '02', '1800', '1261', '카페, 디저트', '10000', 'y', 24, 5,
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/594134_1478423568926773.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/340957_1489485959179389.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/267947/622099_1488821889828_34365',
'https://mp-seoul-image-production-s3.mangoplate.com/267947/622099_1488821889828_34362'
);


Insert into store
(sid,sname,shour1,shour2,post1, post2, addr1, addr2, scategory, sphone1, sphone2, sphone3, menu, sprice, parking, rating, ratingCnt, imgSrc1, imgSrc2, imgSrc3, imgSrc4)
values (
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'호수베이커리' , '1030', '2400', '000', '000', '서울특별시', '송파구 잠실동 47', '양식', '02', '2202', '7545', '베이커리, 브런치', '10000', 'y', 27, 9,
'https://mp-seoul-image-production-s3.mangoplate.com/56336_1431003980980',
'https://mp-seoul-image-production-s3.mangoplate.com/56336/463608_1488092135339_5118',
'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/197084_1468974618883116.jpg',
'https://mp-seoul-image-production-s3.mangoplate.com/56336/71451_1461987005100_185308'
);

CREATE TABLE "SREPLY" 
   (	"SID" VARCHAR2(5 BYTE) not null, 
	"RID" VARCHAR2(7 BYTE) not null, 
	"RCONTENT" VARCHAR2(2000 BYTE) not null, 
	"RAPPR" VARCHAR2(2 BYTE) not null, 
	"RWRDA" VARCHAR2(200 BYTE) DEFAULT SYSDATE 
   -- more? 
	
   );


Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0016','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0015','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0015','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0015','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0015','23','ddddddd','3','17/04/03');
Insert into LIKEAT.SREPLY (SID,RID,RCONTENT,RAPPR,RWRDA) values ('s0015','23','ddddddd','3','17/04/03');
