<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp" %>	
	
	<main class="find_id_page">
		<div class="find_info">
			<h3>가입하신 이메일을 입력해주세요</h3>
			<input type="email" name="email" class="email">
			<button class="find_btn">찾기</button>
			<div class="find_password"><a href="/find/password">비밀번호 찾기</a></div>
		</div>
	</main>	

 
	<script src="/js/userInfo/findId.js" ></script>
 	<script type="text/javascript" src="/js/util/util.js" ></script>
</body>
</html>