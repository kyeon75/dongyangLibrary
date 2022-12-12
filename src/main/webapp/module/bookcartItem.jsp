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
