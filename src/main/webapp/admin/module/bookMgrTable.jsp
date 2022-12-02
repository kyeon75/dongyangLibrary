<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String bookname = request.getParameter("bookname");
	String bookprice = request.getParameter("bookprice");
	String bookexplain = request.getParameter("bookexplain");
	String bookcount = request.getParameter("bookcount");
%>

<tr> 
	<td align="center"><%= bookname %></td>
	<td align="center"><%= bookprice %></td>
	<td align="center"><%= bookexplain %></td>
	<td align="center"><%= bookcount %></td>
</tr>