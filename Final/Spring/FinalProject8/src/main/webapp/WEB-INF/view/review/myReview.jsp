<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Reviews</title>
</head>
<body>
<c:if test="${empty dto}">
		작성한 상품후기가 없습니다.
	</c:if>
	<c:if test="${!empty dto}">
      <table>
      <tr>
            <td>상품 사진</td>
            <td>상품 이름</td>            
            <td>제목</td>
            <td>내용</td>
            <td>작성자</td>
            <td>작성날짜</td>
        </tr>
        
        <c:forEach items="${dto}"  var="dto" >
       <tr>        
            <td><img src="${dto.alOpic}"></td>
            <td>${dto.alName}</td>            
            <td>${dto.title}</td>
            <td>${dto.content}</td>
            <td>${dto.userName}</td>
            <td>${dto.reDate}</td>
            <td>${dto.userName}</td>
          <td><a href="/reviewDelete?reNum=${dto.reNum}&userName=${dto.userName}">
          삭제하기
          </a></td>
       </tr>
        </c:forEach> 
        
   </table>
   </c:if>
</body>
</html>