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

	<h1 class="payment_title"><%= title %></h1>
	
	<hr>
	
	<h1 class="payment_user_h1"> 주문자 정보 </h1>
	
	<div class="payment_user_info_radio">
		<input type="radio"  name="chk_info" value="">회원 정보 가져오기
	</div> <br><br>
	
	<jsp:include page="../module/paymentPaymentItem.jsp">
		<jsp:param name="cartpaymentprice" value="@@"/>
	</jsp:include>
	
	<ul class="payment_info_list">
		<li  class="payment_info_list_item">
			주소 <input type=text class="payment_info_list_address_input" placeholder=" 주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			상세주소 <input type=text class="payment_info_list_detail_address_input" placeholder=" 상세주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			전화번호 <input type=text class="payment_info_list_callnum_input" placeholder=" 전화번호를 입력해주세요">
		
		<li  class="payment_info_list_item">
			이름 <input type=text class="payment_info_list_user_input" placeholder=" 이름을 입력해주세요">
		</li>
	</ul>
	
	
	<h1 class="payment_user_h1"> 배송 정보 </h1>
	
	<div class="payment_user_info_radio">
		<input type="radio"  name="chk_info" value="">회원 정보 가져오기
	</div> <br><br>
	
	<ul class="payment_info_list">
		<li  class="payment_info_list_item">
			주소 <input type=text class="payment_info_list_address_input" placeholder=" 주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			상세주소 <input type=text class="payment_info_list_detail_address_input" placeholder=" 상세주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			전화번호 <input type=text class="payment_info_list_callnum_input" placeholder=" 전화번호를 입력해주세요">
		
		<li  class="payment_info_list_item">
			이름 <input type=text class="payment_info_list_user_input" placeholder=" 이름을 입력해주세요">
		</li>
	</ul>
	
	<hr>
	<br><br><br><br>
	<h2 class="payment_user_h2"> 주문 도서 </h2>
	
	<ul class="payment_cart_list">
		<jsp:include page="../module/bookcartItem.jsp">
			<jsp:param name="cartbookimagename" value="book3"/>
			<jsp:param name="cartbookname" value="@@"/>
			<jsp:param name="cartbookauthorname" value="@@"/>
			<jsp:param name="cartbookpublishername" value="@@"/>
			<jsp:param name="cartbookprice" value="@@"/>
		</jsp:include>
		
		<jsp:include page="../module/bookcartItem.jsp">
			<jsp:param name="cartbookimagename" value="book3"/>
			<jsp:param name="cartbookname" value="@@"/>
			<jsp:param name="cartbookauthorname" value="@@"/>
			<jsp:param name="cartbookpublishername" value="@@"/>
			<jsp:param name="cartbookprice" value="@@"/>
		</jsp:include>
		
	</ul>
	
	
</section>
</body>
</html>