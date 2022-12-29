<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/link.jsp" %>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<link rel="stylesheet" href="/css/user/login.css">
<head>
<c:if test="${!empty loginFailMsg }">
    <script type="text/javascript">
        const msg = "${loginFailMsg}";
        alert(msg);
    </script>
</c:if>
</head>
<body>
    <main>
        <div class="login_box">
			<a href="/home"><img src="/img/finallogo.png" alt="이미지" class="logo_img"></a>    
            
            <form action="/login" method="post">
 				
 				<h3 class="melo">LOGIN</h3><br>
	            <div class="input_aera"><input type="text" name="username"  value="" required placeholder="아이디를 입력해 주세요" maxlength="30" ></div>
	            <div class="input_aera"><input type="password" name="password" value="" required placeholder="비밀번호를 입력해 주세요" maxlength="30"></div>
 
				<div id="login_allbox"><input type="submit" value="로그인" class="login_btn" ></div>
            
				<div class="box">
					<div class="continue_login">
						<label for="continue_login"> 
							<span>로그인 유지하기</span>
							<input type="checkbox" id="continue_login" name="remember-me" > 
							<i class="fas fa-check-square"></i>
						</label>
					</div>
					
		            <div>
		            	<span class="search"><a href="/find/id">아이디 찾기</a></span>
						<span>│</span>
			            <span class="search"><a href="/find/password">비밀번호 찾기</a></span>
						<span>│</span>
						<span class="search"><a href="/join" >회원가입</a></span>
		            </div>
	            </div>
            </form>
            
			<div id="oauth_login">
				<div>
					<a href="/oauth2/authorization/kakao"></a>
				</div>
 
				<div>
					<a href="/oauth2/authorization/naver"></a>
				</div>
				
				<div>
					<a href="/oauth2/authorization/google"></a>
				</div>
			</div>
        </div>
    </main>
    
    
</body>
</html>
