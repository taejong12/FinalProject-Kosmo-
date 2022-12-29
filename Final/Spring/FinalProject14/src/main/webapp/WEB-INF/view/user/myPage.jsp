<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<link rel="stylesheet" href="/css/user/myPage.css">

	<div class="wrap"> 
	    <section class="title">
	        <h1>마이페이지</h1> 
			<hr>
	    </section>
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
					onclick="return loginCheck()"> <span class="img_box"> <img
							class="img1" src="/img/my_cart.png" alt="장바구니">
					</span> <span>장바구니</span>
				</a></td>
				<td><a
					href="/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
					onclick="return loginCheck()"> <span class="img_box"> <img
							class="img1" src="/img/orderall.png" alt="주문내역">
					</span> <span>주문내역</span>
				</a></td>
				<td><a
					href="/myReviewList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
					onclick="return loginCheck()"> <span class="img_box"> <img
							class="img1" src="/img/review.png" alt="리뷰관리">
					</span> <span>나의 후기</span>
				</a></td>
			</tr>

			<tr>
				<td></td>
				<td rowspan="3">
						<button class="updateInfo_btn" onclick="return loginCheck()">내 정보 수정</button>
				</td>
				<td></td>
			</tr>
		</table>
			<hr/>
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
				</script>
 
</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%> 
</html>
