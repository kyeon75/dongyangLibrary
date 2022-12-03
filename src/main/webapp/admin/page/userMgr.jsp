<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">

	<jsp:include page="../module/adminHeader.jsp"></jsp:include>
	
	<table>
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<table>
		<tr bgcolor="#996600"> 
		<td align="center"><font color="#FFFFFF">회원이름</font></td>
		<td align="center"><font color="#FFFFFF">회원아이디</font></td>
		<td align="center"><font color="#FFFFFF">패스워드</font></td>
		<td align="center"><font color="#FFFFFF">전화번호</font></td> 
		<td align="center"><font color="#FFFFFF">이메일</font></td>
		<td align="center"><font color="#FFFFFF">수정</font></td>
		</tr>
		
		<jsp:include page="../module/userMgrTable.jsp">
			<jsp:param name="username" value="@@@@@@@@@@@"/>
			<jsp:param name="userid" value="@@"/>
			<jsp:param name="userpassword" value="@@"/>
			<jsp:param name="userphonenum" value="@@"/>
			<jsp:param name="useremail" value="@@"/>
		</jsp:include>
		
		</table>
	</td>
	</tr>
	</table>


</body>
</html>