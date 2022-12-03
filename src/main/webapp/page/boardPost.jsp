<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
		<jsp:include page="/module/boardPostCommentItem.jsp">
			<jsp:param value="@@" name="title"/>
		</jsp:include>
		
	</ul>
	
	<br><br>
	<a href="${pageContext.request.contextPath}/board.do"><button class="board_post_list_button"> 글 목록 </button></a>
	<button class="board_post_list_button"> 글 수정 </button>
	<button class="board_post_list_button"> 글 삭제 </button>
	
</section>
</body>
</html>