<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String username = request.getParameter("username");
	String userid = request.getParameter("userid");
	String userpassword = request.getParameter("userpassword");
	String userphonenum = request.getParameter("userphonenum");
	String useremail = request.getParameter("useremail");
%>

<tr> 
	<td align="center"><%= username %></td>
	<td align="center"><%= userid %></td>
	<td align="center"><%= userpassword %></td>
	<td align="center"><%= userphonenum %></td>
	<td align="center"><%= useremail %></td>
	<td align="center">수정</td>
</tr>