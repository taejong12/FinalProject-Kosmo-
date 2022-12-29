<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/link.jsp"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/layout/navbar.css">
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/store/alDetailView.css">
<style>
/*  div{
text-align: center;
}
.inline{
display: inline-block;
position: relative;
float:right;

}  */
</style>

<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1f6ddef13261dd1fb59fb7aad86b05be"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
	crossorigin="anonymous">
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: #fff">

	<script type="text/javascript">

var sell_price; 
var amount; 
 
function init () { 
	console.log("init 함수 실행");
    sell_price = document.form.sell_price.value; 
    amount = document.form.amount.value; 
    document.form.sum.value = sell_price; 
    console.log(amount);
    console.log(sell_price);        
    change(); 
} 
 
function add () { 
	console.log("add 함수 실행");
    hm = document.form.amount; 
    sell_price = document.form.sell_price.value;
    hm.value ++ ; 
    console.log("alDTO.alPrice은"+document.form.sell_price.value);
    console.log("alDTO alPrice는 "+"{alDTO.alPrice}");
    var sum_ = parseInt(hm.value) * sell_price;
	console.log("hm.value는 "+parseInt(hm.value));
	console.log("sell_price는"+parseInt(sell_price));
	if (isNaN(sum_)) sum_ = 0;
  document.getElementById("my_sum").value=sum_;
} 
 
function del() { 
	console.log("del 함수 실행");
    hm = document.form.amount; 
    sell_price = document.form.sell_price.value;
        if (hm.value > 0) { 
        	hm.value -- ; 
        	
            var sum_ = parseInt(hm.value) * sell_price;
        	console.log(parseInt(hm.value));
        	console.log(parseInt(sell_price));
        	if (isNaN(sum_)) sum_ = 0;
          document.getElementById("my_sum").value=sum_;
        } 
} 
 
function change(obj){ 
	obj.value = obj.value.replace(/[^0-9]/g, "");
	console.log("change 함수 실행");
	hm = document.form.amount.value; 
    sell_price = document.form.sell_price.value;
    console.log("change의 hm은 "+hm);
    console.log("change의 sell_price은 "+sell_price);
        if (hm.value < 0) { 
            hm.value = 0; }
    var sum_ = parseInt(hm) * sell_price; 
    console.log("change의 sum_은 "+ sum_);
    if (isNaN(sum_)) sum_ = 0;
  document.getElementById("my_sum").value=sum_; 

} 
function onlyNumber(obj) {
    obj.value = obj.value.replace(/[^0-9]/g, "");
  }


function checkNumber(event) {
	  if(event.key >= 0 && event.key <= 9) {
	    return true;
	  }
	  
	  return false;
	}

window.addEventListener("keydown", e => {
	  const key = document.getElementById(e.key);
	  if (key) change();
	});
window.addEventListener("keyup", e => {
	  const key = document.getElementById(e.key);
	  if (key) change();
	});


var sweetS ="${alDTO.flDanmat}"; 
var sinmatS ="${alDTO.flSinmat}"; 
var ssunmatS ="${alDTO.flSsunmat}"; 
var bodyS ="${alDTO.flBody}";

console.log("단맛은 "+sweetS);
console.log("신맛은 "+sinmatS);
console.log("쓴맛은 "+ssunmatS);
console.log("농도는 "+bodyS);

var arrTaste = [sweetS,sinmatS,ssunmatS,bodyS];
/* 가장 큰 값을 찾고 그 값을 가진 맛을 찾아서 출력한다. 향상된 for문 */
 
var maxTaste = Math.max.apply(null,arrTaste);
/* var found[] = arrTaste.findIndex(e=> e==maxTaste);
arrTaste */

console.log("가장 큰 값은 "+maxTaste);
let found = arrTaste.findIndex(e => e == maxTaste);
 
