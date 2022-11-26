<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<header>
	<div id="gnb_top" class="container">
		<ul id="gnb_top_box">
			<li><a href="${pageContext.request.contextPath}/user/signUp">회원가입</a></li>
			<li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
			<li><a href="${pageContext.request.contextPath}/user/myInfo">마이페이지</a></li>
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
			<li><a href="${pageContext.request.contextPath}/buy/bookkart"><img src="${pageContext.request.contextPath}/resources/img/cart.png" alt="" ></a></li>
			<li><a href="${pageContext.request.contextPath}/buy/payment"><img src="${pageContext.request.contextPath}/resources/img/profile.png" alt="" ></a></li>
		</ul>
	</div>
	
	<div id="gnb_bottom" class="container">
		<div id="category">
			카테고리
		</div>
		<ul>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/book/best">베스트셀러  ·</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/book/hot">핫한상품  ·</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/book/discount">할인상품  ·</a></li>
			<li class="gnb_bottom_item"><a href="${pageContext.request.contextPath}/board/board">자유게시판</a></li>
		</ul>
	</div>
</header>