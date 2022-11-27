<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	
	System.out.print(title);
%>
<div class ="mainBook">
	<h1 class="mainItemTitle"><%= title %></h1>
	<ul class="bookItemBox">
		<li>
			<img class="bookImg" src="${pageContext.request.contextPath}/resources/img/book1.jpg">
			<h5 class="bookName">책이름</h5>
			<div class="bookDescription">
				<div class="bookAuthor">저자 출판사</div>
				<!-- <div class="bookPublisher">출판사</div>  -->
			</div>
		</li>
		<li>
			<img class="bookImg" src="${pageContext.request.contextPath}/resources/img/book2.jpg" >
			<h5 class="bookName">책이름</h5>
			<div class="bookDescription">
				<div class="bookAuthor">저자 출판사</div>
				<!-- <div class="bookPublisher">출판사</div>  -->
			</div>
		</li>
		<li>
			<img class="bookImg" src="${pageContext.request.contextPath}/resources/img/book3.jpg" >
			<h5 class="bookName">책이름</h5>
			<div class="bookDescription">
				<div class="bookAuthor">저자 출판사</div>
				<!-- <div class="bookPublisher">출판사</div>  -->
			</div>
		</li>
		<li>
			<img class="bookImg" src="${pageContext.request.contextPath}/resources/img/book4.jpg">
			<h5 class="bookName">책이름</h5>
			<div class="bookDescription">
				<div class="bookAuthor">저자 출판사</div>
				<!-- <div class="bookPublisher">출판사</div>  -->
			</div>
		</li>
	</ul>
</div>