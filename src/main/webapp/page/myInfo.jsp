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
				<div class="myInfo_line">
					<div class="myInfo_key">이름</div>
					<div class="myInfo_value">${requestScope.user_info.name}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">아이디</div>
					<div class="myInfo_value">${requestScope.user_info.id}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">비밀번호</div>
					<div class="myInfo_value">${requestScope.user_info.password}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">전화번호</div>
					<div class="myInfo_value">${requestScope.user_info.mobileNumber}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">이메일</div>
					<div class="myInfo_value">${requestScope.user_info.email}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">주소</div>
					<div class="myInfo_value">${requestScope.user_info.baseAddress}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">상세주소</div>
					<div class="myInfo_value">${requestScope.user_info.subAddress}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">성별</div>
					<div class="myInfo_value">${requestScope.user_info.gender}</div>
				</div>
				<div class="myInfo_line">
					<div class="myInfo_key">생일</div>
					<div class="myInfo_value">${requestScope.user_info.birth}</div>
				</div>
			</div>
		</c:if>
		<c:if test="${param.type eq 'board' }">
			<div class="myInfo_box">
				<table>
					<tr>
						<td align="center">번호</td>
						<td align="center">제목</td>
						<td align="center">작성자</td>
						<td align="center">작성일</td>
					</tr>
					<c:forEach var="item" items="${requestScope.board_list}">
						<tr>
							<td align="center"><a href="${pageContext.request.contextPath}/post.do?board_id=${item.board_id}">${item.board_id}</a></td>
							<td align="center"><a href="${pageContext.request.contextPath}/post.do?board_id=${item.board_id}">${item.board_title}</a></td>
							<td align="center"><a href="${pageContext.request.contextPath}/post.do?board_id=${item.board_id}">${item.user_id}</a></td>
							<td align="center"><a href="${pageContext.request.contextPath}/post.do?board_id=${item.board_id}">${item.postdate}</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	</div>
</section>