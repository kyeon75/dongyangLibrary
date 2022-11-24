<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/module.css" rel="stylesheet">
	
<% 
	String contentPage = (String)request.getAttribute("page");
  	if (contentPage==null) {
   		contentPage="main";
   	} else if (contentPage.equals("signUp")) {
 %>
 		<link href="${pageContext.request.contextPath}/resources/css/signUp.css" rel="stylesheet">		
 <%
   	}
%>
</head>
<body>
	<jsp:include page="module/header.jsp" /> 
	<jsp:include page='<%= "page/" + contentPage + ".jsp"%>'/> 
	<jsp:include page="module/footer.jsp"/>
</body>
</html>