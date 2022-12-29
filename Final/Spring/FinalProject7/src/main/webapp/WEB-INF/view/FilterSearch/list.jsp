<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 


</head>

<body>

<h1><a href="/">홈페이지</a> <a href="/store/search">상품목록</a></h1>

<div>
	<h4>주종</h4>
	<input type="checkbox" name="chk_kiName" value="200">일반증류주  
	<input type="checkbox" name="chk_kiName" value="201">증류식소주
	<input type="checkbox" name="chk_kiName" value="202">청주
	<input type="checkbox" name="chk_kiName" value="203">탁주
	<input type="checkbox" name="chk_kiName" value="204">생탁주
	<input type="checkbox" name="chk_kiName" value="205">과실주
	<input type="checkbox" name="chk_kiName" value="206">리큐르
	<input type="checkbox" name="chk_kiName" value="207">약주
	<input type="checkbox" name="chk_kiName" value="208">브랜디
	<input type="checkbox" name="chk_kiName" value="209">기타주류
	
</div>

<div>
	<h4>단맛</h4>
	<input type="checkbox" name="chk_danmat" value="0" >0 
	<input type="checkbox" name="chk_danmat" value="1" >1 
	<input type="checkbox" name="chk_danmat" value="2" >2 
	<input type="checkbox" name="chk_danmat" value="3" >3 
	<input type="checkbox" name="chk_danmat" value="4" >4 
	<input type="checkbox" name="chk_danmat" value="5" >5 
	<input type="checkbox" name="chk_danmat" value="6" >6 
	<input type="checkbox" name="chk_danmat" value="7" >7 
	<input type="checkbox" name="chk_danmat" value="8" >8
	<input type="checkbox" name="chk_danmat" value="9" >9 
	<input type="checkbox" name="chk_danmat" value="10" >10 
</div>

<div>
	<h4>신맛</h4>
	<input type="checkbox" name="chk_flSinmat" value="0" >0 
	<input type="checkbox" name="chk_flSinmat" value="1" >1 
	<input type="checkbox" name="chk_flSinmat" value="2" >2 
	<input type="checkbox" name="chk_flSinmat" value="3" >3 
	<input type="checkbox" name="chk_flSinmat" value="4" >4 
	<input type="checkbox" name="chk_flSinmat" value="5" >5 
	<input type="checkbox" name="chk_flSinmat" value="6" >6 
	<input type="checkbox" name="chk_flSinmat" value="7" >7 
	<input type="checkbox" name="chk_flSinmat" value="8" >8
	<input type="checkbox" name="chk_flSinmat" value="9" >9 
	<input type="checkbox" name="chk_flSinmat" value="10" >10
</div>

<div>
	<h4>쓴맛</h4>
	<input type="checkbox" name="chk_flSsunmat" value="0" >0 
	<input type="checkbox" name="chk_flSsunmat" value="1" >1 
	<input type="checkbox" name="chk_flSsunmat" value="2" >2 
	<input type="checkbox" name="chk_flSsunmat" value="3" >3 
	<input type="checkbox" name="chk_flSsunmat" value="4" >4 
	<input type="checkbox" name="chk_flSsunmat" value="5" >5 
	<input type="checkbox" name="chk_flSsunmat" value="6" >6 
	<input type="checkbox" name="chk_flSsunmat" value="7" >7 
	<input type="checkbox" name="chk_flSsunmat" value="8" >8
	<input type="checkbox" name="chk_flSsunmat" value="9" >9 
	<input type="checkbox" name="chk_flSsunmat" value="10" >10
</div>

<div>
	<h4>농도</h4>
	<input type="checkbox" name="chk_flBody" value="0" >0 
	<input type="checkbox" name="chk_flBody" value="1" >1 
	<input type="checkbox" name="chk_flBody" value="2" >2 
	<input type="checkbox" name="chk_flBody" value="3" >3 
	<input type="checkbox" name="chk_flBody" value="4" >4 
	<input type="checkbox" name="chk_flBody" value="5" >5 
	<input type="checkbox" name="chk_flBody" value="6" >6 
	<input type="checkbox" name="chk_flBody" value="7" >7 
	<input type="checkbox" name="chk_flBody" value="8" >8
	<input type="checkbox" name="chk_flBody" value="9" >9 
	<input type="checkbox" name="chk_flBody" value="10" >10
