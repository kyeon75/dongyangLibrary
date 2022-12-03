<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<li class="post_list_item">
	<div class="post_list_num"><a href="${pageContext.request.contextPath}/post.do?board_id=${param.postListNum}"> <c:out value="${param.postListNum}"/> </a></div>
	<div class="post_list_title"><a href="${pageContext.request.contextPath}/post.do?board_id=${param.postListNum}"> <c:out value="${param.postListTitle}"/> </a></div>
	<div class="post_list_user"><a href="${pageContext.request.contextPath}/post.do?board_id=${param.postListNum}"> <c:out value="${param.postListUser}"/> </a></div>
	<div class="post_list_date"><a href="${pageContext.request.contextPath}/post.do?board_id=${param.postListNum}"> <c:out value="${param.postListDate}"/> </a></div>
</li>