<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Simple Shopping Mall Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>

<body bgcolor="#996600" topmargin="100">

	<jsp:include page="../module/adminHeader.jsp"></jsp:include>

	<table>
	<tr> 
	<td align="center" bgcolor="#FFFFCC">

		<form method="post" action="${pageContext.request.contextPath}/admin/bookProc.do?flag=insert" enctype="multipart/form-data">
		<table>
		<tr bgcolor="#996600"> 
		<td colspan="2" align="center"><font color="#FFFFFF">책 등록</font></td>
		</tr>
		<tr> 
		<td align="center">책 이름</td>
		<td align="left"><input type="text" name="name" size="20"></td>
		</tr>
		<tr> 
		<td align="center">책 저자</td>
		<td align="left"><input type="text" name="name" size="20"></td>
		</tr>
		<tr> 
		<td align="center">책 가격</td>
		<td align="left"><input type="text" name="price" size="20">원</td>
		</tr>
		<tr> 
		<td align="center">책 설명</td>
		<td><textarea rows="10" cols="45" name="detail"></textarea></td>
		</tr>
		<tr> 
		<td align="center">책 수량</td>
		<td><input type="text" name="stock" size="10">개</td>
		</tr>
		<tr> 
		<td align="center">책 이미지</td>
		<td><input type="file" name="image"></td>
		</tr>
		<tr> 
		<td colspan="2" align="center"> 
		<input type="submit" value="상품등록">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시쓰기">
		</td>
		</tr>
		</table>
		</form>
	
	</td>
	</tr>
	</table>


</body>
</html>