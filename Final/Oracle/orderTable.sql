create table ORDERS(
    OR_NUM NUMBER(9) PRIMARY KEY,
    OR_REGTIME	DATE DEFAULT SYSDATE,	
    OR_UPDATE	DATE,	
    OR_CRT_BY	VARCHAR2(100),	
    OR_MOD_BY	VARCHAR2(100),	
    OR_DATE	DATE DEFAULT SYSDATE,	
    OR_STATUS	VARCHAR2(50),	
    ID	NUMBER
);

CREATE TABLE ORDERITEM(
    OI_NUM	NUMBER PRIMARY KEY,
    OI_REGTIME	DATE DEFAULT SYSDATE,
    OI_UPDATE	DATE,
    OI_CRT_BY	VARCHAR2(100),
    OI_MOD_BY	VARCHAR2(100),
    OI_COUNT	NUMBER,
    OI_PRICE	NUMBER,
    AL_NUM	NUMBER,
    OR_NUM	NUMBER
);

CREATE SEQUENCE OR_SEQ
INCREMENT BY 1
START WITH 400
MINVALUE 1
MAXVALUE 9999999999
NOCYCLE
NOCACHE
NOORDER
;