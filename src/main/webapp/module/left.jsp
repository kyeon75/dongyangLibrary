<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#a1 {
	list-style:none;margin:0px; padding:0px;position:relative;
}
#a2 {
	list-style:none;display:none;position:absolute;left:0px;top:20px;padding:10px;
}
#a2 li {display: block;}
#a1 li:hover > ul {display:block;}
a {text-decoration-line : none;}

</style>
</head>
<body>
 <ul id="a1">
 	<li><a href="#">카테고리</a>
 		<ul id="a2">
 			<li><a href="${pageContext.request.contextPath}/category.do?category=nov">소설</a></li>
 			<li><a href="${pageContext.request.contextPath}/category.do?category=hum">인문</a></li>
 			<li><a href="${pageContext.request.contextPath}/category.do?category=art">예술</a></li>
 			<li><a href="${pageContext.request.contextPath}/category.do?category=del">종교</a></li>
 			<li><a href="${pageContext.request.contextPath}/category.do?category=soc">사회</a></li>
 			<li><a href="${pageContext.request.contextPath}/category.do?category=sci">과학</a></li> 					
 		</ul>
 </ul>
  
</body>
</html>