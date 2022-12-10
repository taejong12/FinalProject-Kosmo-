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
	
	
	var chkAlAbv = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alAbv]").val());

		
		
		$("input[name=chk_alAbv]").change(function(){
		
				var chk = "";
				chkAlAbv = [];
			
				$("input[name=chk_alAbv]").each(function() {
				
					chkAlAbv.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlAbv);
				
			
			});
		
	});
	
	var chkAlPrice = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice]").val());	
		
		$("input[name=chk_alPrice]").change(function(){
		
				var chk = "";
				chkAlPrice = [];
			
				$("input[name=chk_alPrice]").each(function() {
				
					chkAlPrice.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice);
				
			
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
					chkFlTansan : chkFlTansan,
					chkAlAbv : chkAlAbv,
					chkAlPrice : chkAlPrice
			},
			traditional : true,
			async: true,
			success : function(data){
				
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
		<input type="number" name="chk_alAbv">%
		
	</div>
	
	<div>
		<h4>가격</h4>
		<input type="number" name="chk_alPrice">원
		
	</div>
	
	
	
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
	
	
	<c:choose>
		<c:when test="${empty list}">
			<tr>
				<td colspan="12" align="center"><h2>등록된 게시물이 없습니다.</h2></td>
			</tr>
		</c:when>
		<c:otherwise>
			<tbody id="itemList">
	
			</tbody>
		</c:otherwise>
	</c:choose>
	
</table>

<hr>



</body>

</html>