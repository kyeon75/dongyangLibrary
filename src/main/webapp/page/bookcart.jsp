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
		
		<jsp:include page="../module/bookcartItem.jsp">
			<jsp:param name="cartbookimagename" value="book3"/>
			<jsp:param name="cartbookname" value="@@"/>
			<jsp:param name="cartbookauthorname" value="@@"/>
			<jsp:param name="cartbookpublishername" value="@@"/>
			<jsp:param name="cartbookprice" value="@@"/>
		</jsp:include>
	</ul>
	
	<jsp:include page="../module/bookcartPaymentItem.jsp">
		<jsp:param name="cartpaymentprice" value="@@"/>
	</jsp:include>

</section>
</body>
</html>