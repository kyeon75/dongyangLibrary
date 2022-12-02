<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dm.common.RegisterDTO"%>

<%
	RegisterDTO dto = (RegisterDTO)request.getAttribute("myInfo");
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

	<button class="myinfo_button" type="button"> 내정보 </button>

	<button class="myinfo_button" type="button"> 장바구니 </button>

	<button class="myinfo_button" type="button"> 내가쓴글 </button>
	
</section>