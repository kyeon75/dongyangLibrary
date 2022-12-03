<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<header>
	<div id="gnb_top" class="container">
		<ul id="gnb_top_box">
<% 
	if(session.getAttribute("id") != null) {
%>
			<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
			<li><a href="${pageContext.request.contextPath}/myInfo.do">마이페이지</a></li>
<%
	} else {
%>
			<li><a href="${pageContext.request.contextPath}/login.do">로그인</a></li>
			<li><a href="${pageContext.request.contextPath}/signUp.do">회원가입</a></li>
<%
	}
%>
		</ul>
	</div>
	<div id="gnb_mid" class="container">
		<h1 id="logo_box">
			<a href="${pageContext.request.contextPath}">
				<img id="logo" src="${pageContext.request.contextPath}/resources/img/logo.png" alt="logo">
			</a>
		</h1>
<form id="search_form" action="#" method="post">
  <div id="input-wrapper">
    <input id="search_input" type="search" placeholder="search">
  </div>
  <input id="search_submit" type="submit" value="&#128269;"/>
</form>
		<ul>
			<li><a href="${pageContext.request.contextPath}/bookcart.do"><img src="${pageContext.request.contextPath}/resources/img/cart.png" alt="" ></a></li>
			<li><a href="${pageContext.request.contextPath}/payment.do"><img src="${pageContext.request.contextPath}/resources/img/profile.png" alt="" ></a></li>
		</ul>
	</div>
	
	<div id="gnb_bottom" class="container">
		<div id="category">
			<span>&#9776;</span>카테고리
		</div>
		<ul id="gnb_bottom_box">
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/best.do">베스트셀러</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/hot.do">핫한상품</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/discount.do">할인상품</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/board.do">자유게시판</a></li>
		</ul>
	</div>
</header>