<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/notice/noticeList.css">
<head>
<meta charset="UTF-8">
<title>List</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
let searchForm = $('#searchForm');
let moveForm = $('#moveForm');

/* 작거 검색 버튼 동작 */
$("#searchForm button").on("click", function(e){
	
	e.preventDefault();
	
	/* 검색 키워드 유효성 검사 */
	if(!searchForm.find("input[name='keyword']").val()){
		alert("키워드를 입력하십시오");
		return false;
	}
	
	searchForm.find("input[name='pageNum']").val("1");
	
	searchForm.submit();
	
});


/* 페이지 이동 버튼 */
$(".pageMaker_btn a").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	
	moveForm.submit();
	
});

</script>
<style type="text/css">
	/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-top: 30px;
    margin-bottom: 40px;
}
.pageMaker{
    list-style: none;
    display: inline-block;
}	
.pageMaker_btn {
    float: left;
    width: 40px;
    height: 40px;
    line-height: 40px;
    margin-left: 20px;
}
.active1{
	border : 2px solid black;
	font-weight:400;
}
.next, .prev {
    border: 1px solid #ccc;
    padding: 0 10px;
}
.pageMaker_btn a:link {color: black;}
.pageMaker_btn a:visited {color: black;}
.pageMaker_btn a:active {color: black;}
.pageMaker_btn a:hover {color: black;}
.next a, .prev a {
    color: #ccc;
}
</style>
</head>
<body style="background-color:#f8f8f8">

<div id="strong">
<strong>우리술 뉴스</strong>
</div>
</br>
</br>
<table class="table table-striped-columns" id="table" width="300" cellpadding="0" cellspacing="0" border="1" >
	<tr id="top">
		<td id="noticeNum">No.</td>
		<td id="noticeTitle">제목</td>
		<td id="noticeDay">작성일</td>
	</tr>
	<c:choose>
		<c:when test="${empty list}">
			<tr>
				<td colspan="5" align="center"><h3>등록된 게시물이 없습니다.</h3></td>
			</tr>
		</c:when>
		<c:otherwise>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td id="noticeNum">${dto.newsnum }</td>
		<td id="noticeTitle"><a href="${dto.link }">${dto.title }</a></td>
		<td id="noticeDay">${dto.postdate }</td>
	</tr>
	</c:forEach>
	</c:otherwise>
	</c:choose>
</table>
   	
                	<!-- 페이지 이름 인터페이스 영역 -->
                	<div class="pageMaker_wrap">
                		<ul class="pageMaker">
                			
                			<!-- 이전 버튼 -->
                			<c:if test="${pageMaker.prev }">
                				<li class="pageMaker_btn prev">
                					<a href="${pageMaker.pageStart -1}">이전</a>
                				</li>
                			</c:if>
                			
                			<!-- 페이지 번호 -->
                			<c:forEach begin="${pageMaker.pageStart }" end="${pageMaker.pageEnd }" var="num">
                				<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active1':''}">
                					<a href="newslist?pageNum=${num}">${num}</a>
                				</li>	
                			</c:forEach>
                		
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${PageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                	</div>
                	
                	<form id="moveForm" action="news/newslist" method="get" >
 						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                	</form>

</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</html>