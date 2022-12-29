<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


<style>
	.search_area{
		display: inline-block;
	    margin-top: 30px;
		margin-left: 260px;
	}
	.search_area input{
		height: 30px;
		width: 250px;
  	}
  .search_area button{
     width: 100px;
    height: 36px;
  }
  .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
	 a:link {color:black; text-decoration: none;}
	 a:visited {color:black; text-decoration: none;}
	 a:hover {color:black; text-decoration: underline;}
	 .active{
      background-color: #cdd5ec;
  	}
 
 
</style>

</head>
<body>

<div class="pageInfo_wrap" >
        <div class="pageInfo_area">
 			<ul id="pageInfo" class="pageInfo">
 			
 				<!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="/store/search?pageNum=${pageMaker.startPage-1}&amount=10">Previous</a></li>
                </c:if>
 			
 				 <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":" " }"><a href="/store/search?pageNum=${num}&amount=10">${num}</a></li>
                </c:forEach>

                
                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="/store/search?pageNum=${pageMaker.endPage + 1 }&amount=10">Next</a></li>
                </c:if>    
                
 			</ul>
        </div>
    </div>

	<form id="moveForm" method="get">
	 	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	</form>


<!--
<script>
	let moveForm = ${"#moveForm"};
	
	$(".move").on("click", function(e){
		 	
		 e.preventDefault();
	       moveForm.find("input type='hidden' name='bno' value='")+$(this).attr("href")+"'>");
	       moveForm.attr("action", "/store/search");
	       moveForm.submit();   
			 
	   });
	
	$(".pageInfo a").on("click", function(e){
		 	
		 e.preventDefault();
	       moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	       moveForm.attr("action", "/store/search");
	       moveForm.submit();   
			 
	   });

</script>
-->
</body>
</html>