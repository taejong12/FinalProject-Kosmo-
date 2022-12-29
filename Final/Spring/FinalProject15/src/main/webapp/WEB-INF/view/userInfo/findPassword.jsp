<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/userInfo/findPassword.css"> 
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	


<body style="font-family: 'Hahmlet', serif;">	
	<div style="margin-left: 46%;
    margin-top: 2%;"><h1 class="titlejoin">비밀번호 찾기</h1></div>
	<main class="find_password_page">
	<div class="login_box">
			<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a><br/><br/>
			<h3 style="color: white;">가입하신 아이디를 통해 찾을 수 있습니다.</h3>
			<input type="text" name="username" class="username" required placeholder="아이디를 입력해 주세요"><br/>
			<button type="button" class="next_page">찾기</button>
		</div>
	</main>
	
<script src="/js/userInfo/findPassword.js"></script>
</body>
</html>