var arrT=[];
var iOne=0
var iTwo=0
var iThree=0
var iFour=0
window.onload = function tastePrint(){   
for(tanum in arrTaste){
      if(maxTaste==arrTaste[tanum]){
         console.log("최고로 높은 인덱스는"+tanum);
         if(tanum==0){
            console.log("단맛 출력");               
               console.log("단맛 출력2");
               iOne=1;
               document.getElementById("imgSw1").src="${fdDTO.sweet1}";
               document.getElementById("imgSw1").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgSw2").src="${fdDTO.sweet2}";
               document.getElementById("imgSw2").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgSw3").src="${fdDTO.sweet3}";
               document.getElementById("imgSw3").setAttribute("style","width: 200px;height:200px;display: inline-block;");
         }if(tanum==1){
            console.log("짠맛 출력");
               iTwo=1;
               document.getElementById("imgSi1").src="${fdDTO.salty1}";
               document.getElementById("imgSi1").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgSi2").src="${fdDTO.salty2}";
               document.getElementById("imgSi2").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgSi3").src="${fdDTO.salty3}";
               document.getElementById("imgSi3").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               
         }if(tanum==2){
            console.log("신맛 출력")
               iThree=1;
               document.getElementById("imgSs1").src="${fdDTO.sour1}";
               document.getElementById("imgSs1").setAttribute("style","width: 200px;height:200px; display: inline-block;");
               document.getElementById("imgSs2").src="${fdDTO.sour2}";
               document.getElementById("imgSs2").setAttribute("style","width: 200px;height:200px; display: inline-block;");
               document.getElementById("imgSs3").src="${fdDTO.sour3}";
               document.getElementById("imgSs3").setAttribute("style","width: 200px;height:200px; display: inline-block;");
               
         }if(tanum==3){
            console.log("쓴맛 출력");
               iFour=1;
               document.getElementById("imgBo1").src="${fdDTO.density1}";
               document.getElementById("imgBo1").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgBo2").src="${fdDTO.density2}";
               document.getElementById("imgBo2").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               document.getElementById("imgBo3").src="${fdDTO.density3}";
               document.getElementById("imgBo3").setAttribute("style","width: 200px;height:200px;display: inline-block;");
               
         }
      }
   }
   if(iOne==0){      
      document.getElementsByClassName("imgOne")[0].setAttribute("style","display:none;");
      document.getElementsByClassName("imgOne")[1].setAttribute("style","display:none;");
      document.getElementsByClassName("imgOne")[2].setAttribute("style","display:none;");
   }
   if(iTwo==0){
      document.getElementsByClassName("imgTwo")[0].setAttribute("style","display:none;");
      document.getElementsByClassName("imgTwo")[1].setAttribute("style","display:none;");
      document.getElementsByClassName("imgTwo")[2].setAttribute("style","display:none;");
   }
   if(iThree==0){
      document.getElementsByClassName("imgThree")[0].setAttribute("style","display:none;");
      document.getElementsByClassName("imgThree")[1].setAttribute("style","display:none;");
      document.getElementsByClassName("imgThree")[2].setAttribute("style","display:none;");
   }
   if(iFour==0){
      document.getElementsByClassName("imgFour")[0].setAttribute("style","display:none;");
      document.getElementsByClassName("imgFour")[1].setAttribute("style","display:none;");
      document.getElementsByClassName("imgFour")[2].setAttribute("style","display:none;");
   }
   
}
/* arrT 배열에 tanum을 각각 추가하고 arrTaste의 tanum에 해당하는 인덱스 그림을 출력한다.*/

        window.document.oncontextmenu = new Function("return false");
        window.document.onselectstart = new Function("return false");
        window.document.ondragstart = new Function("return false");
        
