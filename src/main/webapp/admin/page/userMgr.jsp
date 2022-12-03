<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table>
	<tr> 
		<td align="center" bgcolor="#FFFFCC">
			<table>
				<tr bgcolor="#996600"> 
					<td align="center"><font color="#FFFFFF">회원아이디</font></td>
					<td align="center"><font color="#FFFFFF">회원비밀번호</font></td>
					<td align="center"><font color="#FFFFFF">회원이름</font></td>
					<td align="center"><font color="#FFFFFF">이메일</font></td>
					<td align="center"><font color="#FFFFFF">전화번호</font></td> 
					<td align="center"><font color="#FFFFFF">주소</font></td>
					<td align="center"><font color="#FFFFFF">상세주소</font></td>
					<td align="center"><font color="#FFFFFF">성별</font></td>
					<td align="center"><font color="#FFFFFF">생일</font></td>
					<td align="center"><font color="#FFFFFF">수정</font></td>
				</tr>
				<c:forEach var="item" items="${requestScope.userList}">
					<c:import url="${application.getserverinfo()}/admin/module/userMgrTable.jsp" charEncoding="UTF-8">
						<c:param name="userId" value="${item.getId()}" />
						<c:param name="userPassword" value="${item.getPassword()}" />
						<c:param name="userName" value="${item.getName()}" />
						<c:param name="userEmail" value="${item.getEmail()}" />
						<c:param name="userMobileNumber" value="${item.getMobileNumber()}" />
						<c:param name="userBaseAddress" value="${item.getBaseAddress()}" />
						<c:param name="userSubAddress" value="${item.getSubAddress()}" />
						<c:param name="userGender" value="${item.getGender()}" />
						<c:param name="userBirth" value="${item.getBirth()}" />
					</c:import>
				</c:forEach>
			</table>
		</td>
	</tr>
</table>