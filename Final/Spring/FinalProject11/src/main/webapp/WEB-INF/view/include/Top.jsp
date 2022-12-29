<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/layout/Top.css">

<%@ include file="/WEB-INF/view/include/link.jsp"%>
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing:border-box;
}

html, body {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  background-color: #f8f8f8;
  width: 100%;
  height: 100%;
  padding-top:30px;
}

.accordion {
  --radius: 0.25rem;
  width: 400px;
  height: fit-content;
  margin: 0 auto;

  &-item {
    width: 100%;
    height: 60px;
    perspective: 1000px;
    transform-style: preserve-3d;
    margin-bottom: 0.5rem;

    &.active {
      height: fit-content;
      border-radius: var(--radius);
      animation: ringFadeIn 0.25s forwards 0.4s;
      .accordion-header {
        color: hsl(240, 63%, 50%);
        width:100%;
      }

      .accordion-content {
        width: 100%;
        border-top: 0;
        height: fit-content;
        max-height: 300px;
        overflow-y: auto;
        transform: translate3d(0, 0, 0) scale(1);
        white-space: normal;
        line-height: 150%;
      }
    }
  }

  &-header {
    width:100%;
    user-select: none;
    cursor: pointer;
    padding: 1rem;
    border: 1px solid #ddd;
    background-color: white;
    transform: translate3d(0, 0, 1px);
    border-top-left-radius: var(--radius);
    border-top-right-radius: var(--radius);
    transition: all 0.4s ease-in-out;
    h2{
      font-size: 1rem;
    }
  }

  &-content {
    border: 1px solid #ddd;
    width: 100%;
    height: auto;
    max-height: 50px;
    background-color: white;
    overflow: hidden;
    padding: 1rem;
    transition: all 0.4s ease-in-out;
    transform: translate3d(0, -45px, 0) scale(0.95);
    transform-origin: bottom;
    filter: drop-shadow(0 3px 3px hsla(0, 1%, 90%, 0.5));
    border-bottom-right-radius: var(--radius);
    border-bottom-left-radius: var(--radius);
    white-space: nowrap;
    text-overflow: ellipsis;
    font-size: 0.875rem;
    color:hsl(0,0%,40%);
  }
}
@keyframes ringFadeIn {
  0%{
    box-shadow: (0 0 0 0px hsl(240, 94%, 88%));
  }
  100%{
    box-shadow: (0 0 0 2px hsl(240, 94%, 88%));
  }

}

.logo{
left: -284%;
}

li a{
text-decoration-line: none;}
</style>

 
<header style="background:rgba(125, 125, 125, 0.1);" >
   <div id="header" class="allmenu mov03 box fixed">
      <!-- 멀티상점 선택 -->

      <!-- 멀티상점 선택 -->
      <div class="header_top  div">
         <div class="headerR -box div">
            <div class="grid_box">
               <ul>
				  <c:if test="${empty SPRING_SECURITY_CONTEXT }">
				  <li class="logo">
				  <a href="/home"><img src="/img/finallogo.png" style="width:80px; margin-top:38%;"></a>
				  </li>
				  </c:if>
				   <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
				   <li class="logo" style="left: -235%;" >
				   <a href="/home"><img src="/img/finallogo.png" style="width:80px; margin-top:38%;"></a>
				   </li>
				   </c:if>
                  <li><c:if test="${empty SPRING_SECURITY_CONTEXT }">
                        <li><a href="/login">로그인</a></li>
                     </c:if> 
                     <c:if test="${!empty SPRING_SECURITY_CONTEXT }">
                        <c:set var="nickname"
                           value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.nickname }" />
                        <a href="/myPage"><span class="nickname"
                           data-nickname=${nickname }>${nickname }</span>님 환영합니다!</a>
                        <li><a href="/logout">로그아웃</a></li>
                     </c:if> <c:if test="${empty SPRING_SECURITY_CONTEXT }">
                        <li class="join"><a href="../join">회원가입</a></li>
                     </c:if></li>
                  <li><a href="/myPage" onclick="return loginCheck()">마이페이지</a>
                     <div class="sub-category -ly">
                        <ul>
                           <li><a
                              href="/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
                              onclick="return loginCheck()">주문내역</a></li>
                           <li><a
                              href="/cart/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }"
                              onclick="return loginCheck()">장바구니<strong></strong></a></li>
                           <li><a 
                              href="/myReviewList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}"    
                           	  onclick="return loginCheck()"><span>나의후기</span></a></li>
                           	  <li><a 
                              href="/user/myInfo"    
                           	  onclick="return loginCheck()"><span>내정보수정</span></a></li>
                        </ul>
                     </div></li>


                  <li><a href="#none">커뮤니티</a>
                     <div class="sub-category -ly">
                        <ul>
                           <li><a href="/reviewList"><span>구매후기</span></a></li>
                        </ul>
                     </div></li>
            </div>
         </div>
      </div>
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
            	swal("로그인 후 이용 가능합니다.");
            	
               return false;
            }
            return true;

         }
      </script>
   </div>
</header>