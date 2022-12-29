<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/link.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/layout/nav.css">
<link rel="stylesheet" href="/css/home.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<%@ include file="/WEB-INF/view/include/header.jsp"%>
<!-- 콘텐츠 -->
<div class="wrap">
	<main>
		<section class="address_search">
			<div id="search_box">
				<div>
					<input type="hidden" id="deleveryAddress1" placeholder="우편번호"
						value="${BMaddress.address1 }" name="address1" readonly> <input
						type="text" value="${BMaddress.address2 }" id="deleveryAddress2"
						readonly placeholder="배달 받으실 주소를 입력해 주세요" name="address2"
						onclick="modifyAddress()"><br> <input type="text"
						id="deleveryAddress3" value="${BMaddress.address3 }"
						name="address3" placeholder="상세주소를 입력해주세요">
				</div>

				<div class="search_btn">
					<label for="search_btn"> <i class="fas fa-search"></i>
					</label> <input type="button" name="search" id="search_btn">

				</div>
				<%@ include file="/WEB-INF/view/include/modifyAddress.jsp"%>
			</div>
		</section>
		<section class="section_Carousel">
			<div id="Carousel" style="flex: auto; width: 1000px; height: 10%; margin: auto;">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="true">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="4" aria-label="Slide 5"></button>

					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/img/a1.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/img/a2.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/img/a3.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/img/a4.jpg" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="/img/a5.jpg" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</section>

		<section class="category_box">
			<div class="box">
				<ul class="category">

					<li value="일반증류주">
						<div>
							<div class="img_box">
								<img src="/img/jeungryu.png" alt="이미지">
							</div>
						</div>
						<div class="name">일반증류주</div>
					</li>

					<li value="증류식소주">
						<div>
							<div class="img_box">
								<img src="/img/soju.png" alt="이미지">
							</div>
						</div>
						<div class="name">증류식소주</div>
					</li>

					<li value="청주">
						<div>
							<div class="img_box">
								<img src="/img/chungju.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">청주</div>
					</li>

					<li value="탁주">
						<div>
							<div class="img_box">
								<img src="/img/tacju.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">탁주</div>
					</li>


					<li value="생탁주">
						<div>
							<div class="img_box">
								<img src="/img/saengtacju.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">생탁주</div>
					</li>

					<li value="과실주">
						<div>
							<div class="img_box">
								<img src="/img/fruit.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">과실주</div>
					</li>

					<li value="리큐르">
						<div>
							<div class="img_box">
								<img src="/img/liquor.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">리큐르</div>
					</li>


					<li value="약주">
						<div>
							<div class="img_box">
								<img src="/img/yackju.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">약주</div>
					</li>

					<li value="브랜디">
						<div>
							<div class="img_box">
								<img src="/img/blandy.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">브랜디</div>
					</li>
					<li value="기타주류">
						<div>
							<div class="img_box">
								<img src="/img/etcju.jpg" alt="이미지">
							</div>
						</div>
						<div class="name">기타주류</div>
					</li>
				</ul>
			</div>
		</section>
	</main>




</div>
<!-- 콘텐츠 -->


<!-- 하단 메뉴 -->
<%@ include file="/WEB-INF/view/include/nav.jsp"%>
<!-- 하단 메뉴 -->
<!-- 푸터 -->
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
<!-- 푸터 -->

<script>
	$(".category li").click(function() {
		let value = $(this).attr("value");
		const index = $(this).index();

		location.href = "/store?al_kind=" + value;
	})
</script>


</body>

</html>