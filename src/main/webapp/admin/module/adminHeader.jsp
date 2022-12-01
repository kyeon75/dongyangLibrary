<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>
			<a href="${pageContext.request.contextPath}/admin/user">유저관리</a>
		</li>
		
		<li>
			<a href="${pageContext.request.contextPath}/admin/book">도서관리</a>
		</li>
		
		<li>
			<a href="${pageContext.request.contextPath}/admin/board">게시글관리</a>
		</li>
		
		<li>
			<a href="${pageContext.request.contextPath}/admin/order">주문관리</a>
		</li>
	</ul>

</body>
</html>