<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String contentPage = (String)request.getAttribute("page");
	String alert = (String)request.getAttribute("alert");
	
  	if (contentPage==null) {
   		contentPage="main";
   		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.do");
		dispatcher.forward(request, response);
  	}
  	
  	if (alert != null) {
  		out.println("<script>");
  		out.println("alert('" + alert + "')");
  		out.println("</script>");
  	}
  	
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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