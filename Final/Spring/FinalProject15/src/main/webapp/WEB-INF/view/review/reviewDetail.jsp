<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/review/reviewDetail.css">
<meta charset="UTF-8">
<title>상품후기</title>
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
}
</style>
</head>
<body>
	<section>
		<div class="review">
			<div class="board_zone_sec">
				<div class="board_zone_tit">
					<h2>상품후기</h2>
				</div>
				<div class="board_zone_cont">
					<div class="board_zone_view">
						<h3>제목 : ${dto.title}</h3>
						<table id="reviewtable">

							<tr>
								<td>닉네임 : ${dto.userName}</td>

								<td>날짜 : ${dto.reDate}</td>
								<td>별점 :</td>
								<td class="rating_star"><c:choose>
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
									</c:choose></td>
							</tr>
							<tr style="border-top: 1px solid black;">
								<td><img src="${dto.alOpic}"></td>

								<td style="font-size: 140%;">${dto.content}</td>
							</tr>

							<tr>
								<td>상품명 : <b>${dto.alName}</b></td>
								<c:if
									test="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username eq dto.userName}">
									<td class="card-btn" colspan="3"><button class="order_btn"
											type="button"
											onclick="location.href='/reviewEditView?reNum=${dto.reNum}&userName=${dto.userName}'">수
											정</button>

										<button class="order_btn" type="button"
											onclick="if( confirm('삭제하시겠습니까?') == false ) return false; location.href='/reviewDelete?reNum=${dto.reNum}&userName=${dto.userName}'">삭
											제</button></td>
								</c:if>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</div>
	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>