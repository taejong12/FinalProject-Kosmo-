<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm</title>
</head>
<body>
	<form action="/store/writingOne" method="post" enctype="multipart/form-data">
		상품명: <input type="text" name="alName" /><br/>
		상품설명: <textarea name="itemDetail"></textarea><br/>
		판매상태: <select name="itemStatus">
			    <option value="판매중">판매중</option>
			    <option value="품절">품절</option>
			</select> <br/>
		가격: <input type="number" name="alPrice"/> <br/>
		재고: <input type="number" name="alStock"/> <br/>
		상품등록일: <input type="date" name="itemDate"/> <br/>
		
		주종: <select name="kiName">
				<option value="주종" disabled selected="selected">====주종====</option>
			    <option value="0">일반증류주</option>
			    <option value="1">증류식소주</option>
			    <option value="2">청주</option>
			    <option value="3">탁주</option>
			    <option value="4">생탁주</option>
			    <option value="5">과실주</option>
			    <option value="6">리큐르</option>
			    <option value="7">약주</option>
			    <option value="8">브랜디</option>
			    <option value="9">기타주류</option>
			</select> <br/>
			
		맛: <select name="flDanmat">
			    <option value="단맛" disabled selected="selected">====단맛====</option>
			    <option value="0">0</option>
			    <option value="1">1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5</option>
			    <option value="6">6</option>
			    <option value="7">7</option>
			    <option value="8">8</option>
			    <option value="9">9</option>
			</select>
			<select name="flSinmat">
			    <option value="신맛" disabled selected="selected">====신맛====</option>
			    <option value="0">0</option>
			    <option value="1">1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5</option>
			    <option value="6">6</option>
			    <option value="7">7</option>
			    <option value="8">8</option>
			    <option value="9">9</option>
			</select>
			<select name="flSsunmat">
			    <option value="쓴맛" disabled selected="selected">====쓴맛====</option>
			    <option value="0">0</option>
			    <option value="1">1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5</option>
			    <option value="6">6</option>
			    <option value="7">7</option>
			    <option value="8">8</option>
			    <option value="9">9</option>
			</select>
			<select name="flBody">
			    <option value="농도" disabled selected="selected">====농도====</option>
			    <option value="0">0</option>
			    <option value="1">1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			    <option value="5">5</option>
			    <option value="6">6</option>
			    <option value="7">7</option>
			    <option value="8">8</option>
			    <option value="9">9</option>
			</select> <br/>
			
		탄산: <select name="flTansan"> 
				<option value="탄산" disabled selected="selected">====탄산====</option>
			    <option value="0">무</option>
			    <option value="1">유</option>
			</select> <br/>
			
		도수: <input type="text" name="alAbv" /><br/>
		
		<input type="submit" value="작성완료" /><br/>
	</form>
		<a href="/store/search">목록</a>
</body>
</html>