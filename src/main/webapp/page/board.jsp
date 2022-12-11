<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<section class="container">
	<h1 class="board_title">자유게시판</h1>
	<br>
	<br>
	
	<ul class="post_list">
		<c:import url="${application.getserverinfo()}/module/boardItem.jsp" charEncoding="UTF-8">
			<c:param name="postListNum" value="번호" />
			<c:param name="postListTitle" value="제목" />
			<c:param name="postListUser" value="작성자" />
			<c:param name="postListDate" value="작성일" />
		</c:import>
		<c:forEach var="item" items="${requestScope.boardList}">
			<c:import url="${application.getserverinfo()}/module/boardItem.jsp" charEncoding="UTF-8">
				<c:param name="postListNum" value="${item.getBoard_id()}" />
				<c:param name="postListTitle" value="${item.getBoard_title()}" />
				<c:param name="postListUser" value="${item.getUser_id()}" />
				<c:param name="postListDate" value="${item.getPostdate()}" />
			</c:import>
		</c:forEach>
	</ul>
	
	<button class="board_prev_button"> 이전 </button>
	
	<ul class="board_page_list">
		<c:if test="${param.board_page ne null && param.board_page > 5}">
			<c:forEach var="num" begin="${param.board_page-5}" end="${param.board_page+4}">
				<li class="board_page_list_num">
					<a href="${pageContext.request.contextPath}/board.do?board_page=${num}"><c:out value="${num}"/></a>
				</li>
			</c:forEach> 
		</c:if>
		<c:if test="${param.board_page eq null || param.board_page < 6}">
			<c:forEach var="num" begin="1" end="10">
				<li class="board_page_list_num">
					<a href="${pageContext.request.contextPath}/board.do?board_page=${num}"><c:out value="${num}"/></a>
				</li>
			</c:forEach> 
		</c:if>
	</ul>
	
	<button class="board_next_button"> 다음 </button>
		
	<a href="${pageContext.request.contextPath}/postEditor.do"><button class="board_post_button">글 작성</button></a>
	
	<br><br><br><br><br><br><br><br>
	
	<form id="board_form" action="#" method="post">
  		<div id="board_input_wrapper">
    		<input id="board_input" type="search" placeholder="search">
 		</div>
  		<input id="board_submit" type="submit" value="&#128269;"/>
	</form>
	
</section>