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
		
		<jsp:include page="../module/searchBookItem.jsp">
			<jsp:param name="bookname" value="@@"/>
			<jsp:param name="bookprice" value="@@"/>
			<jsp:param name="bookexplain" value="@@"/>
			<jsp:param name="bookreview" value="@@"/>
		</jsp:include>
		
	</ul>
	
	
</section>