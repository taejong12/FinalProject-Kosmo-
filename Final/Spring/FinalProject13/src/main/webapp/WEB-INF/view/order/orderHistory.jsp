<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ include file="/WEB-INF/view/include/link.jsp" %>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 주문 내역</title>
<link rel="stylesheet" href="/css/layout/nav.css">
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/order/orderHistory.css">
</head>
<body>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>

         <div class="form-group">
               <div class="row" style="text-align: center;">
                  <h1 class="page-header" style="margin-bottom: 50px;">《주문 내역 페이지》</h1>
                  <table class="table table-hover"
                     style="margin: auto;">
                     <thead>
                        <tr>
                           <th>주문번호</th>
                           <th>결제날짜</th>
                          <th colspan="2" style="text-align: center;">상품명</th>
                          <th>결제수량</th>
                          <th>결제상태</th>
                          <th>결제금액</th>                          
                          <th>배송주소</th>
                          <th>후기</th>
                       </tr>   
                    </thead>
                    <tbody style="text-align: left;">
                    <c:choose>
                       <c:when test="${empty orderInfo}">                       
                             <div>결제내역이 없습니다.</div>   
                       </c:when>
                       <c:otherwise>
                          <c:forEach items="${orderInfo}" var="order">
                        <tr>
                           <td >
                              ${order.orNum}
                           </td>
                           <td>
                              ${order.orPayDate}
                           </td>
                           <td id="image"><img src="${order.alOpic}" referrerpolicy="no-referrer" class="img"/></td>
                           <td class="aln">
                              ${order.alName}
                           </td>
                           <td>${order.caCount} 병</td>
                           <td>
                              ${order.orPayStatus}
                           </td>
                           <td >
                              <fmt:formatNumber value="${order.orTotalPrice}" pattern="#,### 원" />
                           </td>                           
                           <td>
                              ${order.orRoadAddress}, ${order.orDetailAddress}
                           </td>
                           
                           <td class="review">
                           	   <button class="review_btn">후기 작성</button>
                           </td>
                           
                        </tr>
                        <form class="reviewDataForm" action="/reviewData" method="post">
						 	<input type="hidden" name="alNum" value="${order.alNum}">
						 	<input type="hidden" name="alName" value="${order.alName}">
						 	<input type="hidden" name="alOpic" value="${order.alOpic}">
						 	<input type="hidden" name="orPayDate" value="${order.orPayDate}">
						 	<input type="hidden" name="userName" value="${order.userName}">
					 	</form>
                     </c:forEach>
                       </c:otherwise>
                    </c:choose>

               </tbody>
            </table>
 	
 	
   </div>
</div><!-- class=row -->

<script>
$(document).ready(function() {
	$(".review_btn").click(function() {
		$(".reviewDataForm").submit();
		
	})
})
</script>

</body>
<%@ include file="/WEB-INF/view/include/footer.jsp" %>
</html>