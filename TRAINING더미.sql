--------------------------------------------------
----------------    ȸ�� ����    -----------------
--------------------------------------------------
INSERT INTO MEMBER
VALUES(
SEQ_MEMBER.NEXTVAL,
'������',
'1234',
'������',
'������',
'01012345678',
'master@main.com',
'����� �߱� ������',
'Y',
SYSDATE
);

INSERT INTO MEMBER
VALUES(
SEQ_MEMBER.NEXTVAL,
'user01',
'1234',
'����ȣ',
'����',
'01012345678',
'john@wick.com',
'������ ö���� ������',
'Y',
SYSDATE
);

INSERT INTO MEMBER
VALUES(
SEQ_MEMBER.NEXTVAL,
'user02',
'1234',
'�̼ҿ�',
'�ҿ�12',
'01012345678',
'so@yeon.com',
'���ֵ� �������� ���ϸ���',
'Y',
'2023/10/01'
);

--------------------------------------------------
----------------    �Խñ� ����    -----------------
--------------------------------------------------
INSERT INTO MEMBER
VALUES(
SEQ_BOARD.NEXTVAL,
'�Խñ�1��',
'1�� �Խñ��Դϴ�.',
SYSDATE,
'Y',
'2023/10/01'
);

INSERT INTO MEMBER
VALUES(
SEQ_MEMBER.NEXTVAL,
'user02',
'1234',
'�̼ҿ�',
'�ҿ�12',
'01012345678',
'so@yeon.com',
'���ֵ� �������� ���ϸ���',
'Y',
'2023/10/01'
);

INSERT INTO MEMBER
VALUES(
SEQ_MEMBER.NEXTVAL,
'user02',
'1234',
'�̼ҿ�',
'�ҿ�12',
'01012345678',
'so@yeon.com',
'���ֵ� �������� ���ϸ���',
'Y',
'2023/10/01'
);

--------------------------------------------------
----------------    TODO ����    -----------------
--------------------------------------------------
INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'ù��° �����Դϴ�',
'2023/10/16'
);

INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'�ι�° �����Դϴ�',
'2023/10/16'
);

INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'����° �����Դϴ�',
'2023/10/16'
);

COMMIT;

SELECT * 
FROM TODO
WHERE TODO_DATE = '2023-10-16'
GROUP BY TODO_DATE;

INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'�߰��Ƕ��',
SYSDATE
);
ROLLBACK;