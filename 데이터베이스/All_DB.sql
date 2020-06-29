-- -----------------------------------------------
-- 사용자 테이블
CREATE TABLE MEMBER(	
    USER_ID VARCHAR2(20) NOT NULL  PRIMARY KEY, 
	PWD VARCHAR2(20) NOT NULL, 
	NAME NVARCHAR2(20) NOT NULL, 
	NICKNAME NVARCHAR2(20) NOT NULL, 
	TEL VARCHAR2(20), 
	EMAIL VARCHAR2(20), 
	GENDER NVARCHAR2(20) NOT NULL
);

-- 사용자 값 삽입
Insert into MEMBER (USER_ID,PWD,NAME,NICKNAME,TEL,EMAIL,GENDER) values ('gildong','qwerty','홍길동','길동이','01012345678','gil@naver.com','남');
Insert into MEMBER (USER_ID,PWD,NAME,NICKNAME,TEL,EMAIL,GENDER) values ('fntw2300','q1w2e3r4','박현호','현호','01073979899','fntw2300@naver.com','남');
Insert into MEMBER (USER_ID,PWD,NAME,NICKNAME,TEL,EMAIL,GENDER) values ('axao0518','asdfg','박민희','민희','01085094018','axao0518@gmail.com','여');
Insert into MEMBER (USER_ID,PWD,NAME,NICKNAME,TEL,EMAIL,GENDER) values ('sbm00726','zxcvb','서보민','보민','01064208639','sbm00726@gmail.com','여');
Insert into MEMBER (USER_ID,PWD,NAME,NICKNAME,TEL,EMAIL,GENDER) values ('kdh3852','wasd','김동현','동현','01043213852','kdh3852@gmail.com','남');

-- -----------------------------------------------
-- 반려동물 테이블
CREATE TABLE MYPET(	
    LIST_ID NUMBER(5) NOT NULL,
	USER_ID VARCHAR2(20) NOT NULL, 
	IMAGE CLOB, 
	NAME NVARCHAR2(20) NOT NULL, 
	BIRTH VARCHAR2(20), 
	GENDER NVARCHAR2(10), 
	ALLERGIE NVARCHAR2(10),
    PRIMARY KEY(LIST_ID , USER_ID ),
    FOREIGN KEY(USER_ID) REFERENCES MEMBER(USER_ID) ON DELETE CASCADE
);

-- 반려동물 값 삽입
Insert into MYPET  values (1,'fntw2300','https://media.apnarm.net.au/media/images/2020/03/18/v3imagesbin6e2c486115f6fe16ef1140dafd87b094-v9dtkq880ys9h4lm0u2_t1880.jpg','JAVA','2020.01.12','남','없음');
Insert into MYPET  values (2,'axao0518','https://images.wallpaperscraft.com/image/puppy_dog_cute_153523_1280x720.jpg','JSP','2019.07.15','여','없음');
Insert into MYPET  values (3,'sbm00726','https://images.wallpaperscraft.com/image/dog_fluffy_run_85967_1280x720.jpg','안드로이드','2020.06.29','남','없음');
Insert into MYPET  values (4,'kdh3852','https://images.wallpaperscraft.com/image/cat_muzzle_eyes_84045_1280x720.jpg','DATABASE','2017.07.01','여','없음');

-- -----------------------------------------------
-- 상품 테이블
CREATE TABLE PRODUCT(	
    PRODUCT_ID NUMBER(5) NOT NULL PRIMARY KEY,
	CATEGORY NVARCHAR2(10) NOT NULL, 
	NAME NVARCHAR2(50) NOT NULL, 
	CONTENT CLOB, 
	PRICE NUMBER(5), 
	BRAND NVARCHAR2(20), 
	IMAGE CLOB
);

-- 상품 값 삽입
Insert into PRODUCT  values (1,'개','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나','http://shop1.phinf.naver.net/20191001_289/1569910804545RlXPi_JPEG/7263430313647299_725255488.jpg');
Insert into PRODUCT  values (2,'개','더독 닥터소프트 식이섬유 (노령견용) 1.2kg','치아에 부담이 없는 소프트 타입',17600,'카길애그리퓨리나','http://blogfiles.naver.net/MjAyMDAxMjJfODMg/MDAxNTc5NjU2MzMyNDc2.0YL6ksdGS0b3CW-Sp0N9-QlaXRrDbPDG-myL3wWLWU0g.lRDHrqdCgEkVzmsgxSQBA91fgfO20B0a3NsKi4KLq4Eg.PNG.minkyung5297i/e7f6c011776e8db7cd330b54174fd76f7d0216b612387a.png');
Insert into PRODUCT  values (3,'개','닥터소프트 치킨 (노령견용) 1.2kg','천연 유기농 재료를 주요 원료로 사용합니다',10400,'카길애그리퓨리나','http://shop1.phinf.naver.net/20150713_50/nmp_1436757053880ngz0l_JPEG/115310224224840705_1136262051.jpg');
Insert into PRODUCT  values (4,'개','피부모질 닥터독 사료2kg','연어X연어 조합으로 댕댕이 피부모질 포텐 폭발!',29500,'닥터독','https://www.okdoctordog.com/web/product/big/201907/5318b45a1fe0230c89141d9c1ec7010a.jpg');
Insert into PRODUCT  values (5,'고양이','이즈칸 캣 그레인프리 어덜트 6.5kg','고양이의 알러지를 예방하고 높은 소화율과 기호성을 가진 식품수준의 홀리스틱 무곡물 영양식입니다.',35200,'이즈칸','http://cdnimg.catpang.com/catpang/data/goods/2/1048_web_list_M1_149503519326218.jpg');
Insert into PRODUCT  values (6,'고양이','퓨리나 팬시피스트 캔 6종 콤보 24개','모든 영양소를 갖춘 Balanced Meal로서 간식캔이 아닌 주식으로 주셔도 모든 영양소를 만족합니다.',23500,'퓨리나','http://cdnimg.catpang.com/catpang/data/view/3/C000002842_web_list_M1_1516704964709679.jpg');


