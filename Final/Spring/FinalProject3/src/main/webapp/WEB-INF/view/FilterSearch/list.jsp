<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	
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
			<tbody id="table">
			</tbody>
		</table>
		<div id="paging">
			
		</div>
		
		<!-- 
		<form id="moveForm" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">    
	        <input type="text" name="amount" value="${pageMaker.cri.amount }">    
	        
		</form>
		 -->

	



<script type="text/javascript">
$(document).ready(function(){
	getBoardList();
});

function getBoardList() {

	$.ajax({
		type: 'GET',
		url: '/store/list',
		
		success: function(result){
			console.log(result);
			console.log(result.boardList);
			console.log(result.pageMaker);
			console.log(result.pageMaker.cri.pageNum);
			
			var str = "";
			var html = "";
			
			if(result.boardList.length>1){
				for(var i=0; i<result.boardList.length; i++){
					str='<tr>'
					str += "<td>"+result.boardList[i].kiName+"</td>";
					str += "<td><img src="+result.boardList[i].alOpic+'referrerpolicy="no-referrer"></td>';
					str += "<td><a href='/alView?alNum="+result.boardList[i].alNum+"'>"+result.boardList[i].alName+"</a></td>";
					str += "<td>"+result.boardList[i].alAbv+"%</td>";
					str += "<td>"+result.boardList[i].alPrice+"원</td>";
					str += "<td>"+result.boardList[i].alStock+"개</td>";
					str += "<td>"+result.boardList[i].flDanmat+"</td>";
					str += "<td>"+result.boardList[i].flSinmat+"</td>";
					str += "<td>"+result.boardList[i].flSsunmat+"</td>";
					str += "<td>"+result.boardList[i].flBody+"</td>";
					str += "<td>"+result.boardList[i].flTansan+"</td>";
					str += "</tr>";

					$('#table').append(str);
				}
				
				html += '<form id="moveForm" method="get">';
				html +=	'<input type="hidden" name="pageNum" value="'+ result.pageMaker.cri.pageNum+ '">';
				html += '<input type="hidden" name="amount" value="'+ result.pageMaker.cri.amount+ '">';
				html += '<input type="text" name="amount" value="'+ result.pageMaker.startPage+ '"> ';         
				html += '</form>';
				
				html += '<div class="pageInfo_wrap" >';
				html +=		'<div class="pageInfo_area">';		
				html += 		'<c:forEach var="num" begin="1" end="20">';
				html += 			'<li class="pageInfo_btn"><a href="${num}">${num}</a></li>';        
				html += 		'</c:forEach>';     
				html += 	'</div>';  
				html += '</div>';  
				
				let moveForm = $("#moveForm");
				
				 $(".pageInfo a").on("click", function(e){
					 
				        e.preventDefault();
				        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
				        moveForm.attr("action", "/store/list");
				        moveForm.submit();
				        
				 });
				 
				 
				
				
		
				 
				/*cri
				: 
				{pageNum: 1, amount: 10}
				endPage
				: 
				10
				next
				: 
				true
				prev
				: 
				false
				startPage
				: 
				1
				total
				: 
				521
				*/
					
					$('#paging').append(html);
			}
		},
		error : function(result) {
			
		}
		
	})
		
}

</script>

</body>
</html>