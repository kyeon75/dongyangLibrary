<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String boardpagelistnum = request.getParameter("boardpagelistnum");
	
%>

<li class="board_page_list_num">
	<a href="#"><%= boardpagelistnum  %></a>
</li>