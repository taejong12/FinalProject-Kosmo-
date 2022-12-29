<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<link rel="stylesheet" href="/css/review/reviewDetail.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품후기</title>
</head>
<body>
	<div class="review">
		<div class="board_zone_sec">
			<div class="board_zone_tit">
				<h2>상품후기</h2>
			</div>
			<div class="board_zone_cont">
				<div class="board_zone_view">
					<div class="board_view_tit">
						<h3>${dto.title}</h3>
					</div>
					<div class="board_view_info">
						<span class="view_info_idip"> 
							<strong>${dto.userName}</strong>
						</span>
							 <span class="view_info_day"> 
							 	<span>${dto.reDate}</span>
							 </span> 
						<span class="rating_star"> 
							<span style="width: 60%;">&nbsp;</span>
								<span> 
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
								</span>
						</span>
					</div>
					<div class="board_view_content">
						<div class="view_goods_select">
							<div class="view_goods_select_item">
								<span class="view_select_item_img">
									<a href="alView?alNum=${dto.alNum}">
									 <img src="${dto.alOpic}"></a>
								</span> 
								<span class="view_select_item_info"> 
									 <strong>${dto.alName}</strong>
								</span>
							</div>
						</div>
						<div class="seem_cont">
							<div style="margin: 10px 0 10px 0">
								<p>${dto.content}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href="/reviewDelete?reNum=${dto.reNum}&userName=${dto.userName}">삭제하기</a>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</html>