<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	
<link rel="stylesheet" href="/css/userInfo/auth.css"> 
	
	<main>
	<div class="login_box">
			<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a><br/><br/>
			<div class="find_info">
				
				<div class="find">
					<div id="find_by_email">
						<input type="radio" id="email" value="email" name="find">
						<label for="email">가입한 이메일로 찾기</label>
						
						<div class="auth">
							<input type="email" class="email" placeholder="이메일을 입력해주세요" maxlength="50">
							<button type="button" class="auth_num_send_eemail">인증번호 받기</button><br/>
							<input type="text" class="auth_num" name="authNum" readonly maxlength="6"  placeholder="인증번호 6자리를 입력하세요">
							<span class="timer"></span>
						</div>
					</div>
					<br/><br/><br/>
					
					<div id="find_by_phone">
						<input type="radio" id="phone" value="phone" name="find">
						<label for="phone">전화번호로 찾기</label>
						<div class="auth">
							<input type="text" class="phone" maxlength="11" placeholder="전화번호를 입력해주세요">
							<button type="button" class="auth_num_send_phone" >인증번호 받기</button><br/>
							<input type="text" class="auth_num" name="authNum" readonly maxlength="6"  placeholder="인증번호 6자리를 입력하세요">
							<span class="timer"></span><br/><br/><br/><br/>
						</div>
					</div>
					
				</div>
				<button class="move_modify">다음</button>
			</div>
		</div>
	</main>
	
 	<script type="text/javascript" src="/js/util/util.js" ></script>
	<script src="/js/userInfo/auth.js"></script>
 
 
<script>
 
</script>
</body>
</html>
