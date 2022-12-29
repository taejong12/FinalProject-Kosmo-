<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/link.jsp" %>
<link rel="stylesheet" href="/css/layout/nav.css">
<link rel="stylesheet" href="/css/user/myPage.css">
 
<%@ include file="/WEB-INF/view/include/Top.jsp" %>
 
	<div class="wrap"> 
 
	    <section class="title">
	        <h1>my page</h1> 
	    </section>
			
	    <!-- 콘텐츠 -->
	    <main>
	    	<div class="container">
	    	
		    	<div class="grid_box">
		    		<div class="login_box">
	    				 <c:if test="${empty SPRING_SECURITY_CONTEXT }">
	                         <a href="/login"><span>로그인을 해주세요</span></a>
	                    </c:if>
	                    
	                    
	                    <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
                            <c:set var="nickname" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }" />
	                        <a href="/user/myInfo"><span class="nickname" data-nickname=${nickname } >${nickname }</span></a>
							<button type="button" class="logout">로그아웃</button>
	                    </c:if>
		    		</div>		    		
		    		<div>
						<a href="/cart/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/icon44.png" alt="장바구니">
							</span>
							<span>장바구니</span>
						</a>
		    		</div>
		    		
		    		
		    		<div>
		    		
						<a href="/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/icon55.png" alt="주문내역">
							</span>
							<span>주문내역</span>
						</a>
		    		</div>
		    		
		    		
		    		<div>
						<a href="/user/myReview" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/icon66.png" alt="리뷰관리">
							</span>
							<span>리뷰관리</span>
						</a>
		    		</div>
		    		<div>
						<a href="/user/myInfo" onclick="return loginCheck()" >
							<span class="img_box">
								<img src="/img/icon66.png" alt="내정보수정">
							</span>
							<span>내정보수정</span>
						</a>
		    		</div>
		    		
		    	</div>
	    		
	    	</div>
	    </main>
	    
    </div>
    
    <!-- 콘텐츠 -->
 
 
    
 
    <!-- 푸터 -->
    <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    <!-- 푸터 -->
 
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
 
</html>