<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = (String)request.getAttribute("title");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="container">

	<h1 class="board_post_page_title"><%= title %></h1>
	<hr>
	<br>
	<div class="board_post_title">
		글 제목
	</div>
	<br>
	<div class="board_post_user">
		작성자
	</div>
	
	<div>
		작성 날짜
	</div>
	<br>
	<hr>
	<br>
	
	<div>
		글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 
		글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 
		글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 
		글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 
		글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 글 내용 변수에 넣고 표현식 이용해서 가져오면 될것같습니다. 
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
	
	
	<a href="${pageContext.request.contextPath}/board/board"><button class="board_post_list_button"> 글 목록 </button></a>

</section>
</body>
</html>