<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String title = (String)request.getAttribute("title");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="container">

	<h1 class="cart_title"><%= title %></h1>
	
	<ul class="cart_list">
		<li class="cart_list_item">
			<hr> <br>
			<div>
				<div class="cart_list_item_img">
					<img src="${pageContext.request.contextPath}/resources/img/book3.jpg" >
				</div>
				
				<div class="cart_list_item_info">
					<div>
						책 이름 <br><br>
						<div class="cart_list_item_author">
							저자
						</div>
							
						<div>
							출판사
						</div>
					
					</div>
					<br><br>
					<div class="quantity">
						<input type="button" onclick='count("plus")' value="+"/>
						<div id="result">0</div>
						<input type="button" onclick='count("minus")' value="-"/>			
					</div>
					
				</div>
				
				<div class="cart_list_item_price">
					10,000,000원
				</div>
				
				<button class="cart_list_delete"> 삭제 </button>
				
			</div>
			
		</li>
		
	</ul>
	
	
	<div class="cart_payment_check">
		<h1 class="cart_payment_title">결제 예정 금액</h1> <br><br>
		<h1 class="cart_payment_price">100,000원</h1> <br><br>
		<button class="cart_payment_button">결제페이지 가기</button>
	</div>

</section>
</body>
</html>