--------------------------------------------------------
--  파일이 생성됨 - 일요일-6월-28-2020   
--------------------------------------------------------
DROP TABLE "JSP"."PRODUCT" cascade constraints;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "JSP"."PRODUCT" 
   (	"ID" NUMBER(10,0), 
	"CATEGORY" NVARCHAR2(20), 
	"NAME" NVARCHAR2(100), 
	"CONTENT" NVARCHAR2(100), 
	"PRICE" NUMBER(10,0), 
	"BRAND" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "JSP_TABLESPACE" ;
REM INSERTING into JSP.PRODUCT
SET DEFINE OFF;
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (1,'사료','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (4,'사료','더독 닥터소프트 IGY 전견용1.2kg(구강케어)','부드럽고 촉촉한 소프트사료',9900,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (5,'사료','더독 닥터소프트 전견용1.2kg(피부,피모,알러지전용)','오메가 3, 6 지방산을 풍부하게 함유',9900,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (2,'사료','더독 닥터소프트 식이섬유 (노령견용) 1.2kg','치아에 부담이 없는 소프트 타입',17600,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (3,'사료','닥터소프트 치킨 (노령견용) 1.2kg','천연 유기농 재료를 주요 원료로 사용합니다',10400,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (11,'사료','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (21,'사료','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (31,'사료','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나');
Insert into JSP.PRODUCT (ID,CATEGORY,NAME,CONTENT,PRICE,BRAND) values (41,'사료','ANF 유기농 6Free 플러스 양고기+쌀 5.6kg','천연 유기농 재료를 주요 원료로 사용합니다',45000,'카길애그리퓨리나');
--------------------------------------------------------
--  DDL for Index ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "JSP"."ID" ON "JSP"."PRODUCT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "JSP_TABLESPACE" ;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "JSP"."PRODUCT" ADD CONSTRAINT "ID" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "JSP_TABLESPACE"  ENABLE;
