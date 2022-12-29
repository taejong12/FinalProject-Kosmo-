<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	

<link rel="stylesheet" href="/css/userInfo/modify.css">
	
	<main class="password_modify_page">
		<div class="login_box">
				<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a><br/><br/>
			<div class="find_info">	
				<h1>비밀번호 재설정</h1>
				<h3>새로운 비밀번호로 재설정해주세요</h3>
				<br/>
				<div class="box">
					<span id="password">새 비밀번호</span>
					<input type="password" class="password1" name="password" required placeholder="새 비밀번호를 입력해 주세요">
				</div>
				
				<div class="box">
					<span id="password">새 비밀번호 확인</span>
					<input type="password" class="password2" required placeholder="새 비밀번호를 다시 입력해 주세요">
					<div class="password_check_msg"></div>
				</div>
				<button class="modify_btn" >변경하기</button>
			</div>
		</div>
	</main>
	
	
	
 
	<script src="/js/userInfo/modify.js"></script>
 	<script type="text/javascript" src="/js/util/util.js" ></script>
 
<script>
 
</script>
</body>
</html>
