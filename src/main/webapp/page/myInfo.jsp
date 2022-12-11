<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.view.user.UserDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="container myInfo_container">
	<h1 class="myinfo_title">마이페이지</h1>
	
	<!-- <a href="${pageContext.request.contextPath}/myInfo.do?type=order"><button class="myinfo_button_1" type="button">주문내역</button></a> -->
	<a href="${pageContext.request.contextPath}/myInfo.do?type=info"><button class="myinfo_button" type="button">내 정보</button></a>
	<a href="${pageContext.request.contextPath}/myInfo.do?type=board"><button class="myinfo_button" type="button">내가 쓴 글</button></a>
	<!-- <a href="${pageContext.request.contextPath}/bookcart.do?type=cart"><button class="myinfo_button" type="button">장바구니</button></a> -->
	
	<!--
	<c:if test="${param.type eq 'order' }">
		<table>
			<jsp:include page="${application.getserverinfo()}/module/myinfoOrderTableItem.jsp"/>
		</table>
	</c:if>
	-->
	<div class="myInfo_page">
		<c:if test="${param.type eq 'info' }">
			<div class="myInfo_box">
				<div>이름</div>
				<div>아이디</div>
				<div>비밀번호</div>
				<div>전화번호</div>
				<div>이메일</div>
				<div>주소</div>
				<div>상세주소</div>
			</div>
		</c:if>
		<c:if test="${param.type eq 'board' }">
			<div class="myInfo_box">
				<table>
					<jsp:include page="${application.getserverinfo()}/module/myinfoBoardTableItem.jsp"/>
				</table>
			</div>
		</c:if>
	</div>
</section>