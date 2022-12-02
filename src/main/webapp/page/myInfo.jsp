<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.view.user.UserDTO"%>

<%
UserDTO dto = (UserDTO)request.getAttribute("myInfo");
%>

<section class="container">
	<%= dto.getId() %>, 
	<%= dto.getPassword() %>,
	<%= dto.getName() %>, 
	<%= dto.getEmail() %>, 
	<%= dto.getBirth() %>, 
	<%= dto.getGender() %>, 
	<%= dto.getMobileNumber() %>, 
	<%= dto.getBaseAddress() %>,
	<%= dto.getSubAddress() %>, 
</section>