<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<li class="cart_list_item">
	<hr> <br>
	<div class="cart_list_item_box">
		<img class="cart_list_item_img" src="${pageContext.request.contextPath}/resources/img/${param.imgName}.jpg" >
		<div class="cart_list_item_info">
			<div>
				${param.name} <br><br>
				<div class="cart_list_item_author">
					${param.authorName}
				</div>
						
				<div>
					${param.publisherName}
				</div>
				
			</div>
			<br><br>
			<div class="quantity">
				<input type="button" onclick='count(event, "plus", "${param.book_id}")' value="+"/> <br><br>
				<div class="book_count">${param.count}</div> <br>
				<input type="button" onclick='count(event, "minus", "${param.book_id}")' value="-"/>			
			</div>
				
		</div>
		<div class="cart_list_item_price">
			${param.price}
		</div>
		<button type="submit" class="cart_list_delete" onclick="deleteCart(event,'${param.book_id}')">삭제</button>
	</div>	
</li>
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