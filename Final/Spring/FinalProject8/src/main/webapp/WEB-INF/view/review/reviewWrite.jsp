<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/reviewInsert" method="post">   
   <fieldset>
      <legend>후기 작성</legend>
      작성자:&nbsp; <input type="text" value="${list.userName}"size="100" readonly><br/>
      제목:&nbsp;&nbsp; <input type="text" name="title" size="100"><br/>
      내용:&nbsp;&nbsp;<textarea name="content" cols="50" rows="10"></textarea><br/>
        별점:&nbsp;&nbsp;<input id="5-stars" type="radio" name="star" value="5" checked/>
               <label for="5-stars" class="star">★★★★★</label>
               <input id="4-stars" type="radio" name="star" value="4" />
               <label for="4-stars" class="star">★★★★</label>
               <input id="3-stars" type="radio" name="star" value="3" />
               <label for="3-stars" class="star">★★★</label>
               <input id="2-stars" type="radio" name="star" value="2" />
               <label for="2-stars" class="star">★★</label>
               <input id="1-stars" type="radio" name="star" value="1" />
               <label for="1-stars" class="star">★</label><br/>
                     
      <input type="submit" value="작성하기"><br/>
   
      <input type="hidden" name="reDate" value="">
      <input type="hidden" name="alNum" value="${list.alNum}">
       <input type="hidden" name="alName" value="${list.alName}">
       <input type="hidden" name="alOpic" value="${list.alOpic}">
       <input type="hidden" name="orPayDate" value="${list.orPayDate}">
       <input type="hidden" name="userName" value="${list.userName}">
   </fieldset>
</form>
   <a href="/reviewList">후기 목록보기</a>
</body>
</html>