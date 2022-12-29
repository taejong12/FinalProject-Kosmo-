<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/link.jsp"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>

<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/layout/navbar.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
	integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
	crossorigin="anonymous"></script>
</head>
		<header>
			
<div class="top_area"></div>

	<!-- //header -->
	

	</header>
<body style="background:#f8f8f8">
<!-- //header_warp -->

<div id="container">
	<div id="contents">
		<!-- 본문 시작 -->
		<!-- //location_wrap -->
		<div class="sub_content">
			<div class="side_cont">
				<div id="WD_main">
					
					<!-- 메인타이틀 수정하는곳 -->
					<div class="main_title fadeInLeft animate" style="padding-top: 8%;">
						<div class="t1">한 주 (韓 酒)</div>
						<div class="t1">　	</div>
						<div class="t1">TRADITIONAL LIQUOR</div>
						<div class="t2">자랑스런 우리 전통주.</div>
					</div>
					<!-- 배너 -->
   <div style="margin-top: 3%; margin-bottom: 3%" id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href="/store?al_kind=일반증류주"><img src="/img/carousel1.jpg" class="d-block w-100" alt="배너1"></a>
    </div>
    <div class="carousel-item">
      <img src="/img/carousel2.jpg" class="d-block w-100" alt="배너2">
    </div>
    <div class="carousel-item">
      <img src="/img/carousel3.png" class="d-block w-100" alt="배너3">
    </div>
    <div class="carousel-item">
      <img src="/img/carousel4.png" class="d-block w-100" alt="배너4">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
					<!-- 이런 술은 어떠신가요? -->
					<div class="main_title fadeInLeft animate">
						<div class="t1">HOW ABOUT THIS?</div>
						<div class="t2">이런 술은 어떠신가요?</div>
					</div>
					<!-- //main_title -->
					<!-- 메인 상품 노출 -->
					<div class="fadeInUp animate">
						<div class="goods_list main_wrap_19">
							<div class="goods_list_cont goods_content_19">
								<div class="000" >
								  <c:forEach items="${list }" var="dto">
									<ul>
										<li >
											<div class="item_cont">
												<div class="item_photo_box">
														<a href="alView?alNum=${dto.alNum}" class="alnumlink"> <img class="alopicimg"
															src="${dto.alOpic}" referrerpolicy="no-referrer"/>
															<div class="item-sale mov03">
																<span>${dto.alAbv}%</span>
															</div>
														</a>
												</div>
												<!-- //item_photo_box -->
												<div class="item_info_cont">
													<div class="item_tit_box">
														<a href="alView?alNum=${dto.alNum}" class="alnumlink"> <strong
															class="item_name"></strong> <span
															class="item_name_explain">${dto.alName}</span>
														</a>
													</div>
													<!-- //item_tit_box -->
													<div class="item_money_box">
														<span style="color: #888; text-decoration: line-through;"></span>
														<strong class="item_price"> <span style="">${dto.alPrice}원
														</span>
														</strong>
													</div>
												</div>
											</div>
										</li>
									</ul>
														</c:forEach>
								</div>
							</div>

							<!-- 메인하단배너 -->
							<!-- ──────────────────────────────────────────────

  ※ 이미지 사이즈 : 샘플이미지 참조
  ※ 이미지변경 및 링크변경 및 문구는 배너관리에서 해당 배너를 수정하시면 됩니다.

────────────────────────────────────────────── -->


						</div>
						<!-- // WD_main -->


					</div>
					<!-- //sub_content -->
				</div>
				<!-- //본문 끝 contents -->
			</div>
			<!-- //container -->

		</div>
		<!-- //ftWrap -->

	</div>
	<!-- //footer -->
</div>
<!-- //footer_wrap -->

</div>
<!-- //wrap -->

<!-- 외부 스크립트 -->

</div>
</body>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</html>
