<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료</title>


<link rel="stylesheet" href="/css/order/orderSuccess.css">

</head>
<body>
	<section>
		<div class="order-contain">
			<h1>결제가 완료되었습니다.</h1>
			<button type="button"
				onclick="location.href='/orderList/${SPRING_SECURITY_CONTEXT.authentication.principal.user.username }'">주문내역확인</button>
		</div>
	</section>

	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>