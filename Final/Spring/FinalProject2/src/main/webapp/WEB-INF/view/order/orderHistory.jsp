<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 주문 내역</title>
</head>
<body>
<%@ include file="/WEB-INF/view/include/header.jsp" %>

	      <div class="form-group">
               <div class="row" style="text-align: center;">
                  <h1 class="page-header" style="margin-bottom: 50px;">나의 주문 내역</h1>
                  <table class="table table-hover"
                     style="margin: auto; border: 1px solid black;">
                     <thead>
                        <tr>
		                    <th colspan="2" style="text-align: center;">상품명</th>
		                    <th>결제수량</th>
		                    <th>결제상태</th>
		                    <th>결제금액</th> 
		                    <th>결제일</th>
		                    <th>배송주소</th>
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
									<td><img src="${order.alOpic}" referrerpolicy="no-referrer" /></td>
									<td>
										${order.alName}
									</td>
									<td>${order.orTotalAmount}</td>
									<td>
										${order.orPayStatus}
									</td>
									<td >
										<fmt:formatNumber value="${order.orTotalPrice}" pattern="#,### 원" />
									</td>
									<td>
										${order.orPayDate}
									</td>
									<td>
										${order.orRoadAddress}
									</td>
								</tr>
							</c:forEach>
		              	</c:otherwise>
		              </c:choose>
              
              
              
              
               <%--   <c:choose>
                    <c:when test="${orderList == null}">
                       <tr style="text-align: center;"><td colspan="8"><h3>주문 내역이 없습니다.</h3></td></tr>
                    </c:when>
                    <c:otherwise>
                       <c:forEach items="${orderList}" var="dto">
                          <tr>
                          	 <td><img alt="이미지" src="/resources/upload${dto.fullname}" width="40%"></td>
                             <td style="text-align: center;"><img alt="thumbnail"
                                src="/resources/upload${dto.fullname}" width="40%"> <input
                                type="hidden" value="${dto.productId}" name="productId"
                                id="productId"></td>
                             <td>${dto.productName}<br>${dto.productInfo}</td>
                             <td><fmt:formatNumber type="number"
                                   value="${dto.price}" />&nbsp;원</td>
                             <td>${dto.order_Qty}</td>
                             <td>${dto.selected_Opt}</td>
                             <td><fmt:formatNumber type="number"
                                   value="${dto.orTotalAmount}" />&nbsp;원</td>
                             <td><fmt:formatDate value="${dto.billingDate}"
                                   type="date" pattern="yyyy-MM-dd" /></td>
                             <td>${dto.deliver_situ == 0 ? "배송준비중" : 
                                      dto.deliver_situ == 1 ? "배송중" : "배송완료"}</td>
                             <c:choose>
                                <c:when test="${dto.deliver_situ != 0}">
                                   <td>
                                      <button class="btn btn-default disable"
                                         disabled="disabled">주문취소</button>
                                      <br>
                                   </td>
                                </c:when>
                                <c:otherwise>
                                   <td>
                                      <button class="btn btn-default order_cancel"
                                         onclick="location.href='/order/cancel/'+ ${dto.orderId}">주문취소</button>
                                       <br>
                                    </td>
                                 </c:otherwise>
                              </c:choose>
                           </tr>
                        </c:forEach>
                     </c:otherwise>
                  </c:choose> --%>
               </tbody>
            </table>
  <!--        </div>
      </div> -->

   </div>
</div><!-- class=row -->

<%@ include file="/WEB-INF/view/include/nav.jsp" %>
<button type="submit" onclick="location.href='/';">홈페이지</button>
<%@ include file="/WEB-INF/view/include/footer.jsp" %>

</body>
</html>