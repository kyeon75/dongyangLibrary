<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String postlistnum = request.getParameter("postlistnum");
	String postlisttitle = request.getParameter("postlisttitle");
	String postlistuser = request.getParameter("postlistuser");
	String postlistdate = request.getParameter("postlistdate");
%>


<li class="post_list_item">
	<div class="post_list_num"><a href="${pageContext.request.contextPath}/board/post"> <%= postlistnum %> </a></div>
	<div class="post_list_title"><a href="${pageContext.request.contextPath}/board/post"> <%= postlisttitle %> </a></div>
	<div class="post_list_user"><a href="${pageContext.request.contextPath}/board/post"> <%= postlistuser %> </a></div>
	<div class="post_list_date"><a href="${pageContext.request.contextPath}/board/post"> <%= postlistdate %> </a></div> <br>
	<hr>
</li>
