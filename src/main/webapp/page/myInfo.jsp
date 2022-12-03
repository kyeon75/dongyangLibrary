<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.view.user.UserDTO"%>

<%
	UserDTO dto = (UserDTO)request.getAttribute("myInfo");
	String title = (String)request.getAttribute("title");
%>

<section class="container">
	<%-- <%= dto.getId() %>,
	<%= dto.getPassword() %>,
	<%= dto.getName() %>, 
	<%= dto.getEmail() %>, 
	<%= dto.getBirth() %>, 
	<%= dto.getGender() %>, 
	<%= dto.getMobileNumber() %>, 
	<%= dto.getBaseAddress() %>,
	<%= dto.getSubAddress() %>, --%>
	
	<h1 class="myinfo_title"><%= title %></h1>
	
	<button class="myinfo_button_1" type="button"> 주문내역 </button>

	<button class="myinfo_button" type="button"> 내 정보 </button>

	<a href="${pageContext.request.contextPath}/bookcart.do"><button class="myinfo_button" type="button"> 장바구니 </button></a>

	<button class="myinfo_button" type="button"> 내가쓴글 </button>
	
	
	<h1 class="myinfo_h1">주문 내역</h1>
	
	<table class="myinfo_order_table" border="1">
		<tr> 
			<td align="center">주문 제품명 &nbsp;</td>
			<td align="center">주문 제품 저자 &nbsp;</td>
			<td align="center">주문 제품 가격 &nbsp;</td>
			<td align="center">배송상태</td> 
		</tr>
		<tr> 
			<td align="center">주문 제품명 &nbsp;</td>
			<td align="center">주문 제품 저자 &nbsp;</td>
			<td align="center">주문 제품 가격 &nbsp;</td>
			<td align="center">배송상태</td> 
		</tr>
		<tr> 
			<td align="center">주문 제품명 &nbsp;</td>
			<td align="center">주문 제품 저자 &nbsp;</td>
			<td align="center">주문 제품 가격 &nbsp;</td>
			<td align="center">배송상태</td> 
		</tr>
	</table>
	
	<h1 class="myinfo_h1">내 정보</h1>
	
	<table class="myinfo_order_table" border="1">
		<tr> 
			<td align="center">이름 &nbsp;</td>
			<td align="center">아이디&nbsp;</td>
			<td align="center">비밀번호 &nbsp;</td>
			<td align="center">전화번호 &nbsp;</td>
			<td align="center">이메일 &nbsp;</td>
			<td align="center">주소 &nbsp;</td>
			<td align="center">상세주소 &nbsp;</td>
		</tr>
		
		<tr> 
			<td align="center">이름 &nbsp;</td>
			<td align="center">아이디&nbsp;</td>
			<td align="center">비밀번호 &nbsp;</td>
			<td align="center">전화번호 &nbsp;</td>
			<td align="center">이메일 &nbsp;</td>
			<td align="center">주소 &nbsp;</td>
			<td align="center">상세주소 &nbsp;</td>
		</tr>
		
		<tr> 
			<td align="center">이름 &nbsp;</td>
			<td align="center">아이디&nbsp;</td>
			<td align="center">비밀번호 &nbsp;</td>
			<td align="center">전화번호 &nbsp;</td>
			<td align="center">이메일 &nbsp;</td>
			<td align="center">주소 &nbsp;</td>
			<td align="center">상세주소 &nbsp;</td>
		</tr>
		<tr> 
			<td align="center">이름 &nbsp;</td>
			<td align="center">아이디&nbsp;</td>
			<td align="center">비밀번호 &nbsp;</td>
			<td align="center">전화번호 &nbsp;</td>
			<td align="center">이메일 &nbsp;</td>
			<td align="center">주소 &nbsp;</td>
			<td align="center">상세주소 &nbsp;</td>
		</tr>
		<tr> 
			<td align="center">이름 &nbsp;</td>
			<td align="center">아이디&nbsp;</td>
			<td align="center">비밀번호 &nbsp;</td>
			<td align="center">전화번호 &nbsp;</td>
			<td align="center">이메일 &nbsp;</td>
			<td align="center">주소 &nbsp;</td>
			<td align="center">상세주소 &nbsp;</td>
		</tr>
	</table>
	
	
</section>