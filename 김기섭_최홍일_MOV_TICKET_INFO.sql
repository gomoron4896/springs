/* Drop Tables */

DROP TABLE MOV_TICKET_INFO CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_MOV_TICKET_INFO_TKT_PAYID;




/* Create Sequences */

CREATE SEQUENCE SEQ_PAYID INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE MOV_TICKET_INFO
(
	-- 해당 예매이력에 대한 식별번호
	TKT_ID number(10,0) NOT NULL,
	-- 예매시 이용한 결제 플랫폼 종류
	TKT_FORM varchar2(100) NOT NULL,
	-- 결제 시 사용한 수단
	TKT_PAYMENT varchar2(100) NOT NULL,
	-- 예매내역에 대한 결제 일자
	TKT_PAYDATE char(10) NOT NULL,
	-- 예매내역에 대한 지불가격
	TKT_PRICE number(6) NOT NULL,
	-- 예매를 진행한 구매자 ID
	TKT_USERID char(10) NOT NULL,
	-- 예매한 영화 제목
	TKT_MOVID varchar2(100) NOT NULL,
	-- 영화상영일의 연도-월-일
	TKT_SHOWDATE char(10) NOT NULL,
	-- 영화상영일의 상영 시-분
	TKT_SHOWTIME char(10) NOT NULL,
	-- 영화가 상영되는 상영관 ID
	-- ex) 1층 1관 = 1F1, 지하1층 11관 = 11B1
	TKT_THEATER char(4) NOT NULL,
	-- 예약한 상영관 좌석 번호
	-- ex) A열 1번 = A1, Z열 20번 = Z20
	TKT_SEATID char(3) NOT NULL,
	PRIMARY KEY (TKT_ID)
);
