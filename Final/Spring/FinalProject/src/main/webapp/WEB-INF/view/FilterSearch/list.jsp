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
	
		getAuthItemList($("input[name=chk_alAbv]:checked").val());

		
		
		$("input[name=chk_alAbv]").change(function(){
		
				var chk = "";
				chkAlAbv = [];
			
				$("input[name=chk_alAbv]:checked").each(function() {
				
					chkAlAbv.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlAbv);
				
			
			});
		
	});
	
	var chkAlAbv10 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alAbv10]:checked").val());

		
		
		$("input[name=chk_alAbv10]").change(function(){
		
				var chk = "";
				chkAlAbv10 = [];
			
				$("input[name=chk_alAbv10]:checked").each(function() {
				
					chkAlAbv10.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlAbv10);
				
			
			});
		
	});
	
	var chkAlAbv20 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alAbv20]:checked").val());

		
		
		$("input[name=chk_alAbv20]").change(function(){
		
				var chk = "";
				chkAlAbv20 = [];
			
				$("input[name=chk_alAbv20]:checked").each(function() {
				
					chkAlAbv20.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlAbv20);
				
			
			});
		
	});
	
	var chkAlAbv30 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alAbv30]:checked").val());

		
		
		$("input[name=chk_alAbv30]").change(function(){
		
				var chk = "";
				chkAlAbv30 = [];
			
				$("input[name=chk_alAbv30]:checked").each(function() {
				
					chkAlAbv30.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlAbv30);
				
			
			});
		
	});
	
	var chkAlPrice0 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice0]:checked").val());

		
		
		$("input[name=chk_alPrice0]").change(function(){
		
				var chk = "";
				chkAlPrice0 = [];
			
				$("input[name=chk_alPrice0]:checked").each(function() {
				
					chkAlPrice0.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice0);
				
			
			});
		
	});
	
	var chkAlPrice1 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice1]:checked").val());

		
		
		$("input[name=chk_alPrice1]").change(function(){
		
				var chk = "";
				chkAlPrice1 = [];
			
				$("input[name=chk_alPrice1]:checked").each(function() {
				
					chkAlPrice1.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice1);
				
			
			});
		
	});
	
	var chkAlPrice3 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice3]:checked").val());

		
		
		$("input[name=chk_alPrice3]").change(function(){
		
				var chk = "";
				chkAlPrice3 = [];
			
				$("input[name=chk_alPrice3]:checked").each(function() {
				
					chkAlPrice3.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice3);
				
			
			});
		
	});
	
	var chkAlPrice5 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice5]:checked").val());

		
		
		$("input[name=chk_alPrice5]").change(function(){
		
				var chk = "";
				chkAlPrice5 = [];
			
				$("input[name=chk_alPrice5]:checked").each(function() {
				
					chkAlPrice5.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice5);
				
			
			});
		
	});
	
	var chkAlPrice10 = new Array;
	$(document).ready(function(){
	
		getAuthItemList($("input[name=chk_alPrice10]:checked").val());

		
		
		$("input[name=chk_alPrice10]").change(function(){
		
				var chk = "";
				chkAlPrice10 = [];
			
				$("input[name=chk_alPrice10]:checked").each(function() {
				
					chkAlPrice10.push($(this).val());
			
				});
					
				
					getAuthItemList(chkAlPrice10);
				
			
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
					chkAlAbv10 : chkAlAbv10,
					chkAlAbv20 : chkAlAbv20,
					chkAlAbv30 : chkAlAbv30,
					chkAlPrice0 : chkAlPrice0,
					chkAlPrice1 : chkAlPrice1,
					chkAlPrice3 : chkAlPrice3,
					chkAlPrice5 : chkAlPrice5,
					chkAlPrice10 : chkAlPrice10
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
				html += '<td>'+data[key].alPrice+'???</td>';
				html += '<td>'+data[key].alStock+'???</td>';
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
                alert('????????? ?????? ??? ????????? ??????????????????.');
            }
			
			
			
		})
		
	}


</script>


</head>

<body>

<a href="/">????????????</a>

<div>
	<h4>??????</h4>
	<input type="checkbox" name="chk_kiName" value="200">???????????????  
	<input type="checkbox" name="chk_kiName" value="201">???????????????
	<input type="checkbox" name="chk_kiName" value="202">??????
	<input type="checkbox" name="chk_kiName" value="203">??????
	<input type="checkbox" name="chk_kiName" value="204">?????????
	<input type="checkbox" name="chk_kiName" value="205">?????????
	<input type="checkbox" name="chk_kiName" value="206">?????????
	<input type="checkbox" name="chk_kiName" value="207">??????
	<input type="checkbox" name="chk_kiName" value="208">?????????
	<input type="checkbox" name="chk_kiName" value="209">????????????
	
</div>

<div>
	<h4>??????</h4>
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
	<h4>??????</h4>
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
	<h4>??????</h4>
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
	<h4>??????</h4>
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
	<h4>??????</h4>
	<input type="checkbox" name="chk_flTansan" value="0">???  
	<input type="checkbox" name="chk_flTansan" value="1">???
</div>

	<div>
		<h4>??????</h4>
		<input type="checkbox" name="chk_alAbv" value=0> 0~10%
		<input type="checkbox" name="chk_alAbv10" value=11> 11~20%
		<input type="checkbox" name="chk_alAbv20" value=21> 21~30%
		<input type="checkbox" name="chk_alAbv30" value=30> 30%??????
	</div>
	
	<div>
		<h4>??????</h4>
		<input type="checkbox" name="chk_alPrice0" value=0 >~1??????  
		<input type="checkbox" name="chk_alPrice1" value=10001 >1??????~3??????  
		<input type="checkbox" name="chk_alPrice3" value=30001 >3??????~5??????  
		<input type="checkbox" name="chk_alPrice5" value=50001 >5??????~10??????  
		<input type="checkbox" name="chk_alPrice10" value=100001 >10????????????  
	</div>
	
	
	
<hr/> 

<table width="950" cellpadding="0" cellspacing="0" border="1">
	<thead>
		<tr>
			<th>????????????</th>
			<th>????????????</th>
			<th>????????????</th>
			<th>????????????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
			<th>??????</th>
		</tr>
	</thead>
	
	
	<c:choose>
		<c:when test="${empty list}">
			<tr>
				<td colspan="12" align="center"><h2>????????? ???????????? ????????????.</h2></td>
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