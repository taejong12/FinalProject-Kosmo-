<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기</title>
</head>
<body>
   <a href="/home">홈페이지</a>
   <c:if test="${empty list}">
		등록된 상품후기가 없습니다.
	</c:if>
	<c:if test="${!empty list}">
<table width="500" cellpadding="0" cellspacing="0" border="1">
   <tr>
      <td>사진</td>
      <td>상품 이름</td>
      <td>별점</td>
      <td>제목</td>      
      <td>작성자</td>
      <td>등록일자</td>  
    </tr>
    
    <c:forEach items="${list}" var="dto">
       <tr>        
            <td><a href="/reviewDetail?reNum=${dto.reNum}"><img src="${dto.alOpic}"></a></td>
            <td>${dto.alName}</td>
            <td>
               <c:choose>
                  <c:when test="${dto.star==5}">
                     <label for="5-stars" class="star">★★★★★</label>
                  </c:when>   
                  <c:when test="${dto.star==4}">
                     <label for="4-stars" class="star">★★★★</label>
                  </c:when>   
                  <c:when test="${dto.star==3}">
                     <label for="3-stars" class="star">★★★</label>
                  </c:when>   
                  <c:when test="${dto.star==2}">
                     <label for="2-stars" class="star">★★</label>
                  </c:when>   
                  <c:otherwise>
                     <label for="1-stars" class="star">★</label>
                  </c:otherwise>
               </c:choose>               
            </td>
            <td><a href="/reviewDetail?reNum=${dto.reNum}">${dto.title}</a></td>
            <td>${dto.userName}</td>
            <td>${dto.reDate}</td>
       </tr>       
    </c:forEach>
    
</table>
</c:if>
</body>
</html>