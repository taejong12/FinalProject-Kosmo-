<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="/css/user/myPage.css">
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
	padding: 0px 200px 0px 350px;
}
</style>

</head>

<body>
	<section>
		<div class="wrap">

				<h1 style="">마이페이지</h1>
				<hr>

			<!-- 콘텐츠 -->
			<main>
				<hr>
				<div class="nick">
					<c:if test="${!empty SPRING_SECURITY_CONTEXT }">
						<c:set var="nickname"
							value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }" />
						<span class="nickname" data-nickname=${nickname }>${nickname }
							회원님</span>
					</c:if>
				</div>
				<table class="mypage">


					<tr>
						<td><a
							href="/cart/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
							onclick="return loginCheck()"> <span class="img_box">
									<img class="img1" src="/img/my_cart.png" alt="장바구니">
							</span> <span>장바구니</span>
						</a></td>
						<td><a
							href="/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
							onclick="return loginCheck()"> <span class="img_box">
									<img class="img1" src="/img/orderall.png" alt="주문내역">
							</span> <span>주문내역</span>
						</a></td>
						<td><a
							href="/myReviewList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
							onclick="return loginCheck()"> <span class="img_box">
									<img class="img1" src="/img/review.png" alt="리뷰관리">
							</span> <span>나의 후기</span>
						</a></td>
					</tr>

					<tr>
						<td></td>
						<td></td>
						<td rowspan="3">
							<button class="updateInfo_btn" onclick="return loginCheck()">내
								정보 수정</button>
							<button class="updateInfo_btn" onclick="return loginCheck2()">회원탈퇴
									</button>
									<input type="hidden" class="userName" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }">
						</td>
						<td></td>
					</tr>
				</table>
				<hr />
			</main>

		</div>

		<!-- 콘텐츠 -->


		<script type="text/javascript">
			$(".updating").click(function() {
				swal("업데이트 준비 중 입니다");
			})

			$(".logout").click(function() {
				location.href = "/logout";
			})

			function loginCheck() {
				const nickname = $(".nickname").data("nickname");
				if (!nickname) {
					swal("로그인 후 이용 가능합니다");
					return false;
				}
				return location.href = "/user/myInfo";

			}
			function loginCheck2() {
				const nickname = $(".nickname").data("nickname");
				const userName = $(".userName").val();
				if (!nickname) {
					swal("로그인 후 이용 가능합니다");
					return false;
				}
				swal({
					text: '회원탈퇴 하시겠습니까?',
					buttons: ['취소', '탈퇴하기']
				}).then(function(){
					return location.href = "/user/out/"+userName;
				})
				
	
			}
		</script>
	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
