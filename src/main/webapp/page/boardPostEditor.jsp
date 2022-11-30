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
	<h1 class="board_post_editor_title"><%= title %></h1>
	
	<form action="#" method="post">
		<textarea class="post_title" name="id"></textarea><br><br><br>
		<textarea class="post_content" name="pw"></textarea><br>
		<input class="post_submit" type="submit" value="등록">
	</form>
	<a href="${pageContext.request.contextPath}/board/postEditor"><button class="post_delete_button"> 취소 </button></a>
</section>
</body>
</html>