</script>
	<div class="item_photo_info_sec">
		<div class="item_info">
			<div>
				<div
					style="display: flex; justify-content: space-between; align-items: center;">
					<div style="border: 1px solid;">
						<img src='${alDTO.alOpic }' referrerpolicy="no-referrer"
							style="width: 350px; height: 500px; object-fit: contain;" />
					</div>
					<div style="display: inline-block; margin-left: 15%;">
						<b style="font-size: 50px;">${alDTO.alName}</b>
						<hr>
						<div class="iteminfo" style="font-size: 20px;">
							주종 : <span> ${alDTO.kiName }</span><br> 도수 :<span>
								${alDTO.alAbv } %</span><br> 용량 :<span>${alDTO.alVolume }
								ml</span><br> 구매제한 :<span>최소 1개</span><br> 상품코드 :<span>${alDTO.alNum }</span><br>
							제조사 :<span>${alDTO.maName }</span><br> 재료 :<span>${alDTO.alJaeryo}</span><br>
							배달비 :<span>주문시결제(선결제)</span>
						</div>
						<hr>
						<b style="font-size: 40px">판매가격 :<span> ${alDTO.alPrice }원</span></b>
					</div>
				</div>
				<c:choose>
					<c:when test="${alDTO.alNum eq '10281'}">
						<%@ include file="/WEB-INF/view/detailinclude/backja.jsp"%>
					</c:when>
					<c:when test="${alDTO.alNum eq '10360'}">
						<%@ include file="/WEB-INF/view/detailinclude/donghak.jsp"%>
					</c:when>
					<c:when test="${alDTO.alNum eq '10075'}">
						<%@ include file="/WEB-INF/view/detailinclude/yeopo.jsp"%>
					</c:when>
				</c:choose>
			</div>
		</div>
		<div>
			<div class="detailright">
				<form action="/orderForm" name="form" method="post">
					<input type="hidden" name="userName"
						value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}" />
					<input type="hidden" name="alOpic" value="${alDTO.alOpic}" /> <input
						type="hidden" name="alNum" value="${alDTO.alNum}" />
					<div>
						<b>상품명 :</b><br> <input
							class="alname input-group input-group-sm mb-3" name="alName"
							type=text value="${alDTO.alName}" readonly></input> <input
							type=hidden ondragstart='return false' name="sell_price"
							value="${alDTO.alPrice}">
					</div>
					<div>
						<b>수량 :</b> <input class="alname input-group input-group-sm mb-3"
							style="width: 120px;" type="text" name="orTotalAmount"
							id="amount" value="0" size="3" onkeydown="change(this);"
							onkeyup="change(this);"> <input
							class="volumebtn btn btn-light" type="button" value=" + "
							onclick="add();"> <input class="volumebtn btn btn-light"
							type="button" value=" - " onclick="del();">
					</div>
					<input type="hidden" name="sum" size="11" readonly> <br />
					<div>
						<b>총 금액 : </b><input type="number" id="my_sum" name="orTotalPrice"
							value="0" readonly />원
					</div>
					<br />
					<div
						style="border-radius: 10px; background-color: white; color: #827f7d;">
						<div style="font-size: 12px; margin-left: 2%;">
							<em>(전국택배)3,000원</em>
						</div>
						<div style="font-size: 15px; margin-left: 2%;">
							<strong>30,000원 이상 구매 시 배송비 무료!</strong>
						</div>
					</div>
					<div>
						<div id="btn_cart1">
							<c:choose>
								<c:when
									test="${not empty SPRING_SECURITY_CONTEXT.authentication.principal.user.username }">
									<button type="button" class="btn_cart btn btn-warning">장바구니
										추가</button>

									<input class="btn btn-warning" id="order-btn" type="submit"
										value="결제하기" />

								</c:when>
								<c:otherwise>
									<button class="btn btn-warning btnlogin" type="button"
										onclick="location.href='/login';">로그인하기</button>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</form>
			</div>
			<br> <br>

			<div id="Chart">
				<canvas id="marksChart"></canvas>
			</div>
			<script type="text/javascript">
var marksCanvas = document.getElementById("marksChart");

var marksData = {
  labels: ["단맛", "쓴맛", "신맛", "탄산", "농도"],
  datasets: [{
    label: "맛",
    backgroundColor: "transparent",
    borderColor: "rgba(200,0,0,0.6)",
    fill: false,
    radius: 6,
    pointRadius: 6,
    pointBorderWidth: 3,
    pointBackgroundColor: "orange",
    pointBorderColor: "rgba(200,0,0,0.6)",
    pointHoverRadius: 10,
    data: [${alDTO.flDanmat}, ${alDTO.flSsunmat}, ${alDTO.flSinmat}, ${alDTO.flTansan}, ${alDTO.flBody}]
  }]
};

var chartOptions = {
  scale: {
    gridLines: {
      color: "black",
      lineWidth: 0.1
    },
    angleLines: {
      display: false
    },
    ticks: {
      beginAtZero: false,
      min: 0,
      max: 10,
      stepSize: 2
    },
    pointLabels: {
      fontSize: 15,
      fontColor: "black"
    }
  },
  legend: {
    position: 'left'
  }
};

