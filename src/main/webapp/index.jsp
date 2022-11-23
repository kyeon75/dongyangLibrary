<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<% 
	String contentPage = (String)request.getAttribute("page");
  	if (contentPage==null){
   		contentPage="main";
   	}
%>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link href="resources/css/reset.css" rel="stylesheet">
	<link href="resources/css/module.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="module/header.jsp" /> 
	<jsp:include page='<%= "page/" + contentPage + ".jsp"%>'/> 
	<jsp:include page="module/footer.jsp"/>
	git 실험
</body>
</html>