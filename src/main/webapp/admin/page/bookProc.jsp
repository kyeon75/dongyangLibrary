<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="proMgr" class="smartProject.ProductMgr" />
<%
	String flag = request.getParameter("flag");
	boolean result = false;
	
	if(flag.equals("insert")){
    	result=proMgr.insertProduct(request);
	}else if(flag.equals("update")){
    	result=proMgr.updateProduct(request);
    }else if(flag.equals("delete")){
		result=proMgr.deleteProduct(request.getParameter("no"));
	}else{
		response.sendRedirect("ProductMgr.jsp");
	}
	
	if(result){
%>
	  <script>
	    alert("처리하였습니다");
		location.href="ProductMgr.jsp";
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		location.href="ProductMgr.jsp";
	  </script>
<%	}%>
유저 업데이트 프록처럼 얘도 원래 샘플 데이터의 프로덕트 프록은 이렇게 되어있었음
 --%>