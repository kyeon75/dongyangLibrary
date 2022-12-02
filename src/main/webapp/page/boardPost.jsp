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
	
	<ul>
		<li>
			<div class="board_post_comment_user">
				댓글 작성자
			</div>
			
			<div class="board_post_comment_content">
				댓글 내용
			</div>
			
			<div class="board_post_comment_date">
				작성 날짜
			</div>
			<hr>
		</li>
	</ul>
	
	
	<a href="${pageContext.request.contextPath}/board.do"><button class="board_post_list_button"> 글 목록 </button></a>

</section>
</body>
</html>