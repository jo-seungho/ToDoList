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
INSERT INTO BOARD
VALUES(
SEQ_BOARD.NEXTVAL,
'�Խñ� 1��',
'1�� �Խñ��Դϴ�.',
SYSDATE,
'Y',
1,
1
);

INSERT INTO BOARD
VALUES(
SEQ_BOARD.NEXTVAL,
'�Խñ�2��',
'2�� �Խñ��Դϴ�.',
SYSDATE,
'Y',
2,
1
);

INSERT INTO BOARD
VALUES(
SEQ_BOARD.NEXTVAL,
'�Խñ�3��',
'3�� �Խñ��Դϴ�.',
SYSDATE,
'Y',
3,
1
);



--------------------------------------------------
----------------    TODO ����    -----------------
--------------------------------------------------
INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'ù��° �����Դϴ�',
'2023/10/16',
'Y'
);

INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'�ι�° �����Դϴ�',
'2023/10/16',
'Y'
);

INSERT INTO TODO
VALUES(
SEQ_TODO.NEXTVAL,
'����° �����Դϴ�',
'2023/10/16',
'Y'
);

COMMIT;