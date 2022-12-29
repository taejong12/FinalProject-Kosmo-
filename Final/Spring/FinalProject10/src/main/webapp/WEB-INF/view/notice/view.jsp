<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/Top.jsp"%>
<%@ include file="/WEB-INF/view/include/navbar.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="/css/notice/noticeView.css">
<head>
<meta charset="UTF-8">
<title>view</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</head>
<body>
</br></br></br>
<div class="login_box">
         <a href="/home"><img src="/img/finallogo.png" alt="이미지" id="logo_img"></a>
</div>
<br/><br/>
   <div id="strong"><h2>상세보기</h2></div>
   <br/>
<div id="back">
<table class="table table-striped" id="table">

    <!-- <table style="border:1px solid #ccc" id="board_view"> -->
         
        <tbody>
            <tr>
                <th>제목</th>
                <td>${dto.noTitle}</td>
            </tr>
            
            <tr>
                <th>작성자</th>
                <td>${dto.noWriter}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td id="content">
                   ${dto.noContent}
                </td>
            </tr>
            <tr>
                <th>등록일자</th>
                <td>${dto.noPostdate}</td>
            </tr>
            <tr>    
                <th>조회수</th>
                <td>${dto.noCount}</td>
            </tr>
        </tbody>
    </table>
    </br>
    <div id="lists"><input type="button" id="list" value="목록보기"/>
    </div>
    
<!-- <div id="list"><a href="/notice/list1">목록보기</a></div> -->
</div>    
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
<script>
     $('#list').click(function(){       
        location.href = "/notice/list1";
     });
</script>
</body>
</html>