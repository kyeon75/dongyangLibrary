<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forEach items="${ bLists }" var="book" varStatus="loop">
<li class="book_item">
	<div class="book_item_section">
		<div class="book_item_img">
			<img src="${pageContext.request.contextPath}/resources/img/${book.img_src}.jpg" >
		</div>
		<div class="book_item_info">
				<a href="${pageContext.request.contextPath}/book.do?book_id=${book.book_id}">${book.book_title }</a> <br>
				${book.price } <br><br>
				${book.description } <br><br>
				${book.score }
		</div>
				
		<div class="book_button_wrap">
			<button class="book_button_cart" type="button" >
				장바구니에 담기
			</button>
			<button class="book_button_payment" type="button">
				바로 구매하기
			</button>
		</div>
	</div>
	<hr>
</li>
</c:forEach>

<!-- <button class="book_prev_button" onclick="location.href='header.jsp?start=1' "> 이전 </button> -->
		
<!-- 		<ul class="book_page_list"> -->
<%-- 			<jsp:include page="../page/search.jsp"> --%>
<%-- 				<jsp:param value="num" name="bookpagelistnum"/> --%>
<%-- 			</jsp:include> --%>
<!-- 		</ul> -->
		
<!-- <button class="book_next_button" onclick="location.href='header.jsp?start=1' "> 다음 </button> -->

