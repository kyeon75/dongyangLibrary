<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="container">

	<h1 class="cart_title">장바구니</h1>
		
	<jsp:include page="../module/bookcartPaymentItem.jsp">
		<jsp:param name="cartpaymentprice" value="0"/>
	</jsp:include>
	<ul class="cart_list">
		<c:forEach var="item" items="${cartList}">
			<c:import url="${application.getserverinfo()}/module/bookcartItem.jsp" charEncoding="UTF-8">
				<c:param name="imgName" value="${item.book_dto.img_src}" />
				<c:param name="name" value="${item.book_dto.book_title}" />
				<c:param name="authorName" value="${item.book_dto.writer}" />
				<c:param name="publisherName" value="${item.book_dto.publisher}" />
				<c:param name="count" value="${item.book_count}" />
				<c:param name="price" value="${item.book_dto.price}" />
				<c:param name="book_id" value="${item.book_dto.book_id}" />
			</c:import>
		</c:forEach>
	</ul>
</section>