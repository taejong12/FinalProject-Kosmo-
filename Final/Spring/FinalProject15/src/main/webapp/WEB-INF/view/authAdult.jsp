<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 주(韓 酒)</title>
<link rel="stylesheet" href="/css/user/authAdult.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
.swal-button{
background-color: black;
}
.swal-button:not([disabled]):hover {
background-color: black;
}
.swal-button:not([disabled]):active {
	background-color: black;
}
</style>
</head>
<body>
<div class="mainContents" align="center">
	<img src="/img/finallogo.png" alt="이미지" class="logo_img" width="400px"><br/>
	
	<form method=get name=jumin_form onSubmit="return jumin_QC()">
		주류 판매사이트엔 미성년자는 출입할 수 없습니다.<br><br>
		<table>
		<tr>
			<td rowspan="2"><img src="/img/19geum.png" alt="이미지" class="logo_img" width="120px" ></td> <td>이름 :</td> <td><input class="table-td-input" name="username" onChange="return userName_QC(this.form)" maxlength="20" size="12"><td>
		</tr>
		<tr>
			<td>주민등록번호 : </td>
			<td> <input  class="table-td-input1"  maxlength=6 name=jumin1 onFocus="this.value = this.value;" onKeyUp=auto_Move(this); size=6>-<input class="table-td-input1"  maxlength=7 type="password" name=jumin2 onKeyUp=prev_move(this); size=8> </td>
		  
		</tr>
		</table>
		<br/>

		 <button type="submit" class="custom-btn btn-6"><span>본인인증</span></button>

	</FORM>
	　
</div>
	<script type="text/javascript" src="/js/user/authAdult.js" ></script>
</body>
</html>