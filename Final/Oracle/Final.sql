 CREATE TABLE USERS (
    ID NUMBER PRIMARY KEY,
    USERNAME VARCHAR2(100) NOT NULL,
    PASSWORD VARCHAR2(100) NOT NULL,
    EMAIL VARCHAR2(50) ,
    NICKNAME VARCHAR2(50),
    POINT NUMBER DEFAULT 0,
    PHONE VARCHAR2(20) ,
    RATING VARCHAR2(50) DEFAULT 0,
    ROLE VARCHAR2(20) DEFAULT 'ROLE_USER'
);
    
    -- ���� ��ȣ �ڵ�����    
    CREATE SEQUENCE USER_ID_SEQ
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 99999999999
       NOCYCLE
       NOCACHE
       NOORDER;
 
COMMIT;

--������
CREATE TABLE TEST_BOARD(
    ID NUMBER(10) PRIMARY KEY,
    REG_TIME DATE,
    UPDATE_TIME DATE,
    CREATED_BY VARCHAR2(8) NOT NULL,
    MODIFIED_BY VARCHAR2(20) NOT NULL,
    ITEM_DETAIL VARCHAR2(100) NOT NULL,
    ITEM_NAME VARCHAR2(20) NOT NULL,
    ITEM_SELL_STATUS VARCHAR2(10) NOT NULL,
    PRICE NUMBER(20) NOT NULL,
    STOCK NUMBER(20) NOT NULL
);

CREATE SEQUENCE TEST_BOARD_SEQ;


alter table TEST_BOARD modify(REG_TIME DATE DEFAULT SYSDATE);
alter table TEST_BOARD modify(CREATED_BY VARCHAR2(100));

alter table TEST_BOARD drop(MODIFIED_BY);
alter table TEST_BOARD drop(REG_TIME);

create table testone (
    id number(10) primary key,
    writer varchar2(50) not null,
    iname varchar2(50) not null,
    idetail varchar2(1000) not null,
    istatus VARCHAR2(20) not null,
    price number not null,
    stock number not null,
    time date DEFAULT SYSDATE not null,
    auth number,
    authdanmat number,
    authssunmat number,
    authsinmat number,
    authbody number,
    authtansan number,
    abv number
);

drop table testone;

alter table testone rename column item_name to iname;
alter table testone rename column item_detail to idetail;
alter table testone rename column item_status to istatus;

CREATE SEQUENCE testone_seq;

alter table testone add ikind varchar(100);
alter table testone add itaste varchar(30);
alter table testone add ialcohol number;

update testone
set ikind='����', itaste='��', ialcohol=5;

update testone
set ikind='�Ϲ�������';

alter table testone
modify ikind not null;
alter table testone
modify itaste not null;
alter table testone
modify ialcohol not null;
alter table testone
modify TIME not null;

alter table testone add auth number;

update testone
set auth=1;

alter table testone
modify auth not null;



create table testoneikind (
    id number(10) references testone(id),
    auth number not null,
    kind varchar(30) not null
);

alter table testoneikind drop constraint SYS_C007356;

delete from testoneikind where id=1;

insert into testoneikind
values (1, '0', '�Ϲ�������');
insert into testoneikind
values (2, '1', '�����ļ���');
insert into testoneikind
values (3, '2', 'û��');
insert into testoneikind
values (4, '3', 'Ź��');
insert into testoneikind
values (5, '4', '��Ź��');
insert into testoneikind
values (6, '5', '������');
insert into testoneikind
values (7, '6', '��ť��');
insert into testoneikind
values (8, '7', '����');
insert into testoneikind
values (9, '8', '�귣��');
insert into testoneikind
values (10, '9', '��Ÿ�ַ�');

alter table testone drop primary key;

alter table testoneikind drop primary key;

alter table testone add primary key(id);

alter table testoneikind add primary key(id);

alter table testoneikind add primary key(auth);

alter table testone drop constraint TESTONE_TESTONEIKIND_FK;


alter table testone
add constraint testone_testoneikind_fk foreign KEY(auth) references testoneikind(auth);


SELECT testone.*,a.kind 
FROM testone testone JOIN testoneikind a ON testone.auth = a.auth
WHERE testone.auth IN 1
ORDER BY testone.auth;

delete from testoneikind where id=1;

alter table testone modify auth varchar2(10);
alter table testoneikind modify auth varchar2(10);

alter table testone drop column ikind;
alter table testone drop column itaste;
alter table testone drop column ialcohol;

insert into testone values (1,'�ۼ���','��ǰ��','��ǰ����','�Ǹ���',10000,100,to_char(sysdate,'yyyymmdd'), '1');

create table testonedanmat(
    id number primary key,
    authdanmat number not null,
    danmat number not null
);

create table testonessunmat(
    id number primary key,
    authssunmat number not null,
    ssunmat number not null
);

create table testonesinmat(
    id number primary key,
    authsinmat number not null,
    sinmat number not null
);

create table testonebody(
    id number primary key,
    authbody number not null,
    body number not null
);

create table testonetansan(
    id number primary key,
    authtansan number not null,
    tansan number not null
);

create table testoneabv(
    id number primary key,
    authabv number not null,
    abv number not null
);

insert into testonedanmat values(1,0,0);
insert into testonedanmat values(2,1,1);
insert into testonedanmat values(3,2,2);
insert into testonedanmat values(4,3,3);
insert into testonedanmat values(5,4,4);
insert into testonedanmat values(6,5,5);
insert into testonedanmat values(7,6,6);
insert into testonedanmat values(8,7,7);
insert into testonedanmat values(9,8,8);
insert into testonedanmat values(10,9,9);

insert into testonessunmat values(1,0,0);
insert into testonessunmat values(2,1,1);
insert into testonessunmat values(3,2,2);
insert into testonessunmat values(4,3,3);
insert into testonessunmat values(5,4,4);
insert into testonessunmat values(6,5,5);
insert into testonessunmat values(7,6,6);
insert into testonessunmat values(8,7,7);
insert into testonessunmat values(9,8,8);
insert into testonessunmat values(10,9,9);

insert into testonesinmat values(1,0,0);
insert into testonesinmat values(2,1,1);
insert into testonesinmat values(3,2,2);
insert into testonesinmat values(4,3,3);
insert into testonesinmat values(5,4,4);
insert into testonesinmat values(6,5,5);
insert into testonesinmat values(7,6,6);
insert into testonesinmat values(8,7,7);
insert into testonesinmat values(9,8,8);
insert into testonesinmat values(10,9,9);

insert into testonebody values(1,0,0);
insert into testonebody values(2,1,1);
insert into testonebody values(3,2,2);
insert into testonebody values(4,3,3);
insert into testonebody values(5,4,4);
insert into testonebody values(6,5,5);
insert into testonebody values(7,6,6);
insert into testonebody values(8,7,7);
insert into testonebody values(9,8,8);
insert into testonebody values(10,9,9);

insert into testonedanmat values(1,0,0);
insert into testonedanmat values(2,1,1);
insert into testonedanmat values(3,2,2);
insert into testonedanmat values(4,3,3);
insert into testonedanmat values(5,4,4);
insert into testonedanmat values(6,5,5);
insert into testonedanmat values(7,6,6);
insert into testonedanmat values(8,7,7);
insert into testonedanmat values(9,8,8);
insert into testonedanmat values(10,9,9);

insert into testonetansan values(1, 0, '��');
insert into testonetansan values(2 ,1, '��');

alter table testonetansan modify tansan varchar2(20);

alter table testone add abv varchar(20); 

alter table testone drop column abv;


alter table testone add authdanmat number;
alter table testone add authssunmat number;
alter table testone add authsinmat number;
alter table testone add authbody number;
alter table testone add authtansan number;


insert all into testone values (testone_seq.nextval, '���ۼ�2', '��ǰ2', '��ǰ����2', '�Ǹ���', 6000, 100, to_char(sysdate,'yyyymmss'), '0', 0, 0, 9, 0, 9, 1)
into testone values (testone_seq.nextval, '���ۼ�3', '��ǰ3', '��ǰ����3', '�Ǹ���', 7000, 100, to_char(sysdate,'yyyymmss'), '0', 1, 1, 8, 1, 8, 2)
into testone values (testone_seq.nextval, '���ۼ�4', '��ǰ4', '��ǰ����4', '�Ǹ���', 8000, 100, to_char(sysdate,'yyyymmss'), '0', 2, 2, 7, 2, 7, 3)
into testone values (testone_seq.nextval, '���ۼ�5', '��ǰ5', '��ǰ����5', '�Ǹ���', 9000, 100, to_char(sysdate,'yyyymmss'), '0', 3, 3, 6, 3, 6, 4)
into testone values (testone_seq.nextval, '���ۼ�6', '��ǰ6', '��ǰ����6', '�Ǹ���', 1000, 100, to_char(sysdate,'yyyymmss'), '0', 4, 4, 5, 4, 5, 5)
into testone values (testone_seq.nextval, '���ۼ�7', '��ǰ7', '��ǰ����7', '�Ǹ���', 2000, 100, to_char(sysdate,'yyyymmss'), '0', 5, 5, 4, 5, 4, 6)
into testone values (testone_seq.nextval, '���ۼ�8', '��ǰ8', '��ǰ����8', '�Ǹ���', 3000, 100, to_char(sysdate,'yyyymmss'), '0', 6, 6, 3, 6, 3, 7)
into testone values (testone_seq.nextval, '���ۼ�9', '��ǰ9', '��ǰ����9', '�Ǹ���', 4000, 100, to_char(sysdate,'yyyymmss'), '0', 7, 7, 2, 7, 2, 8)
into testone values (testone_seq.nextval, '���ۼ�10', '��ǰ10', '��ǰ����10', '�Ǹ���', 5000, 100, to_char(sysdate,'yyyymmss'), '0', 8, 8, 1, 8, 1, 9)
into testone values (testone_seq.nextval, '���ۼ�11', '��ǰ11', '��ǰ����11', '�Ǹ���', 6000, 100, to_char(sysdate,'yyyymmss'), '0', 9, 9, 0, 9, 0, 0)
select *
from dual;

select TEST_BOARD_SEQ.nextval from dual;

commit;