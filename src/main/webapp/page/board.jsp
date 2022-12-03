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
		<h1 class="board_title"><%= title %></h1>
			<hr>
		<ul class="post_list">
			<jsp:include page="../module/boardPage.jsp">
				<jsp:param value="num" name="postlistnum"/>
				<jsp:param value="title" name="postlisttitle"/>
				<jsp:param value="user" name="postlistuser"/>
				<jsp:param value="date" name="postlistdate"/>
			</jsp:include>		
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

</body>
</html>