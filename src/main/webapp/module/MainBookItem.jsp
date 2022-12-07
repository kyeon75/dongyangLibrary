<%@page import="com.view.book.BookDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	
	if(title.equals("베스트셀러")) {
		pageContext.setAttribute("ti", "베스트셀러");
	}else if (title.equals("핫한도서")) {
		pageContext.setAttribute("ti", "핫한도서");
	}else if (title.equals("할인도서")) {
		pageContext.setAttribute("ti", "할인도서");
	}
	
%>

<div class ="mainBook">
	<h1 class="mainItemTitle"><%= title %></h1>
	<ul class="bookItemBox">
		<c:if test="${ti eq '베스트셀러' }" >
			<c:forEach items="${ totalLists }" var="book" varStatus="loop">
			<li>
				<a href="${pageContext.request.contextPath}/book.do?book_id=${book.book_id}"> <img class="bookImg" src="${pageContext.request.contextPath}/resources/img/${book.img_src}.jpg"> </a>
				<h5 class="bookName">${book.book_title}</h5>
				<div class="bookDescription">
					<div class="bookAuthor">${book.writer} ${book.publisher}</div>
				</div>
			</li>
			</c:forEach>
		</c:if>
		<c:if test="${ti eq '핫한도서'}" >
			<c:forEach items="${ tdayLists }" var="book" varStatus="loop">
			<li>
				<a href="${pageContext.request.contextPath}/book.do?book_id=${book.book_id}"> <img class="bookImg" src="${pageContext.request.contextPath}/resources/img/${book.img_src}.jpg"> </a>
				<h5 class="bookName">${book.book_title}</h5>
				<div class="bookDescription">
					<div class="bookAuthor">${book.writer} ${book.publisher}</div>
				</div>
			</li>
			</c:forEach>
		</c:if>
		<c:if test="${ti eq '할인도서' }">
			<c:forEach items="${ disLists }" var="book" varStatus="loop">
			<li>
				<a href="${pageContext.request.contextPath}/book.do?book_id=${book.book_id}"> <img class="bookImg" src="${pageContext.request.contextPath}/resources/img/${book.img_src}.jpg"> </a>
				<h5 class="bookName">${book.book_title}</h5>
				<div class="bookDescription">
					<div class="bookAuthor">${book.writer} ${book.publisher}</div>
				</div>
			</li>
			</c:forEach>
		</c:if>
	</ul>
</div>