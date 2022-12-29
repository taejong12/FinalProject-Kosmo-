<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/instructional.css">

<meta charset="UTF-8">
<title>전통주 소개</title>
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
	padding: 0px 200px 0px 300px;
}
</style>



</head>
<body>
	<section>
		<div class="login_box">
			<div class="img">
				<img src="../img/전통주란.png" />
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>