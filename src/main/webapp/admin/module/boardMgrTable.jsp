<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String postnum = request.getParameter("postnum");
	String posttitle = request.getParameter("posttitle");
	String postuser = request.getParameter("postuser");
%>

<tr> 
	<td align="center"><%= postnum %></td>
	<td align="center"><%= posttitle %></td>
	<td align="center"><%= postuser %></td>
</tr>