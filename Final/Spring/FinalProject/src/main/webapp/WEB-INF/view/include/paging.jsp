<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<!-- 페이징 헤더 or 푸터 -->
<div class="pageInfo_wrap">
	<div class="pageInfo_area">
		<ul id="pageInfo" class="pageInfo">
		
		 <!-- 이전페이지 버튼 -->
            <c:if test="${pageMaker.prev}">
                <li class="pageInfo_btn previous"><a href="list?pageNum=${pageMaker.startPage-1}">Previous</a></li>
            </c:if>
		
		<!-- 각 번호 페이지 버튼 -->
		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<li class="pageInfo_btn"><a href="list?pageNum=${num}">${num}</a></li>
		</c:forEach>
		
		<!-- 다음페이지 버튼 -->
         <c:if test="${pageMaker.next}">
             <li class="pageInfo_btn next"><a href="list?pageNum=${pageMaker.endPage+1}">Next</a></li>
         </c:if>    
		</ul>
	</div>
</div>
<form id="moveForm" method="get">
 	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
 	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
</form>
<script>
	
	let moveForm = $("#moveForm");
	
	$(".move").on("click", function e) {
		
		e.preventDefault();
		moveForm.append("<input type='hidden' name='id' value='"+ $(this).attr("href")"'>");
		moveForm.attr("action","/notice/view") 
		
	})
	
	$(".pageInfo a").on("click", function(e) {
		e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/notice/NoticeMain");
        moveForm.submit();
	})
</script>

</body>


</html>