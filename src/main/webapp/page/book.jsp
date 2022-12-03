<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="../resources/js/book.js"></script>
<section class="container">

	<br><br>
	
	<div class="book_image">
		<img src="${pageContext.request.contextPath}/resources/img/${dto.img_src}" >
	</div>

	<div class="book_info">
		<br><br>
		<h1 class="book_name"> ${dto.book_title } </h1> <br><br>
		<h1> ${dto.writer} </h1> <br>
		<h1> ${dto.score } </h1> <br>
		<h1> ${dto.price } </h1> <br><br><br>
		
		<div class="book_count">
			<input type="button" class="book_buy_quantity_botton" onclick='count("plus")' value="+"/> <br><br>
			<div id="resultbox">0</div> <br>
			<input type="button" class="book_buy_quantity_botton" onclick='count("minus")' value="-"/> <br><br>
		</div>
	</div>
		
	<div class="book_buy">
		<h1 class="book_full_price"> 총 도서 금액 </h1> <br>
		<h1 class="book_full_price">${dto.price }</h1> <br><br><br>
		<button class="book_cart_button" type="button" onclick=""> 장바구니 담기 </button> <br><br>
		<button class="book_payment_button" type="button"> 바로 구매하기 </button>
	</div>
		
	
	<hr>
	<div class="book_explain">
		<h2>책 소개</h2> <br>
		<p> ${dto.description}
		</p>
		<br>
	</div>
	
	<hr>
	
	<br>
	<h1 class="book_review_h1">책 리뷰</h1>
	<br><br>
	
	<ul class="book_review_list">
		<li>
			<hr>
			<div class="book_review_user">
				작성자
			</div>
			
			<div class="book_review_content">
				리뷰 내용
			</div>
		</li>
	</ul>
	<hr>
</section>

</body>
</html>