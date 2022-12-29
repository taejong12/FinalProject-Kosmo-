function userName_QC(form){
  var no_name="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_-`~!@#$%^&*()=\+|{}[]:;'<>,.?/";
  var string=form.username.value;
  var len=string.length;
  console.log(string);
 for(i=0;i<len;i++){
  if(no_name.indexOf(string.substring(i,i+1))>0){
	swal("올바른 이름이 아닙니다.", " ", "warning");
              form.username.value="";
        form.username.blur();
        form.username.focus();
          return false;
  }
    if(len<2 || len>6){
		swal("이름이 잘못되었습니다.", " ", "warning");
  form.username.value="";
      form.username.blur();
      form.username.focus();
          return false;
  }
  
  
  }
 } 


function jumin_QC()
{
    var chk =0;
    var input = document.jumin_form.jumin1.value;
    var yy = document.jumin_form.jumin1.value.substring(0,2);
    var mm = document.jumin_form.jumin1.value.substring(2,4);
    var dd = document.jumin_form.jumin1.value.substring(4,6);
    var sex = document.jumin_form.jumin2.value.substring(0,1);
    var mil = 0;

    var gijun_date = 20030101;// 옆의 숫자는 2003년1월1일 이후에 태어난 사람은 성인이 아닌것으로 판단
    if(document.jumin_form.username.value == ""){
	  swal("이름을 입력해주세요.", " ", "warning");
	  document.jumin_form.username.focus();
          return false;
 	}
    if (document.jumin_form.jumin2.value.split(" ").join("") == "") {
		swal("주민등록번호를 입력해주세요.", " ", "warning");
        document.jumin_form.jumin1.focus();
        return false;
    }

    if (document.jumin_form.jumin1.value.length!=6) {
		swal("주민등록번호 앞 6자리를 입력해주세요.", " ", "warning");
            document.jumin_form.jumin1.focus();
            return false;
    }
 if (document.jumin_form.jumin2.value.length != 7 )
 {
	 		swal("주민등록번호 뒤 7자리를 입력해주세요.", " ", "warning");
            document.jumin_form.jumin2.focus();
            return false;
    }
  if (isNaN(document.jumin_form.jumin1.value) || isNaN(document.jumin_form.jumin2.value))
 {
  document.jumin_form.jumin1.value = ""
  document.jumin_form.jumin2.value = ""
  swal("주민등록번호는 숫자만 가능합니다.", " ", "warning");
  return false;
 }
    if ((document.jumin_form.jumin1.value.length!=6)||(mm <1||mm>12||dd<1)){
            document.jumin_form.jumin1.value = ""
            swal("주민등록번호 앞자리가 잘못되었습니다.", " ", "warning");
            document.jumin_form.jumin1.focus();
            return false;
    }
    if ((sex != 1 && sex !=2 && sex !=3 && sex !=4)||(document.jumin_form.jumin2.value.length != 7 )){
            document.jumin_form.jumin2.value = ""
            swal("주민등록번호 뒷자리가 잘못되었습니다.", " ", "warning");
            document.jumin_form.jumin2.focus();
            return false;    }

    
    if (yy>=23){ 
    	mil = (parseInt(document.jumin_form.jumin1.value)+19000000);
    }else if(yy < 23){	
    	mil = (parseInt(document.jumin_form.jumin1.value)+20000000);
    }
    console.log(mil);
    if(mil<gijun_date){
		 swal("성인인증이 되었습니다.", " ", "success").then(function(){
      location.href='/home';
      })		
	return false;
        }
    
    else
    {   swal("대한민국 법에서 정한 성인이 아닙니다.", " ", "error");       
          document.jumin_form.jumin1.focus();
    return false;
    }
    return true;
}
//주민등록번호 자동 이동 기능
 function auto_Move(obj)
 {
  if (obj.value.length > 5)
  {
  jumin_form.jumin2.focus();
  }
 }
 
 function prev_move(obj)
 {
  if (obj.value.length == 0)
  {

  jumin_form.jumin1.focus();

  }
 }


