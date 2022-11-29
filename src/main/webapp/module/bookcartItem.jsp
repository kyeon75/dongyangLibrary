<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cartbookimagename = request.getParameter("cartbookimagename");
	String cartbookname = request.getParameter("cartbookname");
	String cartbookauthorname = request.getParameter("cartbookauthorname");
	String cartbookpublishername = request.getParameter("cartbookpublishername");
	String cartbookprice = request.getParameter("cartbookprice");
%>

<li class="cart_list_item">
	<hr> <br>
		<div>
			<div class="cart_list_item_img">
				<img src="${pageContext.request.contextPath}/resources/img/<%= cartbookimagename %>.jpg" >
			</div>
				
			<div class="cart_list_item_info">
				<div>
					<%= cartbookname %> <br><br>
					<div class="cart_list_item_author">
						<%= cartbookauthorname %>
					</div>
							
					<div>
						<%= cartbookpublishername %>
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
				<%= cartbookprice %>
			</div>
				
			<button class="cart_list_delete"> 삭제 </button>
				
		</div>
			
</li>