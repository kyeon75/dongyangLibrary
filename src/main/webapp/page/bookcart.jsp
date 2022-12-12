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