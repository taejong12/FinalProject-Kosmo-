<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>


<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js" type="text/javascript"></script>


<script type="text/javascript">
	function payment(pg_provider, mode, payment_method){//제공자, 모드(테스트, 리얼) , 결제방식
		IMP.init('imp73475673');//회사의 코드 --초기화
		var pg_mid;//pg 코드
		
		
		if(pg_provider == 'inicis'){ //결제사(pg) inicis회사
			
			if(mode=='test'){
				pg_mid = 'html5_inicis.INIpayTest';//테스트 코드
			} else {
				pg_mid = 'html5_inicis.MOI123123';//실제코드 -- 결제코드
			}
		} else if(pg_provider=='kcp'){
			if(mode=='test'){
				pg_mid = 'kcp.T0000'; // 상점아이디
			} else {
				pg_mid = 'kcp.IOfds34';
			}
		}
		
		// alert(pg_mid);

		const data = {
				pg: pg_mid, // 
				pay_method: payment_method, // 결제수단
				merchant_uid: "ORD20221205-0000024", // 주문 번호 -- DTO에서 sysdate로 설정
				name: "${alName}", // 상품명 
				amount: "${orTotalPrice}", // 결제금액
				buyer_email: "dbxowhdsla12@naver.com",//고객 이메일
				buyer_name: "${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}", // 고객이름
				buyer_tel: "010-5060-7980" //고객 전화번호
//				buyer_tel: "010-5060-7980",//고객 전화번호
				
		};
		
		
			
		IMP.request_pay(data, response =>{ //위 데이터를 바탕으로 결제 요청
			 alert('callback!: '+JSON.stringify(response)); //콜백함수
			
			console.log(JSON.stringify(response));
			 
			var formValue = $('#moveForm').serialize();

			$.ajax({ //비동기로 처리
				url:"/payment/callback_receive", //컨트롤러에 설정
				method:"POST", //포스트 방식
				headers:{"Content-Type":"application/json"}, //제이슨타입
				data:JSON.stringify(response)
						
						 //스트링타입으로 리스폰스
			}).success(function(data){ //끝나면 함수 시작		

				$(document).ready(function(){
					form($("input[name=alNum]").val());				
				});
				
				function form(){
					$.ajax({
						url :"/order/insert",
						data:formValue,
						success : function(data){
							alert('성공'); 
							
						}
					
					})
			
		
				}
	
				// alert("Please, Check your payment result page!!");
				//console.log(data.process_result);
				console.log(data);
				//console.log(formValue+"dsadsa");
				
				if(data.process_result == '결제성공') {
					alert('결제성공');
					location.href='/order/insert';
					
				} else {
					// alert('결제취소');
					
				}
				
				// location.href='/order/orderPage';
			
			
			}).error(function(error){
				alert("error");
			})
			
		});
	}
	
 
	


	
</script>
</head>
<body>
		
	<h1>주문하기</h1>
	
	<h2>상품정보</h2>
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>이미지</th>
			<th>상품명</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		
		<c:choose>
			<c:when test="${empty alName}">
				<tr>
					<td colspan="4" align="center"><h2>등록된 게시물이 없습니다.</h2></td>
				</tr>
			</c:when>
			<c:otherwise>
			
				<tr>
					<td><img src="${alOpic}" referrerpolicy="no-referrer" /></td>
					<td>${alName}</td>
					<td>${orTotalAmount}</td>
					<td>${orTotalPrice}</td>
				</tr>
				
			</c:otherwise>
		</c:choose>
	</table>
	
	<h1>주문정보 확인</h1>
	
	
	<h3>사용자 아이디</h3>
	<div >${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }</div>
	
	<h3>이름</h3>
	<div >${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }</div>
	
	<hr>
	<h3>api로 설정해야함</h3>
	<h3>배송지입력</h3>
	
		<form id="moveForm" method="post" >
			<input type="hidden" name="orTotalAmount" value="${orTotalAmount}">
			<input type="hidden" name="orPayStatus" value="결제완료">
			<input type="hidden" name="orTotalPrice" value="${orTotalPrice}">
			<input type="hidden" name="orPayDate" value=20201208 >
			<input type="number" name="orPostNum" value="00000"><br/>
			<input type="text" name="orRoadAddress" value="도로명주소"><br/>
			<input type="text" name="orDetailAddress" value="상세주소">
			<input type="hidden" name="alNum" value="${alNum}">
			<input type="hidden" name="userName" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}">
			<input type="hidden" name="alOpic" value="${alOpic}">
			<input type="hidden" name="alName" value="${alName}">
		
	
			<h2>결제방법</h2>
			
	<!-- 	사용할 회사명: kcp 버튼 -->
			<button  type="button" onclick="payment('kcp', 'test', 'card')">카드 결제</button>
	<!-- 		카드 결제 테스트 -->
	<!-- 		<button type="button" onClick="payment('kcp', 'real', 'card')"> kcp real payment</button> -->
	<!-- 		카드 결제 -->
			<button  type="button" onclick="payment('kcp', 'test', 'vbank')">무통장 입금</button>
	<!-- 		가상계좌 -->
	<!-- 		<button type="button" onClick="payment('inicis', 'test', 'card')"> inicis test 결제</button> -->
			
	<!-- 		<button type="button" onClick="payment('inicis', 'real', 'card')"> inicis real payment</button> -->
			
	<!-- 		<button type="button" onClick="payment('inicis', 'test', 'vbank')"> inicis test 무통장 입금</button> -->
			
		</form>
			<button type="submit" onclick="location.href='/store/search';">목록가기</button>




</body>
</html>