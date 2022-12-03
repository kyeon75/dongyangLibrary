<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ordernum = request.getParameter("ordernum");
	String orderuser = request.getParameter("orderuser");
	String orderbook = request.getParameter("orderbook");
	String ordercount = request.getParameter("ordercount");
	String orderdate = request.getParameter("orderdate");
	String orderstate = request.getParameter("orderstate");
%>

<tr> 
	<td align="center"><%= ordernum %></td>
	<td align="center"><%= orderuser %></td>
	<td align="center"><%= orderbook %></td>
	<td align="center"><%= ordercount %></td>
	<td align="center"><%= orderdate %></td>
	<td align="center"><%= orderstate %></td>
</tr>