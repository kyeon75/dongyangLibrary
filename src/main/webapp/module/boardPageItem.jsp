<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<li class="board_page_list_num">
	<a href="${pageContext.request.contextPath}/board.do?board_page=${param.boardPageNum}"><c:out value="${param.boardPageNum}"/></a>
</li>