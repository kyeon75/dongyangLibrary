<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="container">
	<h1 class="board_post_page_title">자유게시판</h1>
	
	<hr>
	<br>
	
	<div class="board_post_title">
		${requestScope.title}
	</div>
	
	<br>
	
	<div class="board_post_user">
		${requestScope.user}
	</div>
	
	<div>
		${requestScope.date}
	</div>
	
	<br>
	<hr>
	<br>
	
	<div>
		${requestScope.content}
	</div>
	<br>
	<hr>
	
	<ul class="board_post_comment_list">
		<c:forEach var="item" items="${requestScope.commentList}">
			<c:import url="${application.getserverinfo()}/module/postCommentItem.jsp" charEncoding="UTF-8">
				<c:param name="user_id" value="${item.getUserId()}"/>
				<c:param name="content" value="${item.getComment_content()}"/>
				<c:param name="date" value="${item.getDate()}"/>
			</c:import>
		</c:forEach>
	</ul>
	
	<br><br>

	<form id="comment_form" action="${pageContext.request.contextPath}/commentInsert.do" method="post">
		<input type="text" name="comment_content" id="comment_content">
		<input type="hidden" name="board_id" value="${param.board_id}">
		<input type="hidden" name="user_id" value="${sessionScope.id}">
		<input type="button" onclick="checkSubmit()" value="댓글작성">
	</form>
	
	<br><br>
	
	<div>
		<a href="${pageContext.request.contextPath}/board.do"><button class="board_post_list_button"> 글 목록 </button></a>
		<button class="board_post_list_button"> 글 수정 </button>
		<button class="board_post_list_button"> 글 삭제 </button>	
	</div>
</section>
<script>
	function checkSubmit() {
		let content = document.getElementById("comment_content");
		if (content.value !== "") {
			document.getElementById("comment_form").submit();
		}
	}
</script>
