const btnCheck = document.querySelector("#btn-check");
const ctx = "/"+ window.location.pathname.split("/")[1];
const labels = document.querySelectorAll("label")

document.querySelector("form").addEventListener("submit", (e)=>{
	e.preventDefault();
})

let joinId = null;
let checkId = null;
btnCheck.addEventListener("click",()=>{
	joinId = document.querySelector("#joinId")
	checkId = joinId.value;
	if(!checkId.trim()){
		alert('값을 입력하세요.')
		return
	}
	fetch(`${ctx}/validateAjax.do`,{
		method: "post",
		headers:{
			"Content-type" : "application/x-www-form-urlencoded; charset=UFT-8"
		},
		body: "joinId="+checkId
	}).then(response => response.text())
	.then(hasId)
	.catch(error => console.log(error))
})

function hasId(check){
	if(!check){
		alert('이미 존재하는 아이디입니다.')
		joinId.style.border = "2px solid crimson"
		joinId.value = ""
		joinId.focus()
		checkId = null;
	}else{
		alert('사용할 수 있는 아이디입니다.')
		joinId.style.border = "2px solid royalblue"
	}
}

function validCheck(){
	const inputs = document.querySelectorAll("input")
	for(let i = 0 ; i < inputs.length ; i++){
		let value = inputs[i].value.trim();
		if(!value){
			alert(labels[i].innerText+' 입력이 필요합니다.')
			return			
		}
		if(value.includes(" ")){
			alert(labels[i].innerText+'에 공백을 제거해주세요.')
			return			
		}
		if(i == 3 && (Number(value) < 10 || Number(value) > 99)){
			alert(labels[i].innerText+'는 10-99 사이로 입력하세요.')
			return			
		}
		if(i == 4 && !value.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)){
			alert(labels[i].innerText+' 형식이 맞지않습니다.')
			return			
		}
		if(i == 5 && !value.match(/^010-\d{3,4}-\d{4}$/)){
			alert(labels[i].innerText+' 형식이 맞지않습니다.')
			return			
		}
	}
	if(document.querySelector("#joinId").value != checkId){
		alert('아이디 중복체크가 필요합니다.')
		return;
	}
	alert(checkId + '님 가입을 환영합니다!\n로그인 창으로 안내합니다.')
	console.log(form)
	document.querySelector("form").submit()
}