<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/notice/writing" method="post">   
   제목:<input type="text" name="noTitle" size="100"><br/>
   내용:<input type="text" name="noContent" size="100"><br/>
   작성자:<input type="text" name="noWriter" size="100"><br/>
   <input type="submit" value="작성하기"><br/>
   <a href="/notice/list1">목록</a>
</form>
</body>
</html>