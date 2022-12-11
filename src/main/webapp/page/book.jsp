<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/book.js"></script>
<section class="container">
	<div class="book_box">
		<img class="book_image" src="${pageContext.request.contextPath}/resources/img/${img_src}.jpg">
		
		<div class="book_info">
			<h1 class="book_name">${title}</h1> <br><br>
			<div> ${writer} </div> <br>
			<!-- <div> ${score} </div> <br> -->
			<div id="book_price"> ${price} </div> <br><br><br>
			
			<div class="book_count">
				<input type="button" class="book_buy_quantity_botton" onclick='count("minus")' value="-"/>
				<div id="book_num">1</div>
				<input type="button" class="book_buy_quantity_botton" onclick='count("plus")' value="+"/>
			</div>
		</div>
			
		<div class="book_buy">
			<h1 class="book_full_price"> 총 도서 금액 </h1> <br>
			<h1 class="book_full_price" id="book_total_price">${ price }</h1> <br><br><br>
			<button class="book_cart_button" type="button" onclick=""> 장바구니 담기 </button> <br><br>
			<button class="book_payment_button" type="button"> 바로 구매하기 </button>
		</div>
	</div>

	<hr>
	
	<div class="book_explain">
		<h2 class="book_explain_title">책 소개</h2> <br>
		<p> ${description}
		</p>
		<br>
	</div>
	
	<hr>
	
	<br>
	<h1 class="book_review_h1">책 리뷰</h1>
	<br><br>
	
	<form id="review_form" action="${pageContext.request.contextPath}/bookReviewInsert.do" method="post">
		<div>
			<span class="star">
				 ★★★★★
				 <span>★★★★★</span>
				 <input name="review_score" type="range" oninput="drawStar(this)" value="0" step="1" min="0" max="10">
			</span>
		</div>
		<textarea name="review_content" id="review_content"></textarea>
		<input type="hidden" name="book_id" value="${param.book_id}">
		<input type="button" onclick="checkSubmit()" value="리뷰작성" id="review_submit">
	</form>
	
	<ul class="book_review_list">
		<c:forEach var="item" items="${requestScope.review_list}">
			<li>
				<hr>
				<div class="book_review_score">
					<span class="star">
						★★★★★
						<span class="star_ss">★★★★★</span>
						<span class="star_num">${item.getReview_score()}</span>
					</span>
				</div>
				
				<div class="book_review_user">
					${item.getUser_id()}
				</div>
				
				<div class="book_review_date">
					${item.getReview_date()}
				</div>
				
				<div class="book_review_content">
					${item.getReview_content()}
				</div>
			</li>
		</c:forEach>
	</ul>
	<hr>
</section>