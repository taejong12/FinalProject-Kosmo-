<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/review/reviewList.css">
<meta charset="UTF-8">
<title>상품후기</title>
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
  padding: 20px 100px 0px 200px;
}

</style>


</head>
<body>
<section>
	<div class="recontents">
		<div class="board_zone_tit">
			<h1>상품후기</h1>
		</div>
		<c:if test="${empty list}">
		등록된 상품후기가 없습니다.
		</c:if>
		<c:if test="${!empty list}">
			<div class="review_zone_cont">
				<div class="review_zone_list">
					<div class="review_list_gallery">
						<c:forEach items="${list}" var="dto">
							<ul>
								<li style="width: 20%">
									<div class="review_img">
										<a href="/reviewDetail?reNum=${dto.reNum}">
										 	<img src="${dto.alOpic}">
										 </a>
									</div>
								</li>
								<li><a href="/reviewDetail?reNum=${dto.reNum}">${dto.alName}</a></li>
								<li class="rating_star">
									<c:choose>
										<c:when test="${dto.star==5}">
											<label for="5-stars" class="star">★★★★★</label>
										</c:when>
										<c:when test="${dto.star==4}">
											<label for="4-stars" class="star">★★★★</label>
										</c:when>
										<c:when test="${dto.star==3}">
											<label for="3-stars" class="star">★★★</label>
										</c:when>
										<c:when test="${dto.star==2}">
											<label for="2-stars" class="star">★★</label>
										</c:when>
										<c:otherwise>
											<label for="1-stars" class="star">★</label>
										</c:otherwise>
									</c:choose>
								</li>
								<li><a href="/reviewDetail?reNum=${dto.reNum}">${dto.title}</a></li>
								<li>${dto.userName}</li>
								<li>${dto.reDate}</li>
								<li><p>&nbsp; &nbsp;</p></li>
							</ul>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:if>
	</div>
	</section>
	<!-- 푸터 -->
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
	<!-- 푸터 -->
</body>
</html>