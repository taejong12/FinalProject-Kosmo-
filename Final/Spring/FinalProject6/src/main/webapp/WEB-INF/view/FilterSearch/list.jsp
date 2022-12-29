<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 

<style>
/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-top: 30px;
    margin-bottom: 40px;
}
.pageMaker_wrap a{
	color : black;
}
.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.next a, .prev a {
    color: #ccc;
}

/* 현재 페이지 버튼 */
.active{							
	border : 2px solid black;
	font-weight:400;
} 
</style>

</head>

<body>

<h1><a href="/">홈페이지</a><a href="/store/search">상품목록</a></h1>

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


	<!-- 페이지 이동 인터페이스 영역 -->
	<!-- 
     <div class="pageMaker_wrap" >
		<ul class="pageMaker">
	 -->
		
				<!-- 이전 버튼 -->
			<!-- 	
			<c:if test="${pageMaker.prev}">
				<li class="pageMaker_btn prev">
					<a href="${pageMaker.pageStart - 1}">이전</a>
				</li>
			</c:if>
			 -->
			 
			<!-- 페이지 번호 -->
			<!-- 
			<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
					<a href="${num}">${num}</a>
				</li>
			</c:forEach>
			 -->
			
			<!-- 다음 버튼 -->
			<!-- 
			<c:if test="${pageMaker.next}">
				<li class="pageMaker_btn next">
					<a href="${pageMaker.pageEnd + 1 }">다음</a>
				</li>
			</c:if>
			
			
		</ul>
     </div> 
 -->
 
	<div id="messageArea">
      <ul id="message">
      </ul>
   </div>
   <div id="pagingArea">
   	<ul id="paging">
   	</ul>
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
	
	$(document).ready(function(){
		
		$.ajaxSetup({async : false});
		var pageNumValue = 1;
		var amountValue = 10;
		var total;
		var startNum;
		var endNum;
		var realEnd;
		var prev=false;
		var next=false;
		
		
		
		$("#pagingArea").on("click",".pageNumBtn",function(){
			alert("클릭했습니다");
			pageNumValue=parseInt($(this).text());
			alert("현재페이지"+pageNumValue);
			sendList(pageNumValue, amountValue);
			
		})
		
		$("#pagingArea").on("click",".prevBtn", function(){
			pageNumValue = startNum-1;
			alert("현재페이지"+pageNumValue);
			sendList(pageNumValue, amountValue);
			paging(pageNumValue, amountValue);			
		})
	
	
		$("#pagingArea").on("click", ".nextBtn", function(){
			pageNumValue = endNum+1;
			alert("현재페이지"+pageNumValue);
			sendList(pageNumValue, amountValue);
			paging(pageNumValue, amountValue);
		})
		
		
		function sendList(pageNum, amount){
			$.getJSON("/store/search/"+pageNum+"/"+amount+".json",function(msg){
				var str="";
				
				for(var i=0;i<msg.length;i++){
					str+="<li>"+msg[i].alName+"</li>"
					str+="<li>날짜 : "+msg[i].alNum+"</li>"
				}
				$("#message").html(str);
			})
			
		}
		
		function getTotal(){
			$.getJSON("/search/total/.json",function(data){
				total = data;
				alert("토탈"+total);
			})
		}
		
		function paging(pageNum, amount){
			var prevStr="";
			var numStr="";
			var nextStr="";
			
			endNum = Math.ceil(pageNum/10.0)*10;
			startNum = endNum-9;
			alert("스타트"+startNum);
			alert("엔드"+endNum);	
			realEnd = Math.ceil(total*1.0/amount);
			
			if(realEnd < endNum){
				endNum = realEnd;
			}
			
			prev = startNum>1;
			next = endNum<realEnd;
				
			alert("진짜엔드"+realEnd);
			alert("이전버튼"+prev);
			alert("다음버튼"+next);
			
			if(prev){
				var prevStr="<li class='prevBtn'>이전</li>";			
			}
			for(var i=startNum; i<=endNum; i++){			
				numStr+="<li class='pageNumBtn'>"+i+"</li>";
			}
			
			if(next){
				var nextStr="<li class='nextBtn'>다음</li>";			
			}
			
			$("#paging").html(prevStr+numStr+nextStr);
		}
		
	
		
		$("input[name=chk_kiName]").change(function(){
		
				chkArray = [];
			
				$("input[name=chk_kiName]:checked").each(function() {
				
					chkArray.push($(this).val());
			
				});

					getAuthItemList(chkArray);

			});

		$("input[name=chk_danmat]").change(function(){
	
				chkDanmat = [];
			
				$("input[name=chk_danmat]:checked").each(function() {
				
					chkDanmat.push($(this).val());
			
				});

					getAuthItemList(chkDanmat);

			});

		$("input[name=chk_flSinmat]").change(function(){
		
				chkFlSinmat = [];
			
				$("input[name=chk_flSinmat]:checked").each(function() {
				
					chkFlSinmat.push($(this).val());
			
				});
	
					getAuthItemList(chkFlSinmat);
	
			});
		
		$("input[name=chk_flSsunmat]").change(function(){
		
				chkFlSsunmat = [];
			
				$("input[name=chk_flSsunmat]:checked").each(function() {
				
					chkFlSsunmat.push($(this).val());
			
				});

					getAuthItemList(chkFlSsunmat);

			});

		$("input[name=chk_flBody]").change(function(){
		
				chkFlBody = [];
			
				$("input[name=chk_flBody]:checked").each(function() {
				
					chkFlBody.push($(this).val());
				
				});

					getAuthItemList(chkFlBody);

			});
		
		$("input[name=chk_flTansan]").change(function(){
		
				chkFlTansan = [];
			
				$("input[name=chk_flTansan]:checked").each(function() {
				
					chkFlTansan.push($(this).val());
			
				});
	
					getAuthItemList(chkFlTansan);

			});

		$("input[name=chk_alAbv]").change(function(){
	
				chkAlAbv = [];
			
				$("input[name=chk_alAbv]").each(function() {
				
					chkAlAbv.push($(this).val());
			
				});

					getAuthItemList(chkAlAbv);

			});
	
		$("input[name=chk_alAbv1]").change(function(){
	
				chkAlAbv1 = [];
			
				$("input[name=chk_alAbv1]").each(function() {
				
					chkAlAbv1.push($(this).val());
			
				});

					getAuthItemList(chkAlAbv1);
	
			});
	
		$("input[name=chk_alPrice]").change(function(){
		
				chkAlPrice = [];
			
				$("input[name=chk_alPrice]").each(function() {
				
					chkAlPrice.push($(this).val());
			
				});
		
					getAuthItemList(chkAlPrice);

			});
		
		$("input[name=chk_alPrice1]").change(function(){
		
				chkAlPrice1 = [];
			
				$("input[name=chk_alPrice1]").each(function() {
				
					chkAlPrice1.push($(this).val());
			
				});

					getAuthItemList(chkAlPrice1);
		
			});
		
		
			getAuthItemList($("input:checked").val());
		
	});

	
		let moveForm = $("#moveForm");
		
		var pageNum = $("#pageNum").val();
		var amount = $("#amount").val();
		var keyword = $("#keyword").val();
		
		var cri = {"pageNum": pageNum, "amount": amount, "keyword":keyword};
		
		// 페이지 이동 버튼
		$(".pageMaker_btn a").on("click", function(e){
			
		    e.preventDefault();
		    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		    moveForm.submit();
		    
		});
		
	function getAuthItemList(){
		
		
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
					chkAlPrice1 : chkAlPrice1
			},
			traditional : true,
			async: true,
			success : function(data){
				console.log(data);
				var html = '';
				
				for(key in data){
				html += '<tr>';
				html += '<td>'+data[key].alNum+'</td>';
				html += '<td><img src='+data[key].alOpic+' referrerpolicy="no-referrer"></td>';
				html += '<td>'+data[key].kiName+'</td>';
				html += '<td><a href="/alView?alNum='+data[key].alNum+'">'+data[key].alName+'</a></td>';
				html += '<td>'+data[key].alAbv+'%</td>';
				html += '<td>'+data[key].alPrice+'원</td>';
				html += '<td>'+data[key].alStock+'개</td>';
				html += '<td>'+data[key].flDanmat+'</td>';
				html += '<td>'+data[key].flSinmat+'</td>';
				html += '<td>'+data[key].flSsunmat+'</td>';
				html += '<td>'+data[key].flBody+'</td>';
				html += '<td>'+data[key].flTansan+'</td>';
				html += '</tr>';
				}
				
				
				
				$("#itemList").empty().append(html);
				
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