<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<link rel="stylesheet" href="/css/user/myPage.css">


	<div class="wrap"> 
	    <section class="title">
	        <h1>마이페이지</h1> 
	    </section>
			
	    <!-- 콘텐츠 -->
	    <main>
	    	<div class="container">
	    	
		    	<div class="grid_box">
		    		<div class="login_box">
	    				 <c:if test="${empty SPRING_SECURITY_CONTEXT }">
	                         <a href="/login"><span>로그인 페이지로 이동</span></a>
	                    </c:if>
	                    
	                    
	                    <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
                            <c:set var="nickname" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }" />
	                        <a href="/user/myInfo"><span class="nickname" data-nickname=${nickname } >${nickname } 회원님</span></a>
							<button type="button" class="logout" 
							style="background: burlywood; border-radius: 0px; border: 0px;
									width: 10%; height: 40px; color: #fff; cursor: pointer; font-family: 'Jua', sans-serif;">
							로그아웃</button>
	                    </c:if>
		    		</div>		    		
		    		<div class="grid_box1">
						<a href="/cart/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/my_cart.png" alt="장바구니">
							</span>
							<span>장바구니</span>
						</a>
		    		</div>
		    		
		    		
		    		<div class="grid_box1">
		    		
						<a href="/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/orderall.png" alt="주문내역">
							</span>
							<span>주문내역</span>
						</a>
		    		</div>
		    		
		    		
		    		<div class="grid_box1">
						<a href="/myReviewList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/review.png" alt="리뷰관리">
							</span>
							<span>리뷰관리</span>
						</a>
		    		</div>
		    		<div></div>
		    		<a href="/user/myInfo" onclick="return loginCheck()" >
						<button class="updateInfo_btn">내 정보 수정</button>
					</a>
		    	</div>
	    		
	    	</div>
	    </main>
	    
    </div>
    
    <!-- 콘텐츠 -->
 
 
    <script type="text/javascript">
 
        $(".updating").click(function () {
            swal("업데이트 준비 중 입니다");
        })
 
        $(".logout").click(function () {
            location.href = "/logout";
        })
        
        function loginCheck(){
        	const nickname = $(".nickname").data("nickname");
        	if(!nickname) {
        		swal("로그인 후 이용 가능합니다");
	        	return false;
        	}
        	return true;
        	
        }
        
    </script>
 
</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%> 
</html>
