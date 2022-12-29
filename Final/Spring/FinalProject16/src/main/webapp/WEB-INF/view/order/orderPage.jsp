<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderPage</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="/css/order/orderPage.css">

<style type="text/css">
html, body {
	height: 100%;
	font-family: 'Hahmlet', serif;
}

body {
	display: flex;
	flex-direction: column;
}

section {
	flex: 1;
	padding: 0px 150px 0px 220px
}
</style>

<script type="text/javascript">
	function payment(pg_provider, mode, payment_method){//제공자, 모드(테스트, 리얼) , 결제방식
		
		let address = $('#deleveryAddress2').val();
		let addressDetail = $('#deleveryAddress3').val();
	
		
		if(address == null || address == ""){
			alert('도로명 주소를 입력해주세요.');
			$('#deleveryAddress2').focus();
			return false;
		} else if(addressDetail == null || addressDetail == ""){
			alert('상세 주소를 입력해주세요.');
			$('#deleveryAddress3').focus();
			return false;
		}
		
		
		
		
		let totalPrice = 0;				// 총 가격
		let totalCount = 0;				// 총 갯수
		let totalKind = 0;				// 총 종류
		let deliveryPrice = 0;			// 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
		
		
			// 총 가격
			totalPrice += parseInt($(".individual_orTotalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(".individual_caCount_input").val());
			// 총 종류
			totalKind += 1;
		

		/* 배송비 결정 */
		if(totalPrice >= 30000){
			deliveryPrice = 0;
		} else if(totalPrice == 0){
			deliveryPrice = 0;
		} else {
			deliveryPrice = 3000;	
		}
		
		finalTotalPrice = totalPrice + deliveryPrice;
		
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
		let today = new Date();
		// 년도 getFullYear()

		let year = today.getFullYear(); 

		// 월 getMonth() (0~11로 1월이 0으로 표현되기 때문에 + 1을 해주어야 원하는 월을 구할 수 있다.)

		let month = today.getMonth() + 1

		// 일 getDate()

		let date = today.getDate(); // 일
		// 시 getHours()

		let hours = today.getHours();

		// 분 getMinutes()

		let minutes = today.getMinutes();

		/// 초 getSeconds()

		let seconds = today.getSeconds();
		const orderNum = "${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}"+year+month+date+hours+minutes+seconds;
		var user2 = "${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}";
		const data = {
				pg: pg_mid, // 
				pay_method: payment_method, // 결제수단
				merchant_uid: orderNum,
				name: "전통주 "+totalCount+"종", // 상품명 
				amount: finalTotalPrice, // 결제금액
				buyer_email: "${list.email}", //고객 이메일
				buyer_name: "${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}", // 고객이름
				buyer_tel: "${list.phone}" //고객 전화번호
//				buyer_tel: "010-5060-7980", //고객 전화번호
		};
		
		//console.log(data);
			
		IMP.request_pay(data, response =>{ //위 데이터를 바탕으로 결제 요청
			 //alert('callback!: '+JSON.stringify(response)); //콜백함수
			
			//console.log(JSON.stringify(response));
			 
			var formValue = $('#moveForm').serialize();

			$.ajax({ //비동기로 처리
				url:"/payment/callback_receive", //컨트롤러에 설정
				method:"POST", //포스트 방식
				headers:{"Content-Type":"application/json"}, //제이슨타입
				data:JSON.stringify(response) //스트링타입으로 리스폰스
			}).success(function(data){ //끝나면 함수 시작		

				// alert("Please, Check your payment result page!!");
				//console.log(data.process_result);
				//console.log(data);
				//console.log(formValue+"dsadsa");
				
				if(data.process_result == '결제성공') {
					$(document).ready(function(){
						
						/* 주소 정보 & 받는이*/
						let form_contents ='';
						let orNum = orderNum;
						
						let orderNumber = "<input name='orNum' type='hidden' value='" + orNum + "'>";
						form_contents += orderNumber;
						
						/* finalTotalPrice <- 이 값이 최종가격 */
						let orderFinalTotalPrice = "<input name='orTotalPrice' type='hidden' value='" + finalTotalPrice + "'>";
						form_contents += orderFinalTotalPrice; 
						
						
								
								let alNum = $(".individual_alNum_input").val();
								let caCount = $(".individual_caCount_input").val();

								let user_input = "<input name='orders[" + 0 + "].userName' type='hidden' value='" + user2 + "'>";
								form_contents += user_input;
								
								let alNum_input = "<input name='orders[" + 0 + "].alNum' type='hidden' value='" + alNum + "'>";
								form_contents += alNum_input;
								
								let caCount_input = "<input name='orders[" + 0 + "].caCount' type='hidden' value='" + caCount + "'>";
								form_contents += caCount_input;		
								
								let orNum_input = "<input name='orders[" + 0 + "].orNum' type='hidden' value='" + orNum + "'>";
								form_contents += orNum_input;	
								
							
					
						$(".compOrder_form").append(form_contents);
						$(".compOrder_form").submit();			
					});
					
					
					
	
					
				} else {
					alert('결제취소');
					
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
	<section>
		<h2 class="order-menu">주문하기</h2>

		<table class="goods_subject_table">
			<tr>
				<th>이미지</th>
				<th>상품명</th>
				<th>수량</th>
				<th>가격</th>

			</tr>

			<c:choose>
				<c:when test="${empty list}">
					<tr>
						<td colspan="4" align="center"><h2>등록된 게시물이 없습니다.</h2></td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="orderList">
						<tr>
							<td><img src="${orderList.alOpic}"
								referrerpolicy="no-referrer" /></td>
							<td>${orderList.alName}</td>
							<td>${orderList.orTotalAmount}</td>
							<td>${orderList.orTotalPrice}</td>

						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>

		<h2 class="orderContain">주문정보 확인</h2>
		<div class="user-info">
			<form id="moveForm" action="/orderHis" method="post"
				class="compOrder_form">
				<table>
					<tr>
						<th>사용자 아이디</th>
						<td>${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }</td>
					</tr>
					<tr>
						<th>우편번호</th>
						<td><input name="userName" type="hidden"
							value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }">
							<!-- 
			<input type="hidden" name="orPayDate" value="${orPayDate}">
			 --> <input type="text" id="deleveryAddress1" placeholder="우편번호"
							value="${BMaddress.address1 }" name="orPostNum" readonly>
						</td>
					</tr>
					<tr>
						<th>도로명주소</th>
						<td><input type="text" value="${BMaddress.address2 }"
							id="deleveryAddress2" readonly placeholder="배달 받으실 주소를 입력해 주세요"
							name="orRoadAddress" onclick="modifyAddress()"></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type="text" id="deleveryAddress3"
							value="${BMaddress.address3 }" name="orDetailAddress"
							placeholder="상세주소를 입력해주세요"></td>
						<%@ include file="/WEB-INF/view/include/modifyAddress.jsp"%>

					</tr>

				</table>
			</form>
		</div>

		<!-- 가격 종합 -->
		<div class="detailright">

			<!-- 가격 종합 정보 -->
			<h2>결제정보</h2>
			<input type="hidden" class="individual_orTotalPrice_input"
				value="${orderList.orTotalPrice}"> <input type="hidden"
				name="alNum" class="individual_alNum_input"
				value="${orderList.alNum}"> <input type="hidden"
				name="caCount" class="individual_caCount_input"
				value="${orderList.orTotalAmount}"> <input type="hidden"
				name="alOpic" value="${orderList.alOpic}"> <input
				type="hidden" name="alName" value="${orderList.alName}">

			<div class="price_span_label">상품 금액</div>

			<div>
				<p>
					<span class="totalPrice_span">0</span>원
				</p>
			</div>

			<div class="price_span_label">배송비</div>
			<div>
				<p>
					<span class="delivery_price_span">0</span>원
				</p>
			</div>

			<hr>

			<div>
				<strong class="price_span_label total_price_label">최종 결제 금액</strong>
			</div>
			<div>
				<p>
					<span class="finalTotalPrice_span">0</span>원
				</p>
			</div>

			<div class="card-btn">
				<!-- 	사용할 회사명: kcp 버튼 -->
				<table>
					<tr>
						<td>
							<button class="order_btn" type="button"
								onclick="payment('kcp', 'test', 'card')">카드 결제</button>
						</td>
						<!-- 		카드 결제 테스트 -->
						<!-- 		<button type="button" onClick="payment('kcp', 'real', 'card')"> kcp real payment</button> -->
						<!-- 		카드 결제 -->
						<td>
							<button class="order_btn" type="button"
								onclick="payment('kcp', 'test', 'vbank')">무통장 입금</button>
						</td>
					</tr>
				</table>

				<!-- 		가상계좌 -->
				<!-- 		<button type="button" onClick="payment('inicis', 'test', 'card')"> inicis test 결제</button> -->

				<!-- 		<button type="button" onClick="payment('inicis', 'real', 'card')"> inicis real payment</button> -->

				<!-- 		<button type="button" onClick="payment('inicis', 'test', 'vbank')"> inicis test 무통장 입금</button> -->
			</div>

		</div>

		<script>
	$(document).ready(function(){
		
		/* 주문 조합정보란 최신화 */
		setTotalInfo();
		
	});
	
	/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
	function setTotalInfo(){
	
		let totalPrice = 0;				// 총 가격
		let totalCount = 0;				// 총 갯수
		let totalKind = 0;				// 총 종류
		let deliveryPrice = 0;			// 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)	
		
	
			// 총 가격
			totalPrice += parseInt($(".individual_orTotalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(".individual_caCount_input").val());
			// 총 종류
			totalKind += 1;
	
		/* 배송비 결정 */
		if(totalPrice >= 30000){
			deliveryPrice = 0;
		} else if(totalPrice == 0){
			deliveryPrice = 0;
		} else {
			deliveryPrice = 3000;	
		}
		
		finalTotalPrice = totalPrice + deliveryPrice;	
		
		
		/* 값 삽입 */
		// 총 가격
		$(".totalPrice_span").text(totalPrice.toLocaleString());
		// 총 갯수
		$(".goods_kind_div_count").text(totalCount);
		// 총 종류
		$(".goods_kind_div_kind").text(totalKind);
		// 배송비
		$(".delivery_price_span").text(deliveryPrice.toLocaleString());	
		// 최종 가격(총 가격 + 배송비)
		$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());			
		
	}
</script>
	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>

</body>
</html>