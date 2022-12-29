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
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js" referrerpolicy="no-referrer"></script>

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
		<input type="number" name="chk_alAbv" placeholder="최저도수">%~<input type="number" name="chk_alAbv1" placeholder="최고도수">%	
	</div>
	
	<div>
		<h4>가격</h4>
		<input type="number" name="chk_alPrice" placeholder="최저가격">원~<input type="number" name="chk_alPrice1" placeholder="최고가격">원
	</div>
	

	
<hr/> 

	<%-- 게시글 목록을 출력하는 영역 --%>
	<%--  => 자바스크립트를 통해 AJAX 요청으로 응답받은 결과를 HTML을 사용하여 삽입 할 것 --%>
	<div id="restBoardListDiv">	</div>
	
	<%-- 페이지 번호를 출력하는 영역 --%>
	<%--  => 페이지번호가 몇번부터 몇번까지 인지 모르기때문에 pager를 이용하여 출력하도록 할 것 --%>
	<div id="pageNumDiv"></div>

	


<hr>

<script id="template" type="text/x-handlebars-template">
	<table border="1" cellsapcing="0" cellpadding="3">
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
		{{#each.}}
		<tr>
				<th align="center">{{alNum}}</th>
				<th align="center">{{alOpic}}</th>
				<th>{{kiName}}</th>
				<th align="center">{{alName}}</th>
		</tr>		
		{{/each}}
	</table>	
</script>

<script type="text/javascript">

//처음에는 1페이지가 출력되도록 설정
var page=1;
boardDisplay(page);

function boardDisplay(pageNum) {
	page=pageNum;
	$.ajax({
		type:"GET",
		url:"board_list?pageNum="+pageNum,
		dataType:"json",
		success: function(json) {
			//Array객체의 요소값이 0이라면 ~~ 이거슨 게시글이 없단소리! 
			if(json.restBoardList.length==0) {
				$("#restBoardListDiv").html("검색된 게시글이 업따규 ~ ~");
				return;
			}
			
			//게시글이 존재하면다면
			var source=$("#template").html();
			var template=Handlebars.compile(source);
			$("#restBoardListDiv").html(template(json.restBoardList));
			
			pageDisplay(json.pager);
		},
		error: function(xhr) {
			alert("에러코드 ="+xhr.status);
		}
	});
}

//페이지 번호를 출력하기 위한 함수
// => 이건 Handlebars 사용하기 힘듬
function pageDisplay(pager) {
	var html="";
	//처음,이전 하이퍼링크 연결 / 그냥 텍스트 출력
	if(pager.startPage>pager.blockSize) {
		html+="<a href='javascript:boardDisplay(1);'>[처음]</a>";
		html+="<a href='javascript:boardDisplay("+pager.prevPage+");'>[이전]</a>";
	} else {
		html+="[처음][이전]";
	}

	
	for(var i=pager.startPage;i<=pager.endPage;i++) {
		if(pager.pageNum!=i) {
			html+="<a href='javascript:boardDisplay("+i+");'>["+i+"]</a>";
		} else {
			html+="["+i+"]";
		}
	}
	
	if(pager.endPage!=pager.totalPage) {
		html+="<a href='javascript:boardDisplay("+pager.nextPage+");'>[다음]</a>";
		html+="<a href='javascript:boardDisplay("+pager.totalPage+");'>[마지막]</a>";
	} else {
		html+="[다음][마지막]";
	}
	
	$("#pageNumDiv").html(html);
}


		/*
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
		
	
		
		
		
		
		getAuthItemList($("input[name=chk_kiName]:checked").val());

		$("input[name=chk_kiName]").change(function(){
		
				var chk = "";
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
		
				var chk = "";
				chkFlSinmat = [];
			
				$("input[name=chk_flSinmat]:checked").each(function() {
				
					chkFlSinmat.push($(this).val());
			
				});
	
					getAuthItemList(chkFlSinmat);
	
			});
		
		$("input[name=chk_flSsunmat]").change(function(){
		
				var chk = "";
				chkFlSsunmat = [];
			
				$("input[name=chk_flSsunmat]:checked").each(function() {
				
					chkFlSsunmat.push($(this).val());
			
				});

					getAuthItemList(chkFlSsunmat);

			});

		$("input[name=chk_flBody]").change(function(){
		
				var chk = "";
				chkFlBody = [];
			
				$("input[name=chk_flBody]:checked").each(function() {
				
					chkFlBody.push($(this).val());
				
				});

					getAuthItemList(chkFlBody);

			});
		
		$("input[name=chk_flTansan]").change(function(){
		
				var chk = "";
				chkFlTansan = [];
			
				$("input[name=chk_flTansan]:checked").each(function() {
				
					chkFlTansan.push($(this).val());
			
				});
	
					getAuthItemList(chkFlTansan);

			});

		$("input[name=chk_alAbv]").change(function(){
		
				var chk = "";
				chkAlAbv = [];
			
				$("input[name=chk_alAbv]").each(function() {
				
					chkAlAbv.push($(this).val());
			
				});

					getAuthItemList(chkAlAbv);

			});
	
		$("input[name=chk_alAbv1]").change(function(){
		
				var chk = "";
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
	

		*/
	
	
	/*
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

	*/

</script>



</body>

</html>