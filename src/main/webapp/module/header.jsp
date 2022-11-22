<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<header>
	<div id="gnb_top" class="container">
		<ul id="gnb_top_box">
			<li><a href="./page/signUp.jsp">회원가입</a></li>
			<li><a href="./page/login.jsp">로그인</a></li>
			<li><a href="./page/myInfo.jsp">마이페이지</a></li>
		</ul>
	</div>
	<div id="gnb_mid" class="container">
		<h1 id="logo_box">
			<a href="./index.jsp">
				<img id="logo" src="resources/img/logo.png" alt="logo">
			</a>
		</h1>
<form id="search_form" action="#" method="post">
  <div id="input-wrapper">
    <input id="search_input" type="search" placeholder="search">
  </div>
  <input id="search_submit" type="submit" value="&#128269;"/>
</form>
		<ul>
			<li><a href="#"><img src="resources/img/cart.png" alt="" ></a></li>
			<li><a href="#"><img src="resources/img/profile.png" alt="" ></a></li>
		</ul>
	</div>
	
	<div id="gnb_bottom" class="container">
		<ul>
			<li><a href="searchBook.do?cmd=best">베스트</a></li>
			<li><a href="searchBook.do?cmd=hot">핫한상품</a></li>
			<li><a href="searchBook.do?cmd=sale">할인</a></li>
		</ul>
	</div>
</header>