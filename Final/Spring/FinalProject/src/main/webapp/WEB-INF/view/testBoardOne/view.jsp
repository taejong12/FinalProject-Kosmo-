<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
상세보기<br/>
	<hr>
		게시판 번호: ${dto.boardNum}<br/>
		주류사진: ${dt.alOpic }<br/>
		상품명(주류이름): ${dto.alName}<br/>
		상품설명: ${dto.itemDetail}<br/>
		판매상태: ${dto.itemStatus}<br/>
		가격: ${dto.alPrice}원<br/>
		재고: ${dto.alStock}개<br/>
		상품등록일: ${dto.itemDate}<br/>
		주종이름:  ${dto.kiName}<br/>
		도수:${dto.alAbv} %<br/>
		용량: ${dto.alVolume}<br/>
		재료:${dto.alJaeryo} <br/>
		단맛:${dto.flDanmat} 
		쓴맛:${dto.flSsunmat} 
		신맛:${dto.flSinmat} 
		탄산:${dto.flTansan} 
		농도:${dto.flBody}
	<hr>
<button type="button" onclick="location.href='../updateOne?id=${dto.id}';">수정하기</button>
<br/>
<p><a href="/store/search">목록보기</a></p>
</body>
</html>

