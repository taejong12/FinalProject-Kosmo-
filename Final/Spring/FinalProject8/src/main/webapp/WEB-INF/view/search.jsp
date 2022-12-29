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
<link rel="stylesheet" href="/css/include/navbar.css">
</head>
<body style="background-color: #f8f8f8;">
	<span style="    font-size: 40px;
    text-align: center;
    display: block;
    margin-top: 50px;"><%= request.getParameter("keyword")%> 검색결과</span>
	<div style="margin-top: 3%;  ">
		<c:choose>
			<c:when test="${empty list }">
			</c:when>
			<c:otherwise>
				<c:forEach var="item" items="${list}">
					<ul class="searchlist">
						<li class="searchlist">
						<div id="searchdiv">
						<a href="alView?alNum=${item.alNum}">
						<img id="alOp" src="${item.alOpic}"referrerpolicy="no-referrer" />
						<div id="searchdetail">
						<div id="searchname">상품명 : <b ><span> ${item.alName }</span></b></div><br> 
						도수 :<span> ${item.alAbv } %</span><br>
						용량 :<span> ${item.alVolume } ml</span><br>
						<p id="searchja">재료 :<span> ${item.alJaeryo }</span></p><br>
						가격 :<span> ${item.alPrice } 원</span>
						</div></a>
						</div>
						<hr >
						</li>
						
					</ul>
				</c:forEach>
			</c:otherwise>
		</c:choose>



	</div>

	<!-- 푸터 -->
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
	<!-- 푸터 -->
</body>
</html>