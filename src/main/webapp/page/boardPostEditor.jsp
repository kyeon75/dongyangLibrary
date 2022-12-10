<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section class="container">
	<h1 class="board_post_editor_title">글작성</h1>
	
	<form action="${pageContext.request.contextPath}/postInsert.do" method="post" onSubmit="return checkForm()" onkeydown="return event.key != 'Enter';">
		<input placeholder="제목을 입력하세요" class="post_title" type="text" name="board_title"/>
		<textarea class="post_content" name="board_content"></textarea>
		<input class="post_submit" type="submit" value="등록">
	</form>
	<a href="${pageContext.request.contextPath}/board.do"><button class="post_delete_button"> 취소 </button></a>
</section>
<script>
	let title = document.getElementsByClassName("post_title")[0];
	let content = document.getElementsByClassName("post_content")[0];
	function checkForm() {
		console.log("hello")
		if (title.value === "") {
			title.focus();
			alert("글 제목을 안적었습니다.")
			return false
		} else if (content.value === "") {
			content.focus();
			alert("글 내용을 안적었습니다.")
			return false
		}
	}
</script>