-- -----------------------------------------------
-- 카트 테이블
CREATE TABLE CART(
    USER_ID VARCHAR2(20) NOT NULL, 
	PRODUCT_ID NUMBER(5) NOT NULL,
    PRIMARY KEY(USER_ID , PRODUCT_ID),
    FOREIGN KEY(USER_ID) REFERENCES MEMBER(USER_ID) ON DELETE CASCADE,
    FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID) ON DELETE SET NULL
);

-- 카트 값 삽입
Insert into CART values ('sbm00726',1);
Insert into CART values ('sbm00726',2);
Insert into CART values ('sbm00726',3);
Insert into CART values ('sbm00726',4);

-- -----------------------------------------------
-- 사진첩 테이블
CREATE TABLE PHOTO(
    GALLERY_ID NUMBER(5) NOT NULL PRIMARY KEY, 
	CATEGORY NVARCHAR2(20) NOT NULL, 
    TITLE NVARCHAR2(20) NOT NULL, 
	CONTENT CLOB, 
	IMAGE CLOB,
    REGDATE VARCHAR2(20), 
    USER_ID VARCHAR2(20),
    FOREIGN KEY(USER_ID) REFERENCES MEMBER(USER_ID) ON DELETE CASCADE
);

-- 사진첩 값 삽입
Insert into PHOTO values (1,'개','골댕이','금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다.','https://images.wallpaperscraft.com/image/golden_retriever_dog_sits_blur_120469_1280x720.jpg','2020.03.01','fntw2300');
Insert into PHOTO values (2,'개','골댕이','금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다.','https://images.wallpaperscraft.com/image/golden_retriever_dog_sits_blur_120469_1280x720.jpg','2020.03.01','fntw2300');
Insert into PHOTO values (3,'개','골댕이','금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다.','https://images.wallpaperscraft.com/image/golden_retriever_dog_sits_blur_120469_1280x720.jpg','2020.03.01','fntw2300');
Insert into PHOTO values (4,'개','골댕이','금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다.','https://images.wallpaperscraft.com/image/golden_retriever_dog_sits_blur_120469_1280x720.jpg','2020.03.01','fntw2300');
Insert into PHOTO values (5,'개','골댕이','금빛의 풍성한 털이 가장 큰 특징이며 은은하게 귀티가 흐르는 인상이다.','https://images.wallpaperscraft.com/image/golden_retriever_dog_sits_blur_120469_1280x720.jpg','2020.03.01','fntw2300');



-- -----------------------------------------------
-- 게시판 테이블
CREATE TABLE BOARD(	
    BOARD_ID NUMBER NOT NULL  PRIMARY KEY, 
	CATEGORY NVARCHAR2(100) NOT NULL, 
    TITLE VARCHAR2(50) NOT NULL,
	CONTENT CLOB NOT NULL, 
	REGDATE VARCHAR2(20), 
	USER_ID VARCHAR2(20),
    FOREIGN KEY(USER_ID) REFERENCES MEMBER(USER_ID)
);

-- 게시판 값 삽입
Insert into BOARD values (1,'고양이','고양이에 관하여','고양이다','2020.07.02','axao0518');
Insert into BOARD values (2,'개','개에 관하여','개다','2020.01.02','axao0518');

-- -----------------------------------------------
-- 품종 테이플
CREATE TABLE KIND(
    KIND_NAME NVARCHAR2(20) NOT NULL  PRIMARY KEY, 
	CATEGORY NVARCHAR2(20) NOT NULL, 
	CONTENT CLOB, 
	IMAGE CLOB, 
	YOUTUBE CLOB
);

-- 품종 값 삽입
Insert into KIND values ('사모예드','개','사모예드의 유래 사모예드를 생각하면 ‘하얀 솜뭉치’가 떠오릅니다.
게다가 이 하얀 솜뭉치는 항상 웃고 있는 듯한 표정을 짓고 있죠. 
그래서 외국에서는 사모예드를 ‘Smiling Sammy’라고도 불러요. 
우리나라에도 ‘미소천사 사모예드’라는 사모예드라는 별명이 있죠. 
사람을 너무나 좋아하는 사모예드는, 본디 사역견이었습니다. 
러시아의 사모예드족이 사냥과 썰매를 끌 때 활용하던 개가 사모예드입니다. 
20세기 초 영국의 탐험가에 의해서 ‘Antartic Buck’라는 사모예드가 처음 서구 세계에 소개되었습니다. 
사모예드를 처음 본 덴마크의 Alexandria 여왕은 사모예드의 매력에 푹 빠져서, 사모예드라는 견종을 알리는데 앞장 섰다고 합니다.','https://images.mypetlife.co.kr/wp-content/uploads/2018/02/08140957/shutterstock_292917410.jpg','https://youtu.be/XkHgmgsuv5E');
