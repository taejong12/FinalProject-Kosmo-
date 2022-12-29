<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품후기</title>
</head>
<body>
   <table width="500" cellpadding="0" cellspacing="0" border="1">
      <tr>
            <td>상품 사진</td>
            <td>상품 이름</td> 
            <td>별점</td>           
            <td>제목</td>
            <td>내용</td>
            <td>작성자</td>
            <td>작성날짜</td>
            <td>상품 보기</td>
        </tr>
       <tr>        
            <td><img src="${dto.alOpic}"></td>
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
            <td>${dto.title}</td>
            <td>${dto.content}</td>
            <td>${dto.userName}</td>
            <td>${dto.reDate}</td>
            <td><a href="alView?alNum=${dto.alNum}">상품 보기</a></td>
       </tr>    
</table>
   
</body>
</html>