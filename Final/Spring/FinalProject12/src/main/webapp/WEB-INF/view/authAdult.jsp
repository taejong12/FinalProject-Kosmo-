<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 주(韓 酒)</title>
<link rel="stylesheet" href="/css/user/authAdult.css">
</head>
<body>
<div class="mainContents" align="center">
	<a href="/"><img src="/img/finallogo.png" alt="이미지" class="logo_img" width="200px"></a>  <br/>
	<a href="/"><img src="/img/19geum.png" alt="이미지" class="logo_img" width="300px"></a>
	<form method=get name=jumin_form onSubmit="return jumin_QC()">
		주류 판매사이트엔 미성년자는 출입할 수 없습니다.<br><br>
		이름:<input name="username" onChange="return userName_QC(this.form)" maxlength="20" size="12">
		주민등록번호 :<input maxlength=6 name=jumin1 onFocus="this.value = this.value;" onKeyUp=auto_Move(this); size=6>
		<input maxlength=7 type="password" name=jumin2 onKeyUp=prev_move(this); size=8>           
		<input type="submit" value="성인인증">
	</FORM>
	　<br>
	　<br>
	　
	　
</div>
	<script type="text/javascript" src="/js/user/authAdult.js" ></script>
</body>
</html>