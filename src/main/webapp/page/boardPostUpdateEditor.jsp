<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section class="container">
	<h1 class="board_post_editor_title">글수정</h1>
	
	<form action="${pageContext.request.contextPath}/postUpdateProc.do" method="post" onSubmit="return checkForm()" onkeydown="return event.key != 'Enter';">
		<input placeholder="제목을 입력하세요" class="post_title" type="text" name="board_title" value="${requestScope.title}"/>
		<textarea class="post_content" name="board_content">${requestScope.content}</textarea>
		<input type="hidden" name="board_id" value="${param.board_id}">
		<input class="post_submit" type="submit" value="수정">
	</form>
	<a href="${pageContext.request.contextPath}/boardPost.do?"><button class="post_delete_button"> 취소 </button></a>
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