<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String cartpaymentprice = request.getParameter("cartpaymentprice");
%>

<div class="payment_payment_check">
	<h1 class="payment_payment_title">결제 예정 금액</h1> <br><br>
	<h1 class="payment_payment_price"><%= cartpaymentprice %></h1> <br><br>
	<button class="payment_payment_button">결제하기</button>
</div>