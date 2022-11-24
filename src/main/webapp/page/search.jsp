<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	String title = (String)request.getAttribute("title");
%>
<section class="container">
	<h3><%= title %></h3>
	<div>
		<jsp:include page="../module/left.jsp"/>
	</div>
	
	
</section>