var radarChart = new Chart(marksCanvas, {
  type: 'radar',
  data: marksData,
  options: chartOptions
});
        </script>

			<h2 id="snacktitle">추천안주</h2>
			<div id="snack">
				<div>
					<img class=imgOne id="imgSw1" src="" title="한과" /> <img
						class=imgOne id="imgSw2" src="" title="과일" /> <img class=imgOne
						id="imgSw3" src="" title="갈비" />
				</div>
				<div>
					<img class=imgTwo id="imgSi1" src="" title="찌개류" /> <img
						class=imgTwo id="imgSi2" src="" title="꼬치류" /> <img class=imgTwo
						id="imgSi3" src="" title="통조림" />
				</div>
				<div>
					<img class=imgThree id="imgSs1" src="" title="회" /> <img
						class=imgThree id="imgSs2" src="" title="봉골레 스파게티" /> <img
						class=imgThree id="imgSs3" src="" title="전" />
				</div>
				<div>
					<img class=imgFour id="imgBo1" src="" title="과일" /> <img
						class=imgFour id="imgBo2" src="" title="육포" /> <img class=imgFour
						id="imgBo3" src="" title="건어물" />
				</div>
			</div>
			<hr>
		</div>
		<div
			style="display: flex; align-items: flex-start; flex-direction: row-reverse;">
			<div id="map" style="width: 600px; height: 350px;"></div>
		</div>

		<div id="detailmain">
			<hr>
			<div id="detail">
				<div class="postbox">

					<img id="box" src="img/box.jpg" />

				</div>
				<hr>
				<div id="delivery">
					<h3>배송안내</h3>
					<ul>
						<li>배송비 : 기본 배송료는 3,000원 입니다. (도서,산간,오지 일부지역은 배송비가 추가될 수
							있습니다) 30,000원 이상 구매시 무료배송입니다.</li>
						<li>오후 1시까지 결제확인된 주문은 당일 출고되고 3만원 이상 주문은 무료 배송, 3만원 미만은
							3,000원의 배송비가 추가됩니다.</li>
						<li>일부 상품, 제주도를 포함한 도서산간 지역은 추가 배송비 입금요청이 있을 수 있습니다.</li>
					</ul>
				</div>
				<hr>
				<div id="exchange">
					<h3>교환 및 반품안내</h3>
					<ul>
						<li>상품 택(tag)제거 또는 개봉으로 상품 가치 훼손 시에는 상품수령후 7일 이내라도 교환 및 반품이
							불가능합니다.</li>
						<li>저단가 상품, 일부 특가 상품은 고객 변심에 의한 교환, 반품은 고객께서 배송비를 부담하셔야
							합니다(제품의 하자,배송오류는 제외)</li>
						<li>일부 상품은 신모델 출시, 가격 변동 등 제조사 사정으로 가격이 변동될 수 있습니다.한 교환, 반품이
							불가능할 수 있사오니, 각 상품의 상품상세정보를 꼭 참조하십시오.</li>
					</ul>
					<hr>
					<h3>환불안내</h3>
					<ul>
						<li>상품 청약철회 가능기간은 상품 수령일로 부터 7일 이내 입니다.</li>
					</ul>
					<hr>
					<h3>AS안내</h3>
					<ul>
						<li>상품 수령일로부터 7일 이내 반품 / 환불 가능합니다.</li>
						<li>변심 반품의 경우 왕복배송비를 차감한 금액이 환불되며, 제품 및 포장 상태가 재판매 가능하여야 합니다.</li>
						<li>동일상품 또는 동일상품 내 추가금액이 없는 옵션만 교환가능합니다.</li>
						<li>상품 불량인 경우는 배송비를 포함한 전액이 환불됩니다.</li>
						<li>출고 이후 환불요청 시 상품 회수 후 처리됩니다.</li>
						<li>특정브랜드의 상품설명에 별도로 기입된 교환 / 환불 / AS 기준이 우선합니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script>
	var maLati ="${alDTO.maLati}"; 
	var maLong ="${alDTO.maLong}";
	var maName ="${alDTO.maName}";
	var maAddr ="${alDTO.maAddr}";
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(maLati, maLong), // 지도의 중심좌표
	        level: 5, // 지도의 확대 레벨
	        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
	    }; 
	// 지도를 생성한다 
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	// 지도 타입 변경 컨트롤을 생성한다
	var mapTypeControl = new kakao.maps.MapTypeControl();
	// 지도의 상단 우측에 지도 타입 변경 컨트롤을 추가한다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);	
	// 지도에 확대 축소 컨트롤을 생성한다
	var zoomControl = new kakao.maps.ZoomControl();
	// 지도의 우측에 확대 축소 컨트롤을 추가한다
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	// 지도에 마커를 생성하고 표시한다
	var marker = new kakao.maps.Marker({
	    position: new kakao.maps.LatLng(maLati, maLong), // 마커의 좌표
	    map: map // 마커를 표시할 지도 객체
	});
	// 마커 위에 표시할 인포윈도우를 생성한다
	var infowindow = new kakao.maps.InfoWindow({
	    content : '<div style="padding:2px;"><div>${alDTO.maName}</div><div style="font-size: 10px">${alDTO.maAddr}</div></div>' // 인포윈도우에 표시할 내용
	});
	// 인포윈도우를 지도에 표시한다
	infowindow.open(map, marker);
