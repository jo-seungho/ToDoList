DROP TABLE MEMBER;
DROP TABLE BOARD;
DROP TABLE TODO;

DROP SEQUENCE SEQ_MEMBER;  
DROP SEQUENCE SEQ_BOARD;  
DROP SEQUENCE SEQ_TODO;

--------------------------------------------------
----------------    회원 테이블    -----------------
--------------------------------------------------
CREATE TABLE MEMBER (
    USER_NO NUMBER PRIMARY KEY,
	USER_ID	VARCHAR2(20) NOT NULL,
	USER_PWD VARCHAR2(200) NOT NULL,
	USER_NAME VARCHAR2(20) NOT NULL,
	USER_NICKNAME VARCHAR2(30) NOT NULL,
	PHONE VARCHAR2(15) NOT NULL,
	EMAIL VARCHAR2(30) NOT NULL,
	ADDRESS VARCHAR2(150) NOT NULL,
	STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	ENROLL_DATE	DATE DEFAULT SYSDATE
);

COMMENT ON COLUMN MEMBER.USER_NO IS '회원번호';
COMMENT ON COLUMN MEMBER.USER_ID IS '회원아이디';
COMMENT ON COLUMN MEMBER.USER_PWD IS '회원비밀번호';
COMMENT ON COLUMN MEMBER.USER_NAME IS '회원이름';
COMMENT ON COLUMN MEMBER.USER_NICKNAME IS '회원닉네임';
COMMENT ON COLUMN MEMBER.PHONE IS '전화번호';
COMMENT ON COLUMN MEMBER.EMAIL IS '이메일';
COMMENT ON COLUMN MEMBER.ADDRESS IS '주소';
COMMENT ON COLUMN MEMBER.STATUS IS '회원상태';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS '회원가입일';


--------------------------------------------------
----------------   게시판 테이블    ----------------
--------------------------------------------------
CREATE TABLE BOARD (
	BOARD_NO NUMBER PRIMARY KEY,
	BORAD_TITLE VARCHAR2(250) NOT NULL,
	BORAD_DESC VARCHAR2(2000) NOT NULL,
	CREATE_DATE	DATE DEFAULT SYSDATE,
	STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
	USER_NO	NUMBER NOT NULL,
    CATEGORY NUMBER NOT NULL,
    FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

COMMENT ON COLUMN BOARD.BOARD_NO IS '게시글번호';
COMMENT ON COLUMN BOARD.BORAD_TITLE IS '제목';
COMMENT ON COLUMN BOARD.BORAD_DESC IS '내용';
COMMENT ON COLUMN BOARD.CREATE_DATE IS '작성일';
COMMENT ON COLUMN BOARD.STATUS IS '게시상태';
COMMENT ON COLUMN BOARD.USER_NO IS '작성자번호';
COMMENT ON COLUMN BOARD.CATEGORY IS '카테고리';


--------------------------------------------------
------------   ToDo 리스트 테이블    --------------
--------------------------------------------------
CREATE TABLE TODO (
    TODO_NO NUMBER PRIMARY KEY,
    TODO_DESC VARCHAR2(2000) NOT NULL,
    TODO_DATE DATE NOT NULL,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);


--------------------------------------------------
----------------    시퀀스    ---------------------
--------------------------------------------------
CREATE SEQUENCE SEQ_MEMBER NOCACHE;
CREATE SEQUENCE SEQ_BOARD NOCACHE;
CREATE SEQUENCE SEQ_TODO NOCACHE;

COMMIT;