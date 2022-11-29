<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% 
	String contentPage = (String)request.getAttribute("page");
	String alert = (String)request.getAttribute("alert");
	
  	if (contentPage==null)
   		contentPage="main";
  	
  	if (alert != null) {
  		out.println("<script>");
  		out.println("alert('" + alert + "')");
  		out.println("</script>");
  	}
  	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>동양문고</title>
	<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/module.css" rel="stylesheet">
	<link href='<%= request.getContextPath() + "/resources/css/" + contentPage + ".css"%>' rel="stylesheet">	
</head>
<body>
	<jsp:include page="module/header.jsp" />
	<div class="wrapper">
		<jsp:include page='<%= "page/" + contentPage + ".jsp"%>'/>
	</div>
	<jsp:include page="module/footer.jsp"/>
</body>
</html>