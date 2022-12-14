<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section class="container">

	<h1 class="payment_title">결제</h1>
	
	<hr>
	
	<jsp:include page="../module/bookcartPaymentItem.jsp">
		<jsp:param name="cartpaymentprice" value="@@"/>
	</jsp:include>
	
	<ul>
		<li><input type="hidden" id="hiddenBaseAddress" value="${requestScope.user_info.baseAddress}"></li>
		<li><input type="hidden" id="hiddenSubAddress" value="${requestScope.user_info.subAddress}"></li>
		<li><input type="hidden" id="hiddenMobileNumber" value="${requestScope.user_info.mobileNumber}"></li>
		<li><input type="hidden" id="hiddenName" value="${requestScope.user_info.name}"></li>
	</ul>
	
	
	<h1 class="payment_user_h1"> 주문자 정보 </h1>
	
	<div class="payment_user_info_radio">
		<input type="checkbox" onclick="getUserInfo(event, 'order')">회원 정보 가져오기
	</div> <br><br>
	
	<ul class="payment_info_list" id="order">
		<li  class="payment_info_list_item">
			주소 <input type=text class="payment_info_list_address_input baseAddress" placeholder=" 주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			상세주소 <input type=text class="payment_info_list_detail_address_input subAddress" placeholder=" 상세주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			전화번호 <input type=text class="payment_info_list_callnum_input mobileNumber" placeholder=" 전화번호를 입력해주세요">
		
		<li  class="payment_info_list_item">
			이름 <input type=text class="payment_info_list_user_input name" placeholder=" 이름을 입력해주세요">
		</li>
	</ul>
	
	
	<h1 class="payment_user_h1"> 배송 정보 </h1>
	
	<div class="payment_user_info_radio">
		<input type="checkbox"  name="chk_info" onclick="getUserInfo(event, 'shipping')">회원 정보 가져오기
	</div> <br><br>
	
	<ul class="payment_info_list" id="shipping">
		<li  class="payment_info_list_item">
			주소 <input type=text class="payment_info_list_address_input baseAddress" placeholder=" 주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			상세주소 <input type=text class="payment_info_list_detail_address_input subAddress" placeholder=" 상세주소를 입력해주세요">
		</li>
		
		<li  class="payment_info_list_item">
			전화번호 <input type=text class="payment_info_list_callnum_input mobileNumber" placeholder=" 전화번호를 입력해주세요">
		
		<li  class="payment_info_list_item">
			이름 <input type=text class="payment_info_list_user_input name" placeholder=" 이름을 입력해주세요">
		</li>
	</ul>
	
	<hr>
	<br><br><br><br>
	<h2 class="payment_user_h2"> 주문 도서 </h2>
	
	<ul class="payment_cart_list">
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

<script>
	function getUserInfo(event, target) {
		if (event.target.checked) {
			let hiddenBaseAddress = document.getElementById("hiddenBaseAddress").value
			let hiddenSubAddress = document.getElementById("hiddenSubAddress").value
			let hiddenMobileNumber = document.getElementById("hiddenMobileNumber").value
			let hiddenName = document.getElementById("hiddenName").value
			document.getElementById(target).getElementsByClassName("baseAddress")[0].value = hiddenBaseAddress;
			document.getElementById(target).getElementsByClassName("subAddress")[0].value = hiddenSubAddress;
			document.getElementById(target).getElementsByClassName("mobileNumber")[0].value = hiddenMobileNumber;
			document.getElementById(target).getElementsByClassName("name")[0].value = hiddenName;
		} else {
			document.getElementById(target).getElementsByClassName("baseAddress")[0].value = '';
			document.getElementById(target).getElementsByClassName("subAddress")[0].value = '';
			document.getElementById(target).getElementsByClassName("mobileNumber")[0].value = '';
			document.getElementById(target).getElementsByClassName("name")[0].value = '';
		}
	}
</script>
<script>
function count(event, type, book_id) {
	let book_count = event.target.parentNode.getElementsByClassName("book_count")[0]
 	let book_price = event.target.parentNode.parentNode.parentNode.parentNode.getElementsByClassName("cart_list_item_price")[0]
	if (type === 'plus') {
		book_count.innerText = parseInt(book_count.innerText) + 1;
	} else if (type === 'minus' && book_count.innerText > 1) {
		book_count.innerText = parseInt(book_count.innerText) -1;
	}
	
	fetch("./CartModify?book_id=" + book_id + "&book_count=" + book_count.innerText)
	.then(response => response.text())
	.then(res => { 
		if (res !== "true") {
			alert("번호 실패")
		}
		totalPrice()
	})
}

function deleteCart(event, book_id) {
	fetch("./CartDelete?book_id=" + book_id)
	.then(response => response.text())
	.then(res => { 
		if (res === "true") {
			event.target.parentNode.parentNode.remove()
		} else {
			alert("장바구니 삭제 실패")
		}
		totalPrice()
	})
}
function totalPrice() {
	let book_count = document.getElementsByClassName("book_count")
	let cart_list_item_price = document.getElementsByClassName("cart_list_item_price")
	let price = 0
	for (let i=0; i<book_count.length; i++) {
		price += parseInt(book_count[i].innerText) * parseInt(cart_list_item_price[i].innerText)
	}
	document.getElementsByClassName("total_price")[0].innerText = price
}
totalPrice()
</script>