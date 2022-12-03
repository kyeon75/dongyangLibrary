<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="signUpContainer" class="container">
	<h3 id="title">회원가입</h3>
	<form class="css-mhmtvt e15so55l1" action="${pageContext.request.contextPath}/signUpProcess.do" method="post" onSubmit="return checkForm()" onkeydown="return event.key != 'Enter';">
		<div class="css-rb0i47 e1yyjjij1">
			<span class="css-qq9ke6 e1yyjjij0">
				*
			</span>
			필수입력사항
		</div>
		<div class="css-y8aj3r eo6ykj40">
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						아이디
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="id" name="id" placeholder="아이디를 입력해주세요" type="text" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
					<div class="css-shoa2s e744wfw1"><p class="css-1ozil7i e1revjhv0">6자 이상 16자 이하의 영문 대소문자와 숫자를 조합</p></div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
					<button id="idCheckBtn" class="css-ufulao e4nu7ef3" type="button">
						<span class="css-ymwvow e4nu7ef1">
							중복확인
						</span>
					</button>
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						비밀번호
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="password"name="password" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						비밀번호확인
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="passwordConfirm"name="passwordConfirm" placeholder="비밀번호를 한번 더 입력해주세요" type="password" autocomplete="off" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						이름
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="name" name="name" placeholder="이름을 입력해 주세요" type="text" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						이메일
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="email" name="email" placeholder="예: marketkurly@kurly.com" type="text" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						휴대폰
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="mobileNumber" name="mobileNumber" placeholder="숫자만 입력해주세요" type="number" class="css-1bkd15f e1uzxhvi2">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				<!--  
					<button class="css-ufulao e4nu7ef3" type="button">
						<span class="css-ymwvow e4nu7ef1">
							인증번호 받기
						</span>
					</button>
				-->
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						주소
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-jmalg e1uzxhvi6">
						<div class="css-176lya2 e1uzxhvi3">
							<input id="baseAddress" name="baseAddress" placeholder="기본주소" type="text" class="css-1bkd15f e1uzxhvi2"value="">
						</div>
						<div class="css-176lya2 e1uzxhvi3">
							<input id="subAddress" name="subAddress" placeholder="상세 주소 및 상세 건물명" type="text" class="css-1bkd15f e1uzxhvi2"value="">
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
					<button class="css-ufulao e4nu7ef3" onClick="goPopup();" type="button">
						<span class="css-ymwvow e4nu7ef1">
							주소 검색하기
						</span>
					</button>
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						성별
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-14wodj6 es1pbny0">
						<label class="css-z9g6s0 et8nqc33" for="gender-man">
							<input id="gender-man" name="gender" type="radio" value="MALE">
							<span aria-labelledby="gender-man" class="css-mgd87h et8nqc31">남자</span>
						</label>
						<label class="css-z9g6s0 et8nqc33" for="gender-woman">
							<input id="gender-woman" name="gender" type="radio" value="FEMALE">
							<span aria-labelledby="gender-woman" class="css-mgd87h et8nqc31">여자</span>
						</label>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">
						생년월일
						<span class="css-qq9ke6 e744wfw0">
							*
						</span>
					</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-18n8lnw e1ke3ehm1">
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div  class="css-xsmgyi e1uzxhvi3">
								<input id="birthYear" name="birthYear" placeholder="YYYY" type="number" class="css-1368454 e1uzxhvi2" min="1900" max="2022">
							</div>
						</div>
						<span class="css-iehpfx e1ke3ehm0"></span>
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div class="css-xsmgyi e1uzxhvi3">
								<input id="birthMonth" name="birthMonth" placeholder="MM" type="number" class="css-1368454 e1uzxhvi2" min="1" max="12">
							</div>
						</div>
						<span class="css-iehpfx e1ke3ehm0"></span>
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div class="css-xsmgyi e1uzxhvi3">
								<input id="birthDay" name="birthDay" placeholder="DD" type="number" class="css-1368454 e1uzxhvi2" min="1" max="31">
							</div>
						</div>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
		</div>
		<div class="css-1eo0fey e1j7jtti0">
		</div>
		<div class="css-137ca2h e1utgeno0">
			<button class="css-18m884r e4nu7ef3" type="submit">
				<span class="css-ymwvow e4nu7ef1">
					가입하기
				</span>
			</button>
		</div>
	</form>
