<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>

<script type="text/javascript">
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/store/search");
		form.submit();
	})
	
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/store/updateOne");
		form.submit();
	})
	
</script>
</head>
<body>
	<h2>상세보기</h2>

	<hr>
		주종이름: ${dto.kiName}<br/>
		주류번호: ${dto.alNum}<br/>
		주류사진: ${dto.alOpic }<br/>
		상품명(주류이름): ${dto.alName}<br/>
		도수:${dto.alAbv} %<br/>
		가격: ${dto.alPrice}원<br/>
		재고: ${dto.alStock}개<br/>
		단맛:${dto.flDanmat} <br/>
		신맛:${dto.flSinmat} <br/>
		쓴맛:${dto.flSsunmat} <br/>
		농도:${dto.flBody}<br/>
		탄산:${dto.flTansan} 
	<hr>
	
<button type="button" onclick="location.href='../updateOne?id=${dto.id}';">수정하기</button>
<br/>

<form id="infoForm" action="/store/updateOne" method="get">
	<input type="hidden" id="bno" name="bno" value='<c:out value="${dto.alNum}"/>'>
</form>

<div class="btn-wrap">
	<a class="btn" id="list_btn">목록 페이지</a>
	<a class="btn" id="modify_btn">수정하기</a>	
</div>

<p><a href="/store/search">목록보기</a></p>
</body>
</html>

