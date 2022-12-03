<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tr> 
	<td align="center"><c:out value="${param.userId}"/></td>
	<td align="center"><c:out value="${param.userPassword}"/></td>
	<td align="center"><c:out value="${param.userName}"/></td>
	<td align="center"><c:out value="${param.userEmail}"/></td>
	<td align="center"><c:out value="${param.userMobileNumber}"/></td>
	<td align="center"><c:out value="${param.userBaseAddress}"/></td>
	<td align="center"><c:out value="${param.userSubAddress}"/></td>
	<td align="center"><c:out value="${param.userGender}"/></td>
	<td align="center"><c:out value="${param.userBirth}"/></td>
	<td align="center"><a href="${pageContext.request.contextPath}/admin/userUpdate.do?user_id=${param.userId}">수정</a></td>
</tr>