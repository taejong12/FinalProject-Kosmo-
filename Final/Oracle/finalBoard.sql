create table test_board (
    board_num number primary key,
    item_detail varchar2(1000),
    item_status varchar2(30),
    item_date date default sysdate,
    al_num number
);


select t.*, a.al_name, a.al_price, a.al_stock 
from test_board t join alcohols a 
on t.al_num=a.al_num
order by board_num desc;

CREATE SEQUENCE test_board_seq;

drop sequence test_board_seq;

create sequence test_board_seq
increment by 1
start with 1001
maxvalue 9999
minvalue 1001
nocycle;

insert all 
into test_board(board_num, item_detail, item_status, item_date, al_num) values(test_board_seq.nextval, '상품설명1', '판매중', to_date('2022-11-28','yyyy-mm-dd'), test_al_num_seq.nextval) 
into alcohols(al_num, al_name, al_price, al_stock) values(test_al_num_seq.nextval, '술이름1', 10000, 100)
select *
from dual;

select t.*, a.al_name, a.al_price, a.al_stock, a.al_opic, a.al_abv, a.al_volume, a.al_jaeryo, f.*
from test_board t join alcohols a on  t.al_num=a.al_num
    join al_kinds k on a.ki_num=k.ki_num
    join flavors f on a.al_num=f.al_num
where t.board_num=0;

create sequence test_al_num_seq
increment by 1
start with 1001
maxvalue 9999
minvalue 1001
nocycle;

create sequence test_ki_num_seq
increment by 1
start with 1001
maxvalue 9999
minvalue 1001
nocycle;

create sequence test_ki_num_seq
increment by 1
start with 1001
maxvalue 9999
minvalue 1001
nocycle;

insert all
into test_board values (test_board_seq.nextval, itemDetail, itemStatus, itemDate, test_al_num_seq.nextval)
into alcohols(al_num, al_name, ki_num, al_abv, al_price, al_stock) values (test_al_num_seq.nextval, alName, test_ki_num_seq.nextval, alAbv, alPrice, alStock)
into ki_name values (test_ki_num_seq.nextval, kiName)
into flavors values (test_al_num_seq.nextval, flDanmat, flSinmat ,flSsunmat, flBody, flTansan)
select *
from dual;

select k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
from al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num
where a.al_num=0;



SELECT k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
		FROM al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num
		WHERE a.ki_num IN 201
            and f.fl_danmat IN 1
            AND f.fl_sinmat in 3
            ;

SELECT k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
FROM al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num
where a.al_abv in (select al_abv
                    from alcohols
                    where al_abv between 0 and 10)
;


select k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
from al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num 
where rownum <=20
order by a.al_num desc
;

select rownum, k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
from al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num 
where a.al_name in (select al_name
    from alcohols 
    where rownum <=10 
    and al_name like '%꿈%')
order by a.al_num desc
;


select count(*)
from alcohols;

select count(*)
from al_kinds k join alcohols a on k.ki_num=a.ki_num
		                join flavors f on a.al_num=f.al_num ;


select rownum ,k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
from al_kinds k join (select rownum as rn , AL.* from alcohols AL where rownum <= 10 order by al.al_num desc ) a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num
where rn > 0
;


 select * from(
        
        select rownum  as rn, a.*
          
        from alcohols a where rownum <= 600
        order by al_num desc) 
                
where rn > 500;

