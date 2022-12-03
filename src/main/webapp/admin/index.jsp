<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contentPage = (String)request.getAttribute("page");
	
  	if (contentPage==null)
   		contentPage="main";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="module/adminHeader.jsp"></jsp:include>
	<div class="wrapper">
		<jsp:include page='<%= "/admin/page/" + contentPage + ".jsp"%>'/>
	</div>
</body>
</html>