<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
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
</style>
</head>
<body>
<table width="500" cellpadding="0" cellspacing="0" border="1">
   <tr>
      <td>No.</td>
        <td>제목</td>
        <td>내용</td>        
        <td>작성자</td>
        <td>등록일자</td>
        <td>조회 수</td>
        <td>수정</td>
        <td>삭제</td>
    </tr>
         <c:forEach items="${list}" var="dto">
    <tr>
         <td>${dto.id}</td>
         <td>${dto.title}</td>
         <td><a href="view2?id=${dto.id}">${dto.content}</a></td>
         <td>${dto.writer}</td>
         <td>${dto.regdate}</td>
         <td>${dto.visitCount}</td>
         <td><a href="updateView?id=${dto.id}">❤</a></td>
         <td><a href="delete?id=${dto.id}">◎</a></td>
    </tr>
    </c:forEach>
</table>
<p><a href="write">작 성</a><p>



<%@ include file="/WEB-INF/view/include/paging.jsp" %>

<%-- <!-- 페이징 헤더 or 푸터 -->
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
</script> --%>
</body>
</html>