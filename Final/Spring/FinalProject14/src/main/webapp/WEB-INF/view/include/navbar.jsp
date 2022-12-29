<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/layout/navbar.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@ include file="/WEB-INF/view/include/link.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script type="text/javascript">
/* 위-아래이동움직임감지 */
(function($) {
$(document).ready(function(){
	$(window).scroll(function(){
      if ($(this).scrollTop() >= 50) {
      $('#fix_pagescroll').addClass('active');
    } else {
      $('#fix_pagescroll').removeClass('active');
    }
  });  
});


/* 위-아래이동버튼 */
$('#scrollup').click(function(){
	$('html, body').animate({scrollTop:0}, '900');
	return false;
});
$('#scrolldown').click(function(){
	$('html, body').animate({scrollTop:$(document).height()}, '900');
	return false;
});

 })(jQuery);
</script>

	<!--카테고리메뉴-->	
   <div class="wrapper" style="z-index: 2; font-size: 18px;">
   		
        <ul class="mainMenu">
        	<li class="item">
        	<a href="/home" class="btnnav"><i class="fas fa-home"></i>홈</a>
        	</li>
            <li class="item" id="about">
                <a href="#about" class="btnnav"><i class="fas fa-newspaper-o"></i>한주(韓酒)소식</a>
                <div class="subMenu">
                    <a href="/notice/list1">공지사항</a>
                    <a href="/inst"><span>전통주 소개</span></a>
                    <a href="/news/newslist">우리술 뉴스</a>
                </div>
            </li>
            <li class="item" id="account">
                <a href="#account" class="btnnav"><i class="fas fa-glass" ></i>주종별 우리술</a>
                <div class="subMenu">
                	<a href="/store?al_kind=일반증류주">일반증류주</a>
                	<a href="/store?al_kind=증류식소주">증류식소주</a>
                	<a href="/store?al_kind=청주">청주</a>
                	<a href="/store?al_kind=탁주">탁주</a>
                	<a href="/store?al_kind=생탁주">생탁주</a>
                	<a href="/store?al_kind=과실주">과실주</a>
                    <a href="/store?al_kind=리큐르">리큐르</a>
                    <a href="/store?al_kind=약주">약주</a>
                    <a href="/store?al_kind=브랜디">브랜디</a>
                    <a href="/store?al_kind=기타주류">기타주류</a>
                </div>
            </li>
            <li class="item" id="support">
                <a href="#support" class="btnnav"><i class="fas fa-search"></i>검 색</a>
                <div class="subMenu">
                    <a href="/store/search">필터 검색</a>
                    <div>
		                   <form id="searchForm" action="/search" method="get">
			                   <div class="search_input">
			                   	  <h4 class="titlesearch">　검색어 입력</h4>
			                      <input type="text" name="keyword" class="titlesea">
			                       <button class='btn search_btn' style="background-color: black; width: 30%; margin-bottom: 3%; color: white;">검 색</button>                            
			                   </div>
			                </form>
	                </div>
                </div>
            </li>

        </ul>
    </div>
    
<div class="top_area"></div>
<div id="wrap">
	<div id="header_warp">
				<!-- 상하이동버튼영역 -->
				<!--====================================================================================== -->
				<div id="fix_pagescroll" class="updown active">
					<!-- 위로가기 -->
					<div class="r_icon"
						onclick="$('html,body').animate({scrollTop:0},'slow')">
						▲<i class="xi-angle-up"></i>
					</div>
					<!-- 아래로가기 -->
					<div class="r_icon"
						onclick="$('html,body').animate({scrollTop:$(document).height()},'slow');">
						▼<i class="xi-angle-down"></i>
					</div>
				</div>
				<!-- //상하이동버튼영역끝 -->
	</div>
	<!-- //header -->
	
</div>