</script>

	<script>      
const form ={
    	id : '${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}',
    	alNum : '${alDTO.alNum}',
    	caCount : ''
}

		$("#order-btn").on("click", function(e){
    		form.caCount = $("#amount").val();
    		let price = $("#my_sum").val();
    		
			if(form.caCount == null || form.caCount == "" || form.caCount <=0){
    			alert('수량을 선택해주세요.');
    			return false;
    		} else if(price == null || price == "" || price <= 0){
    			alert('가격을 입력해주세요.');
    			return false;
    		} else{
    			
				form.submit();
    		}
		}
)

    	$(".btn_cart").on("click", function(e){
    		
    		form.caCount = $("#amount").val();
    		let price = $("#my_sum").val();
    		console.log(form.id);
    		console.log(form.alNum);
    		console.log(form.caCount);
    		
    		if(form.caCount == null || form.caCount == "" || form.caCount <=0){
    			alert('수량을 선택해주세요.');
    			return false;
    		} else if(price == null || price == "" || price <= 0){
    			alert('가격을 입력해주세요.');
    			return false;
    		}
    		
    		$.ajax({
    			url: '/cart/add',
    			type: 'POST',
    			data: form,
    			success: function(result){	
    				cartAlert(result);
    			}
    		})
    	});
    	
    	function cartAlert(result){
    		if(result == '0'){
    			alert("장바구니에 추가를 하지 못하였습니다.");
    		} else if(result == '1'){
    			alert("장바구니에 추가되었습니다.");
    		} else if(result == '2'){
    			alert("장바구니에 이미 추가되어져 있습니다.");
    		} else if(result == '5'){
    			alert("로그인이 필요합니다.");	
    		}
    	}
</script>
	<hr />
	<div id="review">
		<c:if test="${empty dto}">
		등록된 상품평이 없습니다.
	</c:if>
		<c:if test="${!empty dto}">
			<label>상품평</label>
			<table id="reviewtable">
				<tr>
					<td>상품 이름</td>
					<td>별점</td>
					<td>제목</td>
					<td>내용</td>
					<td>작성자</td>
					<td>작성날짜</td>
				</tr>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td>${dto.alName}</td>
						<td class="rating_star"><c:choose>
								<c:when test="${dto.star==5}">
									<label for="5-stars" class="star">★★★★★</label>
								</c:when>
								<c:when test="${dto.star==4}">
									<label for="4-stars" class="star">★★★★</label>
								</c:when>
								<c:when test="${dto.star==3}">
									<label for="3-stars" class="star">★★★</label>
								</c:when>
								<c:when test="${dto.star==2}">
									<label for="2-stars" class="star">★★</label>
								</c:when>
								<c:otherwise>
									<label for="1-stars" class="star">★</label>
								</c:otherwise>
							</c:choose></td>
						<td><a href="/reviewDetail?reNum=${dto.reNum}">${dto.title}
						</a></td>
						<td>${dto.content}</td>
						<td>${dto.userName}</td>
						<td>${dto.reDate}</td>
					</tr>

				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</html>