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
		<td align="center"><font color="#FFFFFF">이름</font></td>
		<td align="center"><font color="#FFFFFF">저자</font></td>
		<td align="center"><font color="#FFFFFF">가격</font></td>
		<td align="center"><font color="#FFFFFF">내용</font></td>
		<td align="center"><font color="#FFFFFF">재고</font></td>
		<td align="center">&nbsp;</td>
		</tr>
		
		<tr> 
		<td align="center" colspan="5">등록된 상품이 없습니다.</td>
		</tr>
		
		<jsp:include page="../module/bookMgrTable.jsp">
			<jsp:param name="bookname" value="@@"/>
			<jsp:param name="bookauthor" value="@@"/>
			<jsp:param name="bookprice" value="@@"/>
			<jsp:param name="bookexplain" value="@@"/>
			<jsp:param name="bookcount" value="@@"/>
		</jsp:include>
		
		<tr>
		<td colspan="5" align="center"><a href="${pageContext.request.contextPath}/admin/bookInsert.do">상품등록</a></td>
		</tr>
		</table>
		
	</td>
	</tr>
	</table>

</body>
</html>