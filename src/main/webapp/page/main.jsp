<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<section>   
	<div id="banner">
		<img class="bannerImg" src="${pageContext.request.contextPath}/resources/img/bannerImage1.jpg" alt="배너광고" >
	</div>
</section>

<section class="container">
	<jsp:include page="/module/MainBookItem.jsp">
		<jsp:param value="BEST" name="title"/>
	</jsp:include>
	<jsp:include page="/module/MainBookItem.jsp">
		<jsp:param value="핫한도서" name="title"/>
	</jsp:include> 
	<jsp:include page="/module/MainBookItem.jsp">
		<jsp:param value="할인상품" name="title"/>
	</jsp:include> 
</section>