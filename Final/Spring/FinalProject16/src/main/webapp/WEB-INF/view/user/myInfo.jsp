<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/link.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="/css/user/myInfo.css">
<link rel="stylesheet" href="/css/layout/nav.css">
<style type="text/css">
html, body {
	height: 100%;
	font-family: 'Hahmlet', serif;
}

body {
	display: flex;
	flex-direction: column;
}

section {
	flex: 1;
}
</style>
</head>

<body>
	<section>
		<div class="wrap">
			<div class="title" style="text-align: center; margin-top: 3%;">
				<h1 style="font-size: 45px; font-weight: normal;">내 정보 수정</h1>
			</div>
			<main>
				<div class="login_box">
					<a href="/home"><img src="/img/finallogo.png" alt="이미지"
						class="logo_img"></a>
				</div>
				<div class="info_box">

					<h2>닉네임</h2>
					<div class="user_nickname">[
						${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }
						]</div>

					<h2>비밀번호 변경</h2>
					<div>
						<div class="input_box">
							<div>
								<span>현재 비밀번호</span> <input class="present_password"
									type="password" placeholder="현재 비밀번호를 입력해주세요.">
							</div>

							<div>
								<span>신규 비밀번호</span> <input class="new_password" type="password"
									placeholder="신규 비밀번호를 입력해주세요." maxlength="20">
							</div>

							<div>
								<span>신규 비밀번호 확인</span> <input class="new_password_check"
									type="password" placeholder="신규 비밀번호를 한번 더 입력해주세요."
									maxlength="20">
							</div>
						</div>

						<div class="btn_box">
							<button type="button" class="pwd_modify"
								style="border-radius: 0px; width: 80%; height: 40px; margin-bottom: 3px; color: #fff; cursor: pointer;">확인</button>
						</div>
					</div>

					<br />
					<h2>닉네임 변경</h2>

					<div>
						<div class="input_box">
							<span>현재 닉네임</span> <input type="text" id="nickname"
								name="nickname" placeholder="변경하실 닉네임을 입력해 주세요"
								style="margin: 3px auto; width: 75%; height: 40px; padding: 0 2%; border: 1px solid #ddd; border-radius: 0px; box-sizing: border-box;">
						</div>

						<div class="btn_box">
							<button type="button" class="nickname_modify"
								style="border-radius: 0px; width: 80%; height: 40px; margin-bottom: 3px; color: #fff; cursor: pointer;">확인</button>
						</div>
					</div>

					<br />
					<h2>휴대폰 번호 변경</h2>
					<div>
						<div class="input_box">
							<div>
								<span>현재 휴대폰 번호</span> <input type="number" class="phone"
									name="phone" required placeholder="전화번호를 입력해 주세요"
									onkeypress="return lengthCheck(this, 11);"
									style="margin: 3px auto; width: 75%; height: 40px; padding: 0 2%; border: 1px solid #ddd; border-radius: 0px; box-sizing: border-box;">
							</div>

						</div>
						<div class="btn_box">
							<button type="button" class="phone_modify"
								style="border-radius: 0px; width: 80%; height: 40px; margin-bottom: 3px; color: #fff; cursor: pointer;">확인</button>
						</div>
					</div>
					<br />

					<h2>이메일 변경</h2>
					<div>
						<div class="input_box">
							<div>
								<span>현재 이메일</span> <input type="text" class="email"
									name="email" required placeholder="변경할 이메일을 입력해 주세요"
									style="margin: 3px auto; width: 75%; height: 40px; padding: 0 2%; border: 1px solid #ddd; border-radius: 0px; box-sizing: border-box;">
							</div>

						</div>
						<div class="btn_box">
							<button type="button" class="email_modify"
								style="border-radius: 0px; width: 80%; height: 40px; margin-bottom: 3px; color: #fff; cursor: pointer;">확인</button>
						</div>
					</div>
				</div>
			</main>
		</div>

		<script type="text/javascript" src="/js/user/myInfo.js"></script>
		<script type="text/javascript" src="/js/util/util.js"></script>

	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>

</body>
</html>