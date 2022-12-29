<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	

<link rel="stylesheet" href="/css/userInfo/findId.css">
<body style="font-family: 'Hahmlet', serif;">
			<div style="margin-left: 46%;
    margin-top: 2%;"><h1 class="titlejoin">아이디 찾기</h1></div>
	<main>
		<div class="login_box">
			<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a><br/><br/>
			<h3 style="color: white;">아이디는 가입시 입력하신 이메일을 통해 찾을 수 있습니다.</h3><br/>
			<input type="email" name="email" class="email" required placeholder="이메일을 입력해 주세요"><br/>
			<button class="find_btn">찾기</button><br/><br/>
			<div class="find_password"><a href="/find/password" style="color: white;">비밀번호 찾기</a></div>
		</div>
	</main>	

 
	<script src="/js/userInfo/findId.js" ></script>
 	<script type="text/javascript" src="/js/util/util.js" ></script>
</body>
</html>