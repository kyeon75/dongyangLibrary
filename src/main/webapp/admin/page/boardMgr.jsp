<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
	<tr> 
		<td align="center" bgcolor="#FFFFCC">
			<table>
				<tr bgcolor="#996600"> 
					<td align="center"><font color="#FFFFFF">글 번호</font></td>
					<td align="center"><font color="#FFFFFF">글 제목</font></td>
					<td align="center"><font color="#FFFFFF">작성자</font></td>
					<td align="center">&nbsp;</td>
				</tr>
				<jsp:include page="../module/boardMgrTable.jsp">
					<jsp:param name="postnum" value="@@"/>
					<jsp:param name="posttitle" value="@@"/>
					<jsp:param name="postuser" value="@@"/>
				</jsp:include>
			</table>
		</td>
	</tr>
</table>