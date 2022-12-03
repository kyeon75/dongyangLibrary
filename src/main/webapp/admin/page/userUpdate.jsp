<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form method="post">
	<table>
		<tr> 
			<td align="center" bgcolor="#FFFFCC">
				<table>
					<tr>
						<td colspan="3"><font color="#111111"><b>회원님의 정보를 수정합니다.</b></font></td>
					</tr>
					<tr> 
						<td>아이디</td>
						<td>${requestScope.dto.getId()}</td>
						<td><input type="hidden" name="user_id" value="${requestScope.dto.getId()}"></td>
					</tr>
					<tr> 
						<td>비밀번호</td>
						<td>${requestScope.dto.getPassword()}</td>
						<td><input type="text" name="password" placeholder=""></td>
					</tr>
					<tr> 
						<td>회원이름</td>
						<td>${requestScope.dto.getName()}</td>
						<td><input type="text" name="name" placeholder=""></td>
					</tr>
					<tr> 
						<td>이메일</td>
						<td>${requestScope.dto.getEmail()}</td>
						<td><input type="text" name="email" size="50" placeholder=""></td>
					</tr>
					<tr> 
						<td>전화번호</td>
						<td>${requestScope.dto.getMobileNumber()}</td>
						<td><input type="text" name="mobile_number" size="11" placeholder=""></td>
					</tr>
					<tr> 
						<td>주소</td>
						<td>${requestScope.dto.getBaseAddress()}</td>
						<td><input type="text" name="base_address" size="50" placeholder=""></td>
					</tr>
					<tr> 
						<td>상세주소</td>
						<td>${requestScope.dto.getSubAddress()}</td>
						<td><input type="text" name="sub_address" size="50" placeholder=""></td>
					</tr>
					<tr> 
						<td>성별</td>
						<td>${requestScope.dto.getGender()}</td>
						<td><input type="text" name="gender" size="15" placeholder="MALE / FEMALE"></td>
					</tr>
					<tr> 
						<td>생일</td>
						<td>${requestScope.dto.getBirth()}</td>
						<td><input type="text" name="birth" size="15" placeholder="0000-00-00"></td>
					</tr>
					<tr> 
						<td colspan="3" align="center">
							<input type="submit" value="수정완료" formaction="${pageContext.request.contextPath}/admin/userUpdateProc.do">
							<input type="submit" value="삭제" formaction="${pageContext.request.contextPath}/admin/userDeleteProc.do">
							<input type="reset" value="다시쓰기">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>