-- 테이블 생성
CREATE TABLE store 
   ("SID" VARCHAR2(5 BYTE) constraint store_sid_pk PRIMARY KEY, 
    "SNAME" VARCHAR2(20 BYTE) not null, 
    "SHOUR1" NUMBER(4,0), 
    "SHOUR2" NUMBER(4,0), 
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
(select concat('s', lpad((max(to_number(ltrim(substr(sid, 2),0))) + 1), 4, 0)) from store),
'일호식' , '1100', '2050', '000', '000', '서울특별시', '용산구 한남동 68-4', '한식', '02', '794', '2648', '한정식, 덮밥', '10000', 'y', 6, 2,
'https://mp-seoul-image-production-s3.mangoplate.com/184625_1425547809609',
'https://mp-seoul-image-production-s3.mangoplate.com/184625_1427600349347',
'https://mp-seoul-image-production-s3.mangoplate.com/184625_1425547809133',
'https://mp-seoul-image-production-s3.mangoplate.com/184625/218307_1457101715396_27617'
);