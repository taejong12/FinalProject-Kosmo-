alter table orders modify or_postnum varchar2(50);

select a.al_opic, a.al_name, o.OR_TOTALAMOUNT, o.OR_PAYSTATUS, o.OR_TOTALPRICE, o.OR_PAYDATE, o.OR_DETAILADDRESS
from alcohols a join orders o on o.AL_NUM = a.AL_NUM     
            join users u on u.username=o.username
where o.username = 'test';
