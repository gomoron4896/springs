/* Drop Tables */

DROP TABLE MOV_TICKET_INFO CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_MOV_TICKET_INFO_TKT_PAYID;




/* Create Sequences */

CREATE SEQUENCE SEQ_PAYID INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE MOV_TICKET_INFO
(
	-- �ش� �����̷¿� ���� �ĺ���ȣ
	TKT_ID number(10,0) NOT NULL,
	-- ���Ž� �̿��� ���� �÷��� ����
	TKT_FORM varchar2(100) NOT NULL,
	-- ���� �� ����� ����
	TKT_PAYMENT varchar2(100) NOT NULL,
	-- ���ų����� ���� ���� ����
	TKT_PAYDATE char(10) NOT NULL,
	-- ���ų����� ���� ���Ұ���
	TKT_PRICE number(6) NOT NULL,
	-- ���Ÿ� ������ ������ ID
	TKT_USERID char(10) NOT NULL,
	-- ������ ��ȭ ����
	TKT_MOVID varchar2(100) NOT NULL,
	-- ��ȭ������ ����-��-��
	TKT_SHOWDATE char(10) NOT NULL,
	-- ��ȭ������ �� ��-��
	TKT_SHOWTIME char(10) NOT NULL,
	-- ��ȭ�� �󿵵Ǵ� �󿵰� ID
	-- ex) 1�� 1�� = 1F1, ����1�� 11�� = 11B1
	TKT_THEATER char(4) NOT NULL,
	-- ������ �󿵰� �¼� ��ȣ
	-- ex) A�� 1�� = A1, Z�� 20�� = Z20
	TKT_SEATID char(3) NOT NULL,
	PRIMARY KEY (TKT_ID)
);
