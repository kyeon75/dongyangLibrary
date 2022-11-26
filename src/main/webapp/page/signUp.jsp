<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<section id="signUpContainer" class="container">
	<h3 id="title">회원가입</h3>
	<form class="css-mhmtvt e15so55l1" action="${pageContext.request.contextPath}/user/signUpProcess" method="post">
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
				</div>
				<div class="css-1w0ksfz e744wfw2">
					<button id="idBtn" onClick="fetchIdCheck('id')" class="css-ufulao e4nu7ef3" type="button">
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
					<button id="emailBtn" onClick="fetchIdCheck('email')" class="css-ufulao e4nu7ef3" type="button">
						<span class="css-ymwvow e4nu7ef1">
							중복확인
						</span>
					</button>
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
							<input id="mobileNumber" name="mobileNumber" placeholder="숫자만 입력해주세요" type="tel" class="css-1bkd15f e1uzxhvi2">
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
					<label class="css-1obgjqh e744wfw4">성별</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-14wodj6 es1pbny0">
						<label class="css-z9g6s0 et8nqc33" for="gender-man">
							<input id="gender-man" name="gender" type="radio" value="MALE" checked>
							<span aria-labelledby="gender-man" class="css-mgd87h et8nqc31">남자</span>
						</label>
						<label class="css-z9g6s0 et8nqc33" for="gender-woman">
							<input id="gender-woman" name="gender" type="radio" value="FEMALE">
							<span aria-labelledby="gender-woman" class="css-mgd87h et8nqc31">여자</span>
						</label>
						<label class="css-z9g6s0 et8nqc33" for="gender-none">
							<input id="gender-none" name="gender" type="radio" value="NONE">
							<span aria-labelledby="gender-none" class="css-mgd87h et8nqc31">선택안함</span>
						</label>
					</div>
				</div>
				<div class="css-1w0ksfz e744wfw2">
				</div>
			</div>
			<div class="css-1pjgd36 e744wfw6">
				<div class="css-1y8737n e744wfw5">
					<label class="css-1obgjqh e744wfw4">생년월일</label>
				</div>
				<div class="css-82a6rk e744wfw3">
					<div class="css-18n8lnw e1ke3ehm1">
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div  class="css-xsmgyi e1uzxhvi3">
								<input name="birthYear" placeholder="YYYY" type="text" height="40" class="css-1368454 e1uzxhvi2">
							</div>
						</div>
						<span class="css-iehpfx e1ke3ehm0"></span>
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div class="css-xsmgyi e1uzxhvi3">
								<input name="birthMonth" placeholder="MM" type="text" height="40" class="css-1368454 e1uzxhvi2">
							</div>
						</div>
						<span class="css-iehpfx e1ke3ehm0"></span>
						<div class="css-1dkwuq4 e1uzxhvi6">
							<div class="css-xsmgyi e1uzxhvi3">
								<input name="birthDay" placeholder="DD" type="text" height="40" class="css-1368454 e1uzxhvi2">
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
	function goPopup(){
		var pop = window.open("../module/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadAddrPart1, addrDetail){
		baseAddress.value = roadAddrPart1;
		subAddress.value = addrDetail;
	}
	function fetchIdCheck(type) {
	    fetch("../SignUpCheckAjax?type="+type+"&value="+document.getElementById(type).value).then((response) => {
			return response.json();
	    }).then((data) => {
	    	if (data.result == "true") {
	    		alert("중복되지 않습니다");	
	    		if (type == "id") {
	    			document.getElementById("idBtn").className += " btn_disabled";
	    		} else if (type == "email") {
	    			document.getElementById("emailBtn").className += " btn_disabled";
	    		}
	    	} else {
	    		alert("유효하지 않은 접근");	
	    	}
	    })
	}
</script>