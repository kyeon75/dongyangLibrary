<%@page import="com.view.book.BookDTO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String title = (String)request.getAttribute("title");
	List<BookDTO> bLists = (List<BookDTO>)request.getAttribute("bLists");
%>
<section class="container">
	
	<div id="left_module">
		<jsp:include page="../module/left.jsp"/>
	</div>
	
	<h1 class="search_title"><%= title %></h1>
	<hr>
	
	<ul id="book_search_list">	
		<jsp:include page="../module/searchBookItem.jsp">
			<jsp:param name="bLists" value="<%=bLists %>"/>
		</jsp:include>
		
	</ul>
	
	
</section>