<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style type="text/css">
 
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

/* 검색 영역 */
.search_wrap{
	margin-top:15px;
}
.search_input{
    position: relative;
    text-align:center;	
}
.search_input input[name='keyword']{
	padding: 4px 10px;
    font-size: 15px;
    height: 20px;
    line-height: 20px;
}
.search_btn{
	height: 32px;
    width: 80px;
    font-weight: 600;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    margin-left: 15px;
    background-color: #c3daf7;
}

 
</style>

</head>
<body>
	
	
	
	<h1><a href="/">홈페이지</a><a href="/store/search">상품목록</a></h1>

	<div class="cate_wrap">
		<span>대분류</span>
		<select class="cate1">
			<option selected value="none">선택</option>
		</select>
	</div>
	<div class="cate_wrap">
		<span>중분류</span>
		<select class="cate2">
			<option selected value="none">선택</option>
		</select>
	</div>
	<div class="cate_wrap">
		<span>소분류</span>
		<select class="cate3" name="cateCode">
			<option selected value="none">선택</option>
		</select>
	</div> 


	<!-- 게시물 O -->
	<c:if test="${listCheck != 'empty' }">
			
		<table class="table">
			<thead>
				<tr>
					<th>주종이름</th>
					<th>주류사진</th>
					<th>주류이름</th>
					<th>도수(%)</th>
					<th>가격(원)</th>
					<th>재고(개)</th>
					<th>단맛</th>
					<th>신맛</th>
					<th>쓴맛</th>
					<th>농도</th>
					<th>탄산</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="list">
	           <tr>
	               <td><c:out value="${list.kiName}"/></td>
	               <td><img src="${list.alOpic}" referrerpolicy="no-referrer"></td>
	               <td><a href='/alView?alNum=${list.alNum}'>${list.alName}</a></td>
	               <td><c:out value="${list.alAbv}"/>%</td>
	               <td><c:out value="${list.alPrice}"/>원</td>
	               <td><c:out value="${list.alStock}"/>개</td>
	               <td><c:out value="${list.flDanmat}"/></td>
	               <td><c:out value="${list.flSinmat}"/></td>
	               <td><c:out value="${list.flSsunmat}"/></td>
	               <td><c:out value="${list.flBody}"/></td>
	               <td><c:out value="${list.flTansan}"/></td>
	           </tr>
	       	</c:forEach>
			</tbody>
		</table>
	</c:if>
	
	<!-- 게시물 X -->
	<c:if test="${listCheck == 'empty'}">
		<div class="table_empty">
			등록된 게시물이 없습니다.
		</div>
	</c:if>  
	
	<!-- 검색 영역 -->
	<div class="search_wrap">
		<form id="searchForm" action="/store/search" method="get">   
			<div class="search_input">
				<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
				<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
				<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
				<button class='btn search_btn'>검 색</button>
			</div>
		</form>
	</div>
	
	<!-- 
	 <div class="search_wrap">
        <div class="search_area">
        	<select name="type">
                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>술이름</option>
            </select>
            <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
            <button>검색</button>
        </div>
    </div>    
	 -->
	
	
	 <!-- 페이지 이동 인터페이스 영역 -->
     <div class="pageMaker_wrap" >
		<ul class="pageMaker">
		
				<!-- 이전 버튼 -->
			<c:if test="${pageMaker.prev}">
				<li class="pageMaker_btn prev">
					<a href="${pageMaker.pageStart - 1}">이전</a>
				</li>
			</c:if>
			
			<!-- 페이지 번호 -->
			<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
					<a href="${num}">${num}</a>
				</li>
			</c:forEach>
			
			<!-- 다음 버튼 -->
			<c:if test="${pageMaker.next}">
				<li class="pageMaker_btn next">
					<a href="${pageMaker.pageEnd + 1 }">다음</a>
				</li>
			</c:if>
			
		</ul>
     </div>
 
	<form id="moveForm" action="/store/search" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }"> 
		<input type="hidden" name="type" value="${pageMaker.cri.type }">   
	</form>
 
<script>

let moveForm = $("#moveForm");

// 페이지 이동 버튼
$(".pageMaker_btn a").on("click", function(e){
	
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.submit();
    
});

let searchForm = $('#searchForm');

// 검색 버튼
$("#searchForm button").on("click", function(e){
		
	e.preventDefault();
	
	/* 검색 키워드 유효성 검사 */
	if(!searchForm.find("input[name='keyword']").val()){
		alert("키워드를 입력하십시오");
		return false;
	}
	searchForm.find("input[name='pageNum']").val("1");
	searchForm.submit();
		
});

/*
$(document).ready(function(){
	console.log('${cateList}');
});
 */
 
 	/* 카테고리 */
	let cateList = JSON.parse('${cateList}');
 	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate3Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	
	let cateSelect1 = $(".cate1");		
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");
	
	/* 카테고리 배열 초기화 메서드 */
	function makeCateArray(obj,array,cateList, tier){
		for(let i = 0; i < cateList.length; i++){
			if(cateList[i].tier === tier){
				obj = new Object();
				
				obj.cateName = cateList[i].cateName;
				obj.cateCode = cateList[i].cateCode;
				obj.cateParent = cateList[i].cateParent;
				
				array.push(obj);				
				
			}
		}
	}	
	
	/*
	$(document).ready(function(){
		console.log(cate1Array);
	});
	*/

	/* 배열 초기화 */
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	makeCateArray(cate3Obj,cate3Array,cateList,3);
	
	$(document).ready(function(){
		console.log(cate1Array);
		console.log(cate2Array);
		console.log(cate3Array);
	});
	
	/* 대분류 <option> 태그 */
	for(let i = 0; i < cate1Array.length; i++){
		cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
	}
	
	
	/* 중분류 <option> 태그 */
	$(cateSelect1).on("change",function(){
		
		let selectVal1 = $(this).find("option:selected").val();	
		
		cateSelect2.children().remove();
		cateSelect3.children().remove();
		
		cateSelect2.append("<option value='none'>선택</option>");
		cateSelect3.append("<option value='none'>선택</option>");
		
		for(let i = 0; i < cate2Array.length; i++){
			if(selectVal1 === cate2Array[i].cateParent){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");	
			}
		}

	});
	
	/* 소분류 <option>태그 */
	$(cateSelect2).on("change",function(){
		
		let selectVal2 = $(this).find("option:selected").val();
		
		cateSelect3.children().remove();
		
		cateSelect3.append("<option value='none'>선택</option>");		
		
		for(let i = 0; i < cate3Array.length; i++){
			if(selectVal2 === cate3Array[i].cateParent){
				cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");	
			}
		}
		
	});	
	

</script>
 
</body>
</html>