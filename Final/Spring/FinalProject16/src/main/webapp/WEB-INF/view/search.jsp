<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/link.jsp"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/search.css">
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
	padding: 0px 150px 0px 250px;
}
</style>


</head>
<body style="background-color: #fff;">
	<section>
		<div style="text-align: center; display: block; margin-top: 3%;">
			<form class="d-flex" id="searchForm" action="/search" method="get"
				style="justify-content: center;">
				<input class="form-control me-2 titlesea" type="search"
					name="keyword" placeholder="Search" aria-label="Search"
					value="<%=request.getParameter("keyword")%>"
					style="min-width: 200px; width: 200px; height: max-content;">
				<button class='btn search_btn'
					style="background-color: black; color: white; width: 5%; margin-bottom: 0%" type="submit">Search</button>
			</form>
		</div>
		<div style="margin-top: 1%;">
			<c:choose>
				<c:when test="${empty list }">
					<h2 style="text-align: center;">검색하신 상품이 없습니다.</h2>
				</c:when>
				<c:otherwise>
					<div class="album py-5">
						<div class="container">
							<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-2">
								<c:forEach items="${list}" var="item">
									<div class="col">
										<div class="card shadow-sm">
											<div class="bd-placeholder-img card-img-top"
												style="display: flex; justify-content: center; min-height: 200px; height: 380px;">
												<a href="alView?alNum=${item.alNum}"> <img
													class="bd-placeholder-img card-img-top" id="alOp"
													src="${item.alOpic}" referrerpolicy="no-referrer" />

													<hr>

													<div style="max-width: 200px;">
														<b class="alname" style="font-size: 22px;">${item.alName }</b>
													</div> <b>도수 :</b><b> ${item.alAbv } %</b><br> <b>용량 :</b><b>
														${item.alVolume } ml</b><br> <b>가격 :</b><b
													style="font-size: 22px;"> ${item.alPrice } 원</b>
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