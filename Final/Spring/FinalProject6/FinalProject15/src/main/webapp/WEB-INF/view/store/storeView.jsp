<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
	<%@ include file="/WEB-INF/view/include/link.jsp"%>
	<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> title here</title>
<link rel="stylesheet" href="/css/layout/navbar.css">
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/store/storeView.css">
<style type="text/css">
html,
body {
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
<body style="background-color: #fff;">
<section>
	<div id="listmain">
		<span class="al_subject">${alKind}	</span>
		<c:choose>
			<c:when test="${empty dto }">
			</c:when>
			<c:otherwise>
					<div class="album py-5">
						<div class="container">
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
								<c:forEach items="${dto }" var="dto">
								<div class="col">
									<div class="card shadow-sm">
										<div class="bd-placeholder-img card-img-top" style="display: flex; justify-content: center;">
											<a href="alView?alNum=${dto.alNum}">
												<img class="bd-placeholder-img card-img-top"  id="alOp" src="${dto.alOpic}"referrerpolicy="no-referrer" />
												<br>
												<b>상품명:</b><b style="font-size: 20px;">${dto.alName }</b><br>
												<b>가격:</b><b style="font-size: 20px;">${dto.alPrice } 원</b>
											</a>
										</div>
									</div>
								
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
			</c:otherwise>
		</c:choose>
	</div>
	</section>
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
	<!-- 푸터 -->
</body>
</html>