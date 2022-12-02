<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<%
	String bookimagename = request.getParameter("bookimagename");
	String bookname = request.getParameter("bookname");
	String bookprice = request.getParameter("bookprice");
	String bookexplain = request.getParameter("bookexplain");
	String bookreview = request.getParameter("bookreview");
%>

<li class="book_item">
	<div class="book_item_section">
		<div class="book_item_img">
			<img src="${pageContext.request.contextPath}/resources/img/<%= bookimagename %>.jpg" >
		</div>
		<div class="book_item_info">
				<a href="${pageContext.request.contextPath}/book.do"><%= bookname %></a> <br>
				<%= bookprice %> <br><br>
				<%= bookexplain %> <br><br>
				<%= bookreview %>
		</div>
				
		<div class="book_button_wrap">
			<button class="book_button_cart" type="button">
				장바구니에 담기
			</button>
			<button class="book_button_payment" type="button">
				바로 구매하기
			</button>
		</div>
	</div>
	<hr>
</li>
