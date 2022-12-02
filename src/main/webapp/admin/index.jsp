<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contentPage = (String)request.getAttribute("page");
	
  	if (contentPage==null)
   		contentPage="userMgr";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<jsp:include page='<%= "/admin/page/" + contentPage + ".jsp"%>'/>
	</div>
</body>
</html>