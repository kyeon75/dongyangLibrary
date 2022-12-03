<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String contentPage = (String)request.getAttribute("page");
	String alert = (String)request.getAttribute("alert");
	
  	if (contentPage==null)
   		contentPage="adminMain";
  	
  	if (alert != null) {
  		out.println("<script>");
  		out.println("alert('" + alert + "')");
  		out.println("</script>");
  	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>동양문고 관리자페이지</title>
	<link href="${pageContext.request.contextPath}/admin/index.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper">
		<jsp:include page="./module/adminHeader.jsp"></jsp:include>
		<jsp:include page='<%= "/admin/page/" + contentPage + ".jsp"%>'/>
	</div>
</body>
</html>