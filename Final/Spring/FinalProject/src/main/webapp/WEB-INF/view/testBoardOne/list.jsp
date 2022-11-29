<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 

<script type="text/javascript">
	var chkArray = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_kiName]:checked").val());

		
		
		$("input[name=chk_kiName]").change(function(){
		
				var chk = "";
				chkArray = [];
			
				$("input[name=chk_kiName]:checked").each(function() {
				
					chkArray.push($(this).val());
			
				});
					
				
					getAuthItemList(chkArray);
				
			
			});
		
	});
	
	var chkDanmat = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_danmat]:checked").val());

		
		
		$("input[name=chk_danmat]").change(function(){
		
				var chk = "";
				chkDanmat = [];
			
				$("input[name=chk_danmat]:checked").each(function() {
				
					chkDanmat.push($(this).val());
			
				});
					
				
					getAuthItemList(chkDanmat);
				
			
			});
		
	});

	var chkFlSinmat = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_flSinmat]:checked").val());

		
		
		$("input[name=chk_flSinmat]").change(function(){
		
				var chk = "";
				chkFlSinmat = [];
			
				$("input[name=chk_flSinmat]:checked").each(function() {
				
					chkFlSinmat.push($(this).val());
			
				});
					
				
					getAuthItemList(chkFlSinmat);
				
			
			});
		
	});
	
	var chkFlSsunmat = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_flSsunmat]:checked").val());

		
		
		$("input[name=chk_flSsunmat]").change(function(){
		
				var chk = "";
				chkFlSsunmat = [];
			
				$("input[name=chk_flSsunmat]:checked").each(function() {
				
					chkFlSsunmat.push($(this).val());
			
				});
					
				
					getAuthItemList(chkFlSsunmat);
				
			
			});
		
	});
	
	var chkFlBody = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_flBody]:checked").val());

		
		
		$("input[name=chk_flBody]").change(function(){
		
				var chk = "";
				chkFlBody = [];
			
				$("input[name=chk_flBody]:checked").each(function() {
				
					chkFlBody.push($(this).val());
			
				});
					
				
					getAuthItemList(chkFlBody);
				
			
			});
		
	});
	
	var chkFlTansan = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_flTansan]:checked").val());

		
		
		$("input[name=chk_flTansan]").change(function(){
		
				var chk = "";
				chkFlTansan = [];
			
				$("input[name=chk_flTansan]:checked").each(function() {
				
					chkFlTansan.push($(this).val());
			
				});
					
				
					getAuthItemList(chkFlTansan);
				
			
			});
		
	});
	
	
	function getAuthItemList(){
		
	$.ajax({
			
			url : "/store/chk_value",
			data : { chkArray : chkArray,
					chkDanmat : chkDanmat,
					chkFlSinmat : chkFlSinmat,
					chkFlSsunmat : chkFlSsunmat,
					chkFlBody : chkFlBody,
					chkFlTansan : chkFlTansan},
			traditional : true,
			async: true,
			success : function(data){
				var html = '';
				
				for(key in data){
				html += '<tr>';
				html += '<td>'+data[key].alNum+'</td>';
				html += '<td>'+'<img src='+data[key].alOpic+'>'+'</td>';
				html += '<td>'+data[key].kiName+'</td>';
				html += '<td>'+data[key].alName+'</td>';
				html += '<td>'+data[key].alAbv+'</td>';
				html += '<td>'+data[key].alPrice+'</td>';
				html += '<td>'+data[key].alStock+'</td>';
				html += '<td>'+data[key].flDanmat+'</td>';
				html += '<td>'+data[key].flSinmat+'</td>';
				html += '<td>'+data[key].flSsunmat+'</td>';
				html += '<td>'+data[key].flBody+'</td>';
				html += '<td>'+data[key].flTansan+'</td>';
				html += '</tr>';
				}
				
				$("#itemList").empty().append(html);
				
			}
		})
		
	}


</script>


</head>

<body>
<a href="/">홈페이지</a>

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
		<input type="checkbox" name="chk_alAbv" value=0> 0~10%
		<input type="checkbox" name="chk_alAbv" value=10> 10~20%
		<input type="checkbox" name="chk_alAbv" value=20> 20~30%
		<input type="checkbox" name="chk_alAbv" value=30> 30%이상
	</div>
	
<!-- 
	<div>
		<h4>가격</h4>
		<input type="checkbox" name="chk_alPrice" value=0 >~1만원  
		<input type="checkbox" name="chk_alPrice" value=10000 >1만원~3만원  
		<input type="checkbox" name="chk_alPrice" value=30000 >3만원~5만원  
		<input type="checkbox" name="chk_alPrice" value=50000 >5만원~10만원  
		<input type="checkbox" name="chk_alPrice" value=100000 >10만원이상  
	</div>
 -->

<hr/>
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

<hr>

<table width="950" cellpadding="0" cellspacing="0" border="1">
	<tr>
		<td>주류번호</td>
		<td>주류사진</td>
		<td>주종이름</td>
		<td>주류이름</td>
		<td>도수</td>
		<td>가격</td>
		<td>재고</td>
		<td>단맛</td>
		<td>신맛</td>
		<td>쓴맛</td>
		<td>농도</td>
		<td>탄산</td>
		<td>삭제</td>
		
	</tr>
	
	<c:choose>
		<c:when test="${empty list}">
			<tr>
				<td colspan="13" align="center"><h2>등록된 게시물이 없습니다.</h2></td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="dto">
			<tr>
				<td>${dto.alNum}</td>
				<td><img src="${dto.alOpic}"></td>
				<td>${dto.kiName}</td>
				<td><a href="/store/viewOne?id=${dto.alNum}">${dto.alName}</a></td>
				<td>${dto.alAbv}</td>
				<td>${dto.alPrice}</td>
				<td>${dto.alStock}</td>
				<td>${dto.flDanmat}</td>
				<td>${dto.flSinmat}</td>
				<td>${dto.flSsunmat}</td>
				<td>${dto.flBody}</td>
				<td>${dto.flTansan}</td>
				<td>
					<a href="/store/deleteOne?id=${dto.alNum}">(☞ﾟヮﾟ)☞</a>
				</td>
				
			</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>
<p><a href="/store/writeOne">작 성</a></p>

</body>

</html>