<![CDATA[
SELECT *
FROM(
SELECT rownum as rnum, A.*
FROM(select  k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
        from al_kinds k join alcohols a on k.ki_num=a.ki_num
                        join flavors f on a.al_num=f.al_num
]]>                        
                        
        WHERE 
        <if test="chkArray != null">
				a.ki_num IN
				<foreach collection="chkArray" item="item" open="(" close=")" separator=",">
					 #{item}
				</foreach>
			</if>
			<if test="chkDanmat != null">
				AND f.fl_danmat IN
					<foreach collection="chkDanmat" item="item" open="(" close=")" separator=",">
						 #{item}
					</foreach>
			</if>
			<if test="chkFlSinmat != null">
				AND f.fl_sinmat IN
					<foreach collection="chkFlSinmat" item="item" open="(" close=")" separator=",">
						 #{item}
					</foreach>
			</if>
			<if test="chkFlSsunmat != null">
				AND f.fl_ssunmat IN
					<foreach collection="chkFlSsunmat" item="item" open="(" close=")" separator=",">
						 #{item}
					</foreach>
			</if>
			<if test="chkFlBody != null">
				AND f.fl_body IN
					<foreach collection="chkFlBody" item="item" open="(" close=")" separator=",">
						 #{item}
					</foreach>
			</if>
			<if test="chkFlTansan != null">
				AND f.fl_tansan IN
					<foreach collection="chkFlTansan" item="item" open="(" close=")" separator=",">
						 #{item}
					</foreach>
			</if>
			<if test="chkAlAbv == null and chkAlAbv1 != null">
				AND a.al_abv between
					0
					and
					<foreach collection="chkAlAbv1" item="item">
						  #{item}
					</foreach> 
			</if>
			<if test="chkAlAbv != null and chkAlAbv1 == null">
				AND a.al_abv between
					<foreach collection="chkAlAbv" item="item" >
						  #{item}
					</foreach> 
					and
					999
			</if>	
			<if test="chkAlAbv != null and chkAlAbv1 != null">
				AND a.al_abv between
					<foreach collection="chkAlAbv" item="item" >
						  #{item}
					</foreach> 
					and
					<foreach collection="chkAlAbv1" item="item">
						  #{item}
					</foreach> 
			</if>
			<if test="chkAlPrice == null and chkAlPrice1 != null ">
				and a.al_price between 0 and
				<foreach collection="chkAlPrice1" item="item">
						 #{item}
				</foreach> 
			</if>
			<if test="chkAlPrice != null and chkAlPrice1 == null">
				and a.al_price between
				<foreach collection="chkAlPrice" item="item">
					#{item}
				</foreach> 
				and 10000000
			</if>
			<if test="chkAlPrice != null and chkAlPrice1 != null">
				and a.al_price between
				<foreach collection="chkAlPrice" item="item">
					#{item}
				</foreach>  
				and
				<foreach collection="chkAlPrice1" item="item">
					#{item}
				</foreach> 
			</if>		
        
        
<![CDATA[
        
        order by a.al_num DESC) A
)
WHERE rnum between ((#{cri.pageNum}-1) * #{cri.amount}) and ((#{cri.pageNum}) * #{cri.amount});
]]>            


create table categories (
    tier number not null,
    cateName varchar2(30) not null,
    cateCode varchar2(30) primary key,
    cateParent varchar2(30),
    foreign key(cateParent) references categories(cateCode) 
);

alter table alcohols add catecode varchar2(30);

drop table categories;


insert into categories(tier, cateName, cateCode) 
values (1, '전통주', '100000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (2, '주종', '101000', '100000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '일반증류주', '101001', '101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '증류식소주', '101002', '101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '청주', '101003', '101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '탁주', '101004', '101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '생탁주', '101005','101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '과실주', '101006','101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '리큐르', '101007','101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '약주', '101008', '101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '브랜디', '101009','101000');
insert into categories(tier, cateName, cateCode, cateParent) 
values (3, '기타주류', '101010','101000');



select *
from (al_kinds k join (select /*+INDEX_DESC(alcohols alcohols_seq) */ rownum as rnum , AL.* from alcohols AL where rownum <= 10 order by al.al_num desc 
                    ) a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num)
where rnum > 0 
and a.ki_num in 203;

select k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
from al_kinds k join alcohols a on k.ki_num=a.ki_num
		                join flavors f on a.al_num=f.al_num 
                        order by a.al_num desc;
                        
select *
from(
    
        (al_kinds k join (select /*+INDEX_DESC(alcohols alcohols_seq) */ rownum as rnum , AL.* from alcohols AL where rownum <= ((#{cri.pageNum}) * #{cri.amount}) order by al.al_num desc 
							) a on k.ki_num=a.ki_num
		               	join flavors f on a.al_num=f.al_num)
		where rnum > ((#{cri.pageNum}-1) * #{cri.amount})

            (select k.*, a.al_opic, a.al_name, a.al_abv, a.al_price, a.al_stock, f.*
                    from al_kinds k join alcohols a on k.ki_num=a.ki_num
                join flavors f on a.al_num=f.al_num
                where k.ki_num = 200 and k.ki_num = 203
                order by a.al_num desc
            )
    )
where 
                        
                        











