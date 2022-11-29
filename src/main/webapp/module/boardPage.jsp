<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String postlistnum = request.getParameter("postlistnum");
	String postlisttitle = request.getParameter("postlisttitle");
	String postlistuser = request.getParameter("postlistuser");
	String postlistdate = request.getParameter("postlistdate");
%>

<li class="post_list_item">
	<div class="post_list_num"> <%= postlistnum %> </div>
	<div class="post_list_title"> <%= postlisttitle %> </div>
	<div class="post_list_user"> <%= postlistuser %> </div>
	<div class="post_list_date"> <%= postlistdate %> </div> <br>
	<hr>
</li>