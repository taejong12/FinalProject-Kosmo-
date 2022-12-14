function usernameCheck(username) {
	const regUsername =  /^[A-Za-z0-9]{4,15}$/;
	
	if(regUsername.test(username)) {
		return true;
	} else {
		return false;
	}
}
 
function emailCheck(email){
	const regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	if(regEmail.test(email)) {
		return true;
	} else {
		return false;
	}
}
 
function phoneCheck(phone){
	const regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	if(regPhone.test(phone)) {
		return true;
	} else {
		return false;
	}
}
 
 
function nicknameCheck(nickname) {
	const regNickname = /^[가-힣|a-z|A-Z|0-9|]+$/;
	if (regNickname.test(nickname)) {
		return true;
	} else {
		return false;
	}
}
 
 
 
function lengthCheck(e, length) {
	if(e.value.length >= length) {
		return false;
	}
	
	$(this).off().focusout(function(){
		if(e.value.length > length) {
			e.value = "";
		}
	})
	return true; 
}

 
const timer = (function(){
	let time;	// 타이머 시간
	let timerStart;	// setInterval 이름
	let timerArr = [];	// 실행중인 타이머
	let isStart = true;	// 재시작 가능여부 
	let restartTime;	// 재시작 가능한 시간
	
	let minute;
	let second;
	
	const start = function(){
		if(!isStart) {
			return false;
		}
		
		// 타이머 초기화하기
		const reset = function(){
			time = 300;
			restartTime = 30;
			
			minute = Math.floor(time / 60);
			second = time % 60;
		}
		
		// 배열이 사이즈가 0이면 처음 실행
		if(timerArr.length == 0) {
			reset();
		}
		
		// 배열이 사이즈가 1이면 재실행 
		if(timerArr.length == 1) {
			// 재실행시 실행중인 타이머를 종료하고 다시 실행
			clearInterval(timerArr.pop());
			reset();
		}
		
		isStart = false;
			
		$(".timer").text(minute + ' : ' + String(second).padStart(2,'0'));
		
		timerStart = setInterval(function(){
			if(0 < restartTime) {
				restartTime--;
			}
			
			if(restartTime == 0) {
				isStart = true;
			}
			
			if(second == 0) {
				minute--;
				if(minute == -1) {
					for(i=0;i<timerArr.length;i++) {
						clearInterval(timerArr[i]);
					}
					timerArr = [];
					return;
				}
				second = 60;
			}
			second--; 
			$(".timer").text(minute + ' : ' + String(second).padStart(2,'0'));
			
		}, 1000)
		timerArr.push(timerStart);
	}
	
	const status = function(){
		return {
			isStart : isStart,
			restartTime : restartTime,
		}
	}
		
	return {
		start : start,
		status : status,
	}
})();

