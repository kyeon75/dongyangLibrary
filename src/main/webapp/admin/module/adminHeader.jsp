<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
  <tr bgcolor="#FFCC00"> 
    <td align="center"><b><a href="${pageContext.request.contextPath}/admin/index.do">관리자 홈 </a></b></td>
    <td align="center"><b><a href="AdminLogout.jsp">관리자 로그아웃 </a></b></td>
    <td align="center"><b><a href="${pageContext.request.contextPath}/admin/userMgr.do">회원 관리 </a></b></td>
    <td align="center"><b><a href="${pageContext.request.contextPath}/admin/bookMgr.do">상품 관리 </a></b></td>
    <td align="center"><b><a href="${pageContext.request.contextPath}/admin/orderMgr.do">주문 관리</a></b></td>
    <td align="center"><b><a href="${pageContext.request.contextPath}/admin/boardMgr.do">게시판 관리 </a></b></td>
  </tr>
</table> 