</div>

<div>
	<h4>탄산</h4>
	<input type="checkbox" name="chk_flTansan" value="0">무  
	<input type="checkbox" name="chk_flTansan" value="1">유
</div>

	<div>
		<h4>도수</h4>
		<input type="number" name="chk_alAbv" placeholder="최저도수">%~<input type="number" name="chk_alAbv1" placeholder="최고도수">%	
	</div>
	
	<div>
		<h4>가격</h4>
		<input type="number" name="chk_alPrice" placeholder="최저가격">원~<input type="number" name="chk_alPrice1" placeholder="최고가격">원
	</div>
		
<hr/>

 <div id="paging">
           
 </div>

<table width="950" cellpadding="0" cellspacing="0" border="1">
	<thead>
		<tr>
			<th>주류번호</th>
			<th>주류사진</th>
			<th>주종이름</th>
			<th>주류이름</th>
			<th>도수</th>
			<th>가격</th>
			<th>재고</th>
			<th>단맛</th>
			<th>신맛</th>
			<th>쓴맛</th>
			<th>농도</th>
			<th>탄산</th>
		</tr>
	</thead>
	<tbody id="itemList">

	</tbody>

</table>
     
<script type="text/javascript">

	var chkArray = new Array;
	var chkDanmat = new Array;
	var chkFlSinmat = new Array;
	var chkFlSsunmat = new Array;
	var chkFlBody = new Array;
	var chkFlTansan = new Array;
	var chkAlAbv = new Array;
	var chkAlAbv1 = new Array;
	var chkAlPrice = new Array;
	var chkAlPrice1 = new Array;
	
	var pageNum = parseInt($("#pageNum").val());
	var amount = parseInt($("#amount").val());
	var keyword = $("#keyword").val();

	$(document).ready(function(){

		// 페이지 이동 버튼
		$(".pageMaker_btn").on("click", function(e){
			
		    e.preventDefault(); 
		    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		    moveForm.submit(); 
		    
		});
		
		$("input[name=chk_kiName]").change(function(){
		
				chkArray = [];
			
				$("input[name=chk_kiName]:checked").each(function() {
				
					chkArray.push($(this).val());
			
				});

					getAuthItemList(0, chkArray);

		});

		$("input[name=chk_danmat]").change(function(){
	
				chkDanmat = [];
			
				$("input[name=chk_danmat]:checked").each(function() {
				
					chkDanmat.push($(this).val());
			
				});

					getAuthItemList(0, chkDanmat);

			});

		$("input[name=chk_flSinmat]").change(function(){
		
				chkFlSinmat = [];
			
				$("input[name=chk_flSinmat]:checked").each(function() {
				
					chkFlSinmat.push($(this).val());
			
				});
	
					getAuthItemList(0, chkFlSinmat);
	
			});
		
		$("input[name=chk_flSsunmat]").change(function(){
		
				chkFlSsunmat = [];
			
				$("input[name=chk_flSsunmat]:checked").each(function() {
				
					chkFlSsunmat.push($(this).val());
			
				});

				getAuthItemList(0, chkFlSsunmat);

		});

		$("input[name=chk_flBody]").change(function(){
		
				chkFlBody = [];
			
				$("input[name=chk_flBody]:checked").each(function() {
				
					chkFlBody.push($(this).val());
				
				});

					getAuthItemList(0, chkFlBody);

			});
		
		$("input[name=chk_flTansan]").change(function(){
		
				chkFlTansan = [];
			
				$("input[name=chk_flTansan]:checked").each(function() {
				
					chkFlTansan.push($(this).val());
			
				});
	
					getAuthItemList(0, chkFlTansan);

			});

		$("input[name=chk_alAbv]").change(function(){
	
				chkAlAbv = [];
			
				$("input[name=chk_alAbv]").each(function() {
				
					chkAlAbv.push($(this).val());
			
				});

					getAuthItemList(0, chkAlAbv);

			});
	
		$("input[name=chk_alAbv1]").change(function(){
	
				chkAlAbv1 = [];
			
				$("input[name=chk_alAbv1]").each(function() {
				
					chkAlAbv1.push($(this).val());
			
				});

					getAuthItemList(0, chkAlAbv1);
	
			});
	
		$("input[name=chk_alPrice]").change(function(){
		
				chkAlPrice = [];
			
				$("input[name=chk_alPrice]").each(function() {
				
					chkAlPrice.push($(this).val());
			
				});
		
					getAuthItemList(0, chkAlPrice);

			});
		
		$("input[name=chk_alPrice1]").change(function(){
		
				chkAlPrice1 = [];
			
				$("input[name=chk_alPrice1]").each(function() {
				
					chkAlPrice1.push($(this).val());
			
				});

					getAuthItemList(0, chkAlPrice1);
		
			});
		
			getAuthItemList($("input:checked").val());
			
	});

	
		
	function getAuthItemList(pageNum){

		if(pageNum === pageNum){
			
			if(pageNum <= 0 || isNaN(pageNum) == true) {
				pageNum = 1;
			} else {
				pageNum;
			}
		}
		
		if(amount <= 0 || isNaN(amount) == true) {
			amount=10;
		} else {
			amount;
		}

	$.ajax({
			
			url : "/store/chk_value",
			data : { chkArray : chkArray,
					chkDanmat : chkDanmat,
					chkFlSinmat : chkFlSinmat,
					chkFlSsunmat : chkFlSsunmat,
					chkFlBody : chkFlBody,
					chkFlTansan : chkFlTansan,
					chkAlAbv : chkAlAbv,
					chkAlPrice : chkAlPrice,
					chkAlAbv1 : chkAlAbv1,
					chkAlPrice1 : chkAlPrice1,
					pageNum : pageNum,
					amount : amount,
					keyword : keyword
			},
			traditional : true,
			async: true,
			success : function(data){

				var pageStart = data.pageMaker.pageStart;
				
				var pagePrev = data.pageMaker.prev;
				
				var pageNum = data.pageMaker.cri.pageNum;
				
				var pageNext = data.pageMaker.next;
				
				var pageEnd = data.pageMaker.pageEnd;
				
				var amount = data.pageMaker.cri.amount;
				
				var keyword = data.pageMaker.cri.keyword;
				
				var html = '';
				var page = '';

				<!-- 페이지 이동 인터페이스 영역 -->
			    page += '<div class="pageMaker_wrap" >';
			    page +=	'<ul class="pageMaker">';
	
				<!-- 이전 버튼 -->
				if(pagePrev == true) {
					page += '<button onclick="getAuthItemList('+(pageStart-1)+')">이전</button> ';
				}

				<!-- 페이지 번호 -->
				for(let i=pageStart; i<=pageEnd; i++){
					if(i)
					page += '<button onclick="getAuthItemList('+i+')">'+i+'</button> ';
				}
			
		
				<!-- 다음 버튼 -->
				if(pageNext == true) {
					page += '<button onclick="getAuthItemList('+(pageEnd+1)+')">다음</button>';
				}

				page += '</ul>';
				page += '</div>';
				
				for(key in data.result){
				html += '<tr>';
				html += '<td>'+data.result[key].alNum+'</td>';
				html += '<td><img src='+data.result[key].alOpic+' referrerpolicy="no-referrer"></td>';
				html += '<td>'+data.result[key].kiName+'</td>';
				html += '<td><a href="/alView?alNum='+data.result[key].alNum+'">'+data.result[key].alName+'</a></td>';
				html += '<td>'+data.result[key].alAbv+'%</td>';
				html += '<td>'+data.result[key].alPrice+'원</td>';
				html += '<td>'+data.result[key].alStock+'개</td>';
				html += '<td>'+data.result[key].flDanmat+'</td>';
				html += '<td>'+data.result[key].flSinmat+'</td>';
				html += '<td>'+data.result[key].flSsunmat+'</td>';
				html += '<td>'+data.result[key].flBody+'</td>';
				html += '<td>'+data.result[key].flTansan+'</td>';
				html += '</tr>';
				
				}

				$("#itemList").empty().append(html);
				$("#paging").empty().append(page);
				
				
			},
            error : function() {
                alert('게시판 조회 중 오류가 발생했습니다.');
                location.href='/store/search';
            }
			
		})
		
	}


</script>



</body>

</html>