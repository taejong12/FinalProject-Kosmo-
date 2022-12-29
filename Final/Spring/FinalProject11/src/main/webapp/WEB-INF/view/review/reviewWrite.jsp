<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>    
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/css/review/write.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<body>
<div id="nogihoon">
   <div class="login_box">
      <form action="/reviewInsert" method="post">            
         <fieldset id="ww">
            <div id="writeInput">
         <div class="pic">
            <img src="/img/finallogo.png" alt="이미지" id="pic2">               
               </div>
                  <strong class="stName">작성자 :</strong> <input type="text" class="writt" value="${list.userName}" readonly style="width:360px;"><br/><br/>         
                  <strong class="stName">제  &nbsp 목 :</strong> <input type="text" class="writt" name="title" placeholder="제목을 입력해주세요." style="width:360px;"><br/><br/>         
                  <strong class="stName">내  &nbsp 용 :</strong> <textarea name="content" cols="49" rows="5" placeholder="내용을 입력해주세요."></textarea><br/><br/>      
                   <div id="myform">
                      <strong id="stName"> 별  &nbsp 점 : </strong>
                      <fieldset id="starSet">
                        <span class="text-bold"></span>
                        <input type="radio" name="star" value="5" id="rate1"><label
                           for="rate1">★</label>
                        <input type="radio" name="star" value="4" id="rate2"><label
                           for="rate2">★</label>
                        <input type="radio" name="star" value="3" id="rate3"><label
                           for="rate3">★</label>
                        <input type="radio" name="star" value="2" id="rate4"><label
                           for="rate4">★</label>
                        <input type="radio" name="star" value="1" id="rate5"><label
                           for="rate5">★</label>
                      </fieldset>               
                  </div>      
                  <input type="submit" class="login_btn" value="작성하기"><br/>
                  <input type="button" class="login_btn" id="no" value="후기 목록보기">
               <!-- <a href="/reviewList" class="login_btn">후기 목록보기</a> -->
               </div>
               <input type="hidden" name="reDate" value="">
               <input type="hidden" name="alNum" value="${list.alNum}">
                <input type="hidden" name="alName" value="${list.alName}">
                <input type="hidden" name="alOpic" value="${list.alOpic}">
                <input type="hidden" name="orPayDate" value="${list.orPayDate}">
                <input type="hidden" name="userName" value="${list.userName}">
            </fieldset>
      </form>
   </div>
</div>
</body>
<script>
$("#no").click(function(){
   location.href="/reviewList";
});   
</script>
</html>