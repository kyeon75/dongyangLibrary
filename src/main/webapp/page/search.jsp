<%@page import="com.view.book.BookDTO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String title = (String)request.getAttribute("title");
	List<BookDTO> bLists = (List<BookDTO>)request.getAttribute("bLists");
%>
<section class="container search_container">
	<h1 class="search_title"><%= title %></h1>
	
	<div class ="search_box">
		<div class="left_module_box">
			<h3 class="left_module_title"> 카테고리</h3>
			<ul class="left_module">
				<li><a href="${pageContext.request.contextPath}/category.do?category=nov">소설</a></li>
				<li><a href="${pageContext.request.contextPath}/category.do?category=hum">인문</a></li>
				<li><a href="${pageContext.request.contextPath}/category.do?category=art">예술</a></li>
				<li><a href="${pageContext.request.contextPath}/category.do?category=del">종교</a></li>
				<li><a href="${pageContext.request.contextPath}/category.do?category=soc">사회</a></li>
				<li><a href="${pageContext.request.contextPath}/category.do?category=sci">과학</a></li> 					
			</ul>
		</div>

		<ul class="book_search_list">	
			<jsp:include page="../module/searchBookItem.jsp">
				<jsp:param name="bLists" value="<%=bLists %>"/>
			</jsp:include>
		</ul>
	</div>
	<hr>
</section>
