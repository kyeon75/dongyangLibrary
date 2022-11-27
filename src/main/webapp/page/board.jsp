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
	<h1 class="board_title"><%= title %></h1>
		<hr>
	<ul class="post_list">
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>

		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
			
		<li class="post_list_item">
			<div class="post_list_num"> 번호 </div>
			<div class="post_list_title"> 제목 </div>
			<div class="post_list_user"> 작성자 </div>
			<div class="post_list_date"> 작성일 </div> <br>
			<hr>
		</li>
	</ul>
	
	<button class="board_prev_button"> 이전 </button>
	
	<ul class="board_page_list">
		<li class="board_page_list_num">
			<a href="#">1</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">2</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">3</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">4</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">5</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">6</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">7</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">8</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">9</a>
		</li>
		<li class="board_page_list_num">
			<a href="#">10</a>
		</li>
	</ul>
	
	<button class="board_next_button"> 다음 </button>
		
	<button class="board_post_button"> 글 작성 </button>
	

</section>
</body>
</html>