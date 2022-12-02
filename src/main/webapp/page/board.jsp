<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.view.board.BoardDTO, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	ArrayList<BoardDTO> dtoList = (ArrayList<BoardDTO>)request.getAttribute("boardList");
%>

<section class="container">
	<h1 class="board_title">자유게시판</h1>
	<br>
	<br>
	
	<ul class="post_list">
		<c:import url="${application.getserverinfo()}/module/boardPageItem.jsp" charEncoding="UTF-8">
			<c:param name="postListNum" value="번호" />
			<c:param name="postListTitle" value="제목" />
			<c:param name="postListUser" value="작성자" />
			<c:param name="postListDate" value="작성일" />
		</c:import>
		<c:forEach var="item" items="${requestScope.boardList}">
			<c:import url="${application.getserverinfo()}/module/boardPageItem.jsp" charEncoding="UTF-8">
				<c:param name="postListNum" value="${item.getBoard_id()}" />
				<c:param name="postListTitle" value="${item.getBoard_title()}" />
				<c:param name="postListUser" value="${item.getUser_id()}" />
				<c:param name="postListDate" value="${item.getPostdate()}" />
			</c:import>
		</c:forEach>
	</ul>
	
	<button class="board_prev_button"> 이전 </button>
	
	<ul class="board_page_list">
		<jsp:include page="../module/boardPageList.jsp">
			<jsp:param value="num" name="boardpagelistnum"/>
		</jsp:include>
	</ul>
	
	<button class="board_next_button"> 다음 </button>
		
	<a href="${pageContext.request.contextPath}/postEditor.do"><button class="board_post_button">글 작성</button></a>
</section>