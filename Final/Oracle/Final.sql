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
    
    -- 유저 번호 자동증가    
    CREATE SEQUENCE USER_ID_SEQ
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 99999999999
       NOCYCLE
       NOCACHE
       NOORDER;
 
COMMIT;

--연습용
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
set ikind='주종', itaste='맛', ialcohol=5;

update testone
set ikind='일반증류주';

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
values (1, '0', '일반증류주');
insert into testoneikind
values (2, '1', '증류식소주');
insert into testoneikind
values (3, '2', '청주');
insert into testoneikind
values (4, '3', '탁주');
insert into testoneikind
values (5, '4', '생탁주');
insert into testoneikind
values (6, '5', '과실주');
insert into testoneikind
values (7, '6', '리큐르');
insert into testoneikind
values (8, '7', '약주');
insert into testoneikind
values (9, '8', '브랜디');
insert into testoneikind
values (10, '9', '기타주류');

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

insert into testone values (1,'작성자','상품명','상품설명','판매중',10000,100,to_char(sysdate,'yyyymmdd'), '1');

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

insert into testonetansan values(1, 0, '무');
insert into testonetansan values(2 ,1, '유');

alter table testonetansan modify tansan varchar2(20);

alter table testone add abv varchar(20); 

alter table testone drop column abv;


alter table testone add authdanmat number;
alter table testone add authssunmat number;
alter table testone add authsinmat number;
alter table testone add authbody number;
alter table testone add authtansan number;


insert all into testone values (testone_seq.nextval, '술작성2', '상품2', '상품내용2', '판매중', 6000, 100, to_char(sysdate,'yyyymmss'), '0', 0, 0, 9, 0, 9, 1)
into testone values (testone_seq.nextval, '술작성3', '상품3', '상품내용3', '판매중', 7000, 100, to_char(sysdate,'yyyymmss'), '0', 1, 1, 8, 1, 8, 2)
into testone values (testone_seq.nextval, '술작성4', '상품4', '상품내용4', '판매중', 8000, 100, to_char(sysdate,'yyyymmss'), '0', 2, 2, 7, 2, 7, 3)
into testone values (testone_seq.nextval, '술작성5', '상품5', '상품내용5', '판매중', 9000, 100, to_char(sysdate,'yyyymmss'), '0', 3, 3, 6, 3, 6, 4)
into testone values (testone_seq.nextval, '술작성6', '상품6', '상품내용6', '판매중', 1000, 100, to_char(sysdate,'yyyymmss'), '0', 4, 4, 5, 4, 5, 5)
into testone values (testone_seq.nextval, '술작성7', '상품7', '상품내용7', '판매중', 2000, 100, to_char(sysdate,'yyyymmss'), '0', 5, 5, 4, 5, 4, 6)
into testone values (testone_seq.nextval, '술작성8', '상품8', '상품내용8', '판매중', 3000, 100, to_char(sysdate,'yyyymmss'), '0', 6, 6, 3, 6, 3, 7)
into testone values (testone_seq.nextval, '술작성9', '상품9', '상품내용9', '판매중', 4000, 100, to_char(sysdate,'yyyymmss'), '0', 7, 7, 2, 7, 2, 8)
into testone values (testone_seq.nextval, '술작성10', '상품10', '상품내용10', '판매중', 5000, 100, to_char(sysdate,'yyyymmss'), '0', 8, 8, 1, 8, 1, 9)
into testone values (testone_seq.nextval, '술작성11', '상품11', '상품내용11', '판매중', 6000, 100, to_char(sysdate,'yyyymmss'), '0', 9, 9, 0, 9, 0, 0)
select *
from dual;

select TEST_BOARD_SEQ.nextval from dual;

commit;