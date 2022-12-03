<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<title>회원수정</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600">
<br>

	<jsp:include page="../module/adminHeader.jsp"></jsp:include>
	
	<%
	String mem_id = request.getParameter("mem_id");
	%>
	 
	<table>
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table>
			<form name="regForm" method="post" action="${pageContext.request.contextPath}/admin/userUpdateProc.do">
			<tr> 
			<td colspan="3"><font color="#111111"><b> 
			
			회원님의 정보를 수정합니다.</b></font> </td>
			</tr>
			<tr> 
			<td>아이디</td>
			<td>겟 파라미터로 종류별로 받아와서 여기다 쓰는듯</td>
			</tr>
			<tr> 
			<td>패스워드</td>
			<td><input type="text" name="mem_passwd" value="겟 파라미터로 종류별로 받아와서 여기다 쓰는듯"></td>
			</tr>
			<tr> 
			<td>이름</td>
			<td><input type="text" name="mem_name" value="겟 파라미터로 종류별로 받아와서 여기다 쓰는듯"></td>
			</tr>
			<tr> 
			<td>이메일</td>
			<td><input type="text" name="mem_email"  size="30" value="겟 파라미터로 종류별로 받아와서 여기다 쓰는듯"></td>
			</tr>
			<tr> 
			<td>전화번호</td>
			<td><input type="text" name="mem_phone" value="겟 파라미터로 종류별로 받아와서 여기다 쓰는듯"></td>
			</tr>
			<tr> 
			<td>주소</td>
			<td><input type="text" name="mem_address" size="50" value="겟 파라미터로 종류별로 받아와서 여기다 쓰는듯"></td>
			</tr>
			<tr> 
			<td colspan="2" align="center"><input type="submit" value="수정완료"> 
			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
			<input type="reset" value="다시쓰기"> 
			</td>
			</tr>
			<input type="hidden" name="mem_id" value="1">
			</form>
		</table>

	</td>
	</tr>
	</table>
		
</body>
</html>