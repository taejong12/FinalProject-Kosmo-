<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body style="font-family: 'Hahmlet', serif;">   
<form action="/notice/update" method="post">
         <input type="hidden" value="${dto.noNum}" name="noNum">
   제목: <input type="text" value="${dto.noTitle}" name="noTitle" size="100"/><br/>
   내용: <input type="text" value="${dto.noContent}" name="noContent" size="100"/><br/>
   작성자: <input type="text" value="${dto.noWriter}" name="noWriter" size="100"/><br/>   
   <input type="submit" value="수정"/><br/>
   <a href="/notice/list">목록</a>
</form>
</body>
</html>