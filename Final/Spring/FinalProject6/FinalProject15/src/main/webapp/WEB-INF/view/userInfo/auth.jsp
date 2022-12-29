<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	
<link rel="stylesheet" href="/css/userInfo/auth.css"> 
<%@ include file="/WEB-INF/view/include/link.jsp"%>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body style="font-family: 'Hahmlet', serif;">
	<div style="margin-left: 46%;
    margin-top: 2%;"><h1 class="titlejoin">비밀번호 찾기</h1></div>
	<main>
	<div class="login_box">
			<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a><br/><br/>
			<div class="find_info">
				
				<div class="find">
					<div id="find_by_email">
						<input type="radio" id="email" value="email" name="find" class="findbtn"/>
						<label for="email">가입한 이메일로 찾기</label>
						<div class="auth" id="email_auth" >
							<input type="email" class="email em" placeholder="이메일을 입력해주세요" maxlength="50">
							<button type="button" class="auth_num_send_eemail em" >인증번호 받기</button><br/>
							<input type="text" class="authn auth_num em" name="authNum" readonly maxlength="6"  placeholder="인증번호 6자리를 입력하세요" >
							<div><span class="timer" style="color: white; font-size: 20px;"></span></div>
						</div>
						
					</div>
					<br/><br/><br/>
					
					<div id="find_by_phone">
						<input type="radio" id="phone" value="phone" name="find" class="findbtn"/>
						<label for="phone">전화번호로 찾기</label>
						<div class="auth" id="phone_auth">
							<input type="text" class="phone pm" maxlength="11" placeholder="전화번호를 입력해주세요">
							<button type="button" class="auth_num_send_phone pm" >인증번호 받기</button><br/>
							<input type="text" class="authn auth_num1 pm" name="authNum" readonly maxlength="6"  placeholder="인증번호 6자리를 입력하세요">
							<div><span class="timer1" style="color: white; font-size: 20px;"></span></div><br/><br/><br/>
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
