<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String title = (String)request.getAttribute("title");
%>
<section class="container">
	
	<div id="left_module">
		<jsp:include page="../module/left.jsp"/>
	</div>
	
	<h1 class="search_title"><%= title %></h1>
	<hr>
	
	<ul id="book_search_list">
	
		<jsp:include page="../module/bookItem.jsp"/>
		
	</ul>
	
	
</section>