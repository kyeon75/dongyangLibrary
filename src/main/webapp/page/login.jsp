<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<section class="container">
	<div class="css-1bb6q2p etkckst2">
	    <div class="css-a7gihu etkckst1">로그인</div>
	    <div class="css-10zt1af etkckst0">
	        <form action="${pageContext.request.contextPath}/loginProcess.do" method="post" onSubmit="return checkForm()" onkeydown="return event.key != 'Enter';">
	            <div class="css-46b038 e18ap6t76">
	                <div class="css-1accgqb e1uzxhvi6">
	                    <div class="css-176lya2 e1uzxhvi3">
	                    	<input id="id" name="id" placeholder="아이디를 입력해주세요" type="text" class="css-1bkd15f e1uzxhvi2">
	                    </div>
	                </div>
	                <div class="css-1accgqb e1uzxhvi6">
	                    <div class="css-176lya2 e1uzxhvi3">
	                    	<input id="password"  name="password" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="css-1bkd15f e1uzxhvi2">
	                    </div>
	                </div>
	            </div>
	            <div class="css-s4i9n2 e18ap6t71">
	            	<button class="css-qaxuc4 e4nu7ef3" type="submit">
	            		<span class="css-ymwvow e4nu7ef1">
	            			로그인
	            		</span>
	            	</button>
	            	<button onclick="location.href='signUp'" class="css-hxorrg e4nu7ef3" type="button">
	            		<span class="css-ymwvow e4nu7ef1">
	            			회원가입
	            		</span>
	            	</button>
	            </div>
	        </form>
	    </div>
	</div>
</section>
<script>
	let id = document.getElementById("id");
	let password = document.getElementById("password");
	function checkForm() {
		if (id.value === "") {
			id.focus();
			alert("아이디를 안적었습니다.")
			return false
		} else if (password.value === "") {
			id.focus();
			alert("비밀번호를 안적었습니다.")
			return false
		} else {
			return true
		}
	}
</script>