<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/link.jsp" %>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/notice/noticeList.css">
<head>
<meta charset="UTF-8">
<title>List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
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

<body style="font-family: 'Hahmlet', serif;">
</br></br>

<div id="strong">
<strong>공지사항</strong>
</div>
</br>
</br>
<div>

<table class="table table-striped-columns" id="table" width="300" cellpadding="0" cellspacing="0" border="1" >
   <tr id="top">
      <td id="noticeNum">No.</td>
        <td id="noticeTitle">제목</td>
        <td id="noticeMan">작성자</td>
        <td id="noticeDay">등록일자</td>
        <td id="noticeCo">조회수</td>
       <c:if test="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username eq 'admin'}">
        <td class="noticeTb">수정</td>
        <td class="noticeTb">삭제</td>
        </c:if>
    </tr>
    <c:forEach items="${list}" var="dto">
       <tr>
            <td id=noticeNum>${dto.noNum}</td>
            <td id="noticeTitle"><a href="/notice/view2?noNum=${dto.noNum}">${dto.noTitle}</a></td>
            <td id=noticeMan>${dto.noWriter}</td>
            <td id=noticeDay>${dto.noPostdate}</td>
            <td id=noticeCo>${dto.noCount}</td>
         <c:if test="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username eq 'admin'}">
            <td class=noticeTb><a href="/notice/updateView?noNum=${dto.noNum}">❤</a></td>
            <td class=noticeTb><a href="/notice/delete?noNum=${dto.noNum}">◎</a></td>
         </c:if>
       </tr>
    </c:forEach>
</table>
</br>
</div>
<c:if test="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username eq 'admin'}">
<p><a href="/notice/write">작 성</a><p>
</c:if>
                   
                   <!-- 페이지 이름 인터페이스 영역 -->
                   <div class="pageMaker_wrap">
                      <ul class="pageMaker">        
                                       
                         <!-- 이전 버튼 -->
                         <c:if test="${pageMaker.prev }">
                            <li class="pageMaker_btn prev">
                               <a href="${pageMaker.startPage -1}">이전</a>
                            </li>
                         </c:if>
                         
                         <!-- 페이지 번호 -->
                         <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
                            <li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active1':''}">
                               <a href="list1?pageNum=${num}">${num}</a>
                            </li>   
                         </c:forEach>
                      
                          <!-- 다음 버튼 -->
                          <c:if test="${pageMaker.next}">
                             <li class="pageMaker_btn next">
                                <a href="${PageMaker.endPage + 1 }">다음</a>
                             </li>
                          </c:if>
                       </ul>
                   </div>
                   
                   <form id="moveForm" action="notices/list1" method="get" >
                   <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                  <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                  <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                   </form>

<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>