</section>
<script>
	let id = document.getElementById("id");
	let password = document.getElementById("password");
	let passwordConfirm = document.getElementById("passwordConfirm");
	let name = document.getElementById("name");
	let email = document.getElementById("email");
	let mobileNumber = document.getElementById("mobileNumber");
	let baseAddress = document.getElementById("baseAddress");
	let subAddress = document.getElementById("subAddress");
	let birthYear = document.getElementById("birthYear")
	let birthMonth = document.getElementById("birthMonth")
	let birthDay = document.getElementById("birthDay")
	let chk_radio = document.getElementsByName('gender');
	
	let idCheckBtn = document.getElementById("idCheckBtn")
	let emailCheckBtn = document.getElementById("emailCheckBtn")
	
	function goPopup(){
		var pop = window.open("../module/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadAddrPart1, addrDetail){
		baseAddress.value = roadAddrPart1;
		subAddress.value = addrDetail;
	}
	idCheckBtn.addEventListener('click', function() {
		if (id.value === "") {
			alert("아이디를 입력하세요")
			id.focus()
			return false
		}
		if (validIdCheck(id.value)) {
			alert("아이디 형식에 맞춰 입력허세요")
			id.focus()
			return false
		}
		fetch("../SignUpCheck?id=" + id.value)
		.then(response => response.text())
		.then(res => { 
			if (res === "true") {
				alert("사용할 수 있는 아이디입니다.")
				idCheckBtn.disabled = true;
			} else {
				alert("사용할 수 없는 아이디입니다.")
				id.focus()
			}
		})
	})
	id.addEventListener('change', function() {
		idCheckBtn.disabled = false;
	})
	function checkForm() {
		if (id.value === "") {
			alert("아이디를 입력하세요")
			id.focus()
			return false
		} else if (!idCheckBtn.disabled) {
			alert("아이디 중복확인을 하세요")
			return false
		}else if (password.value === "") {
			alert("비밀번호를 입력하세요")
			password.focus()
			return false
		} else if (passwordConfirm.value === "") {
			alert("비밀번호 입력을 입력하세요")
			passwordConfirm.focus()
			return false
		} else if (name.value === "") {
			alert("이름을 입력하세요")
			name.focus()
			return false
		} else if (email.value === "") {
			alert("이메일을 입력하세요")
			email.focus()
			return false
		} else if (mobileNumber.value === "") {
			alert("전화번호를 입력하세요")
			mobileNumber.focus()
			return false
		} else if (baseAddress.value === "") {
			alert("주소를 입력하세요")
			baseAddress.focus()
			return false
		} else if (subAddress.value === "") {
			alert("상세주소를 입력하세요")
			subAddress.focus()
			return false
		} else if (password.value !== passwordConfirm.value) {
			alert("비밀번호와 비밀번호 확인이 다릅니다.")
			passowrd.focus()
			return false
		} else if (validEmailCheck(email.value)) {
			alert("올바른 형식의 이메일을 입력하세요")
			email.focus()
			return false
		} else if (mobileNumber.value.length !== 11) {
			alert("전화번호 형식이 다릅니다.")
			mobileNumber.focus()
			return false
		} else if (validIdCheck(id.value)) {
			alert("아이디 형식에 맞춰 입력허세요")
			id.focus()
			return false
		} else if (atLeastOneRadio()) {
			alert("성별을 선택해주세요")
			return false
		} else if (birthYear.value == '' || birthYear.value === undefined || birthYear.value === 0 || birthMonth.value === null) {
			alert("생년월일을 입력하세요")
			birthYear.focus()
			return false
		} else if (birthMonth.value == '' || birthMonth.value === undefined || birthMonth.value === 0 || birthMonth.value === null) {
			alert("생년월일을 입력하세요")
			birthMonth.focus()
			return false
		} else if (birthDay.value == '' || birthDay.value === undefined || birthDay.value === 0 || birthMonth.value === null) {
			alert("생년월일을 입력하세요")
			birthDay.focus()
			return false
		} else if (birthYear.value.length !== 4 || birthMonth.value.length !== 2 || birthDay.value.length !== 2) {
			alert("생년월일 형식이 맞지 않습니다.")
			return false
		} else {
			return true
		}
	}
	//이메일 유효성 검사
	function validEmailCheck(email){
		var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	    return !(email != '' && email != 'undefined' && regex.test(email));
	}
	//아이디 유효성 검사, 6자 이상 16자 이하의 영문 대소문자와 숫자를 조합
	function validIdCheck(id) {
		var regex = /^[a-zA-z0-9]{6,16}$/; 
        return  !(regex.test(id))
	}
	// 라디오 버튼이 선택되지 경우 true를 리턴하는 함수
	function atLeastOneRadio() {
		var sel_type = null;
		for(var i=0; i<chk_radio.length; i++){
			if(chk_radio[i].checked == true){ 
				sel_type = chk_radio[i].value;
			}
		}
		if(sel_type == null){
			return true;
		}
		return false;
	}
</script>