<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	var star = $('.stars').val();
	console.log(star);
	if(star == 1){
		$('#rate5').attr('checked', true);
	}else if(star == 2){
		$('#rate4').attr('checked', true);
	}else if(star == 3){
		$('#rate3').attr('checked', true);
	}else if(star == 4){
		$('#rate2').attr('checked', true);
	}else if(star == 5){
		$('#rate1').attr('checked', true);
	}
	
});
</script>

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
<link rel="stylesheet" href="/css/review/write.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<body>
	<section>
		<div id="nogihoon">
			<div class="login_box">
				<form action="/reviewEdit" method="post" id="reviewform">
					<fieldset id="ww">
						<div id="writeInput">
							<div class="pic">
								<img src="/img/finallogo.png" alt="이미지" id="pic2">
							</div>
							<strong class="stName">작성자 :</strong> <input type="text"
								class="writt" value="${list.userName}" readonly
								style="width: 360px;"><br />
							<br /> <strong class="stName">제 &nbsp 목 :</strong> <input
								type="text" class="writt" name="title" value="${list.title}"
								placeholder="제목을 입력해주세요." style="width: 360px;"><br />
							<br /> <strong class="stName">내 &nbsp 용 :</strong>
							<textarea name="content" cols="49" rows="5"
								placeholder="내용을 입력해주세요.">${list.content}</textarea>
							<br />
							<br />
							<div id="myform">
								<strong id="stName"> 별 &nbsp 점 : </strong>
								<fieldset id="starSet">
									<span class="text-bold"></span> <input type="hidden"
										value="${list.star}" class="stars" /> <input type="radio"
										name="star" class="chkStar" value="5" id="rate1"><label
										for="rate1">★</label> <input type="radio" name="star"
										class="chkStar" value="4" id="rate2"><label
										for="rate2">★</label> <input type="radio" name="star"
										class="chkStar" value="3" id="rate3"><label
										for="rate3">★</label> <input type="radio" name="star"
										class="chkStar" value="2" id="rate4"><label
										for="rate4">★</label> <input type="radio" name="star"
										class="chkStar" value="1" id="rate5"><label
										for="rate5">★</label>
								</fieldset>
							</div>
							<input type="hidden" name="userName" value="${SPRING_SECURITY_CONTEXT.authentication.principal.user.username}"/>
							<input type="hidden" name="reNum" value="${list.reNum}" /> 
							<input type="submit" class="login_btn" id="submit" value="수정하기"><br />
							<input type="button" class="login_btn" id="no" value="나의후기 목록보기">
							<!-- <a href="/reviewList" class="login_btn">후기 목록보기</a> -->
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<script>


$("#no").click(function(){
	location.href="/myReviewList/${list.userName}";
});   

$("#submit").click(function(){
	if( confirm('수정하시겠습니까?') == false ){ return false;}
	else {document.getElementById('reviewform').submit(); }
}); 


</script>

	</section>
	<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>