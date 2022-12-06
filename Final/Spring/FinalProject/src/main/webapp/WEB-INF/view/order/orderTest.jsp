<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>


<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js" type="text/javascript"></script>


<script type="text/javascript">
	function payment(pg_provider, mode, payment_method){
		IMP.init('imp73475673');
		var pg_mid;
		
		if(pg_provider == 'inicis'){
			
			if(mode=='test'){
				pg_mid = 'html5_inicis.INIpayTest';
			} else {
				pg_mid = 'html5_inicis.MOI123123';
			}
		} else if(pg_provider=='kcp'){
			if(mode=='test'){
				pg_mid = 'kcp.T0000'; // 상점아이디
			} else {
				pg_mid = 'kcp.IOfds34';
			}
		}
		alert(pg_mid);
		
		const data = {
				pg: pg_mid,//
				pay_method: payment_method, // 결제수단
				merchant_uid:"ORD20221205-0000023", // 주문 날짜 및 주문 번호
				name: "Big T-shirt", // 상품명
				amount: 1004, // 결제금액
				buyer_email: "dbxowhdsla12@naver.com",//고객 이메일
				buyer_name: "Tom", // 고객이름
				buyer_tel: "010-5060-7980",//고객 전화번호
				
		};
		
		IMP.request_pay(data, response =>{
			alert('callback!: '+JSON.stringify(response));
			
			jQuery.ajax({
				url:"/payment/callback_receive",
				method:"POST",
				headers:{"Content-Type":"application/json"},
				data:JSON.stringify(response)
			}).done(function(data) {
				alert("Please, Check your payment result page!!");
			})
		});
	}
	
	
	
</script>
</head>
<body>
	<div>
		<button type="button" onClick="payment('kcp', 'test', 'card')"> kcp test payment</button>
		<button type="button" onClick="payment('kcp', 'real', 'card')"> kcp real payment</button>
		<button type="button" onClick="payment('kcp', 'test', 'vbank')"> kcp test vbank payment</button>
		<button type="button" onClick="payment('inicis', 'test', 'card')"> inicis test payment</button>
		<button type="button" onClick="payment('inicis', 'real', 'card')"> inicis real payment</button>
		<button type="button" onClick="payment('inicis', 'test', 'vbank')"> inicis test vbank payment</button>
		
	</div>





</body>
</html>