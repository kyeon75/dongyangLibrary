<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<li>
	<div class="board_post_comment_user">
		<c:out value="${param.user_id}"/>
	</div>
	
	<div class="board_post_comment_content">
		<c:out value="${param.content}"/>
	</div>
			
	<div class="board_post_comment_date">
		<c:out value="${param.date}"/>
	</div>
	<br><hr>
</li>