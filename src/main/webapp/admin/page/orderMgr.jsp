<%@ page contentType="text/html;charset=UTF-8" %>
<table>
	<tr> 
		<td align="center" bgcolor="#FFFFCC">
			<table>
				<tr bgcolor="#996600"> 
					<td align="center"><font color="#FFFFFF">주문번호</font></td>
					<td align="center"><font color="#FFFFFF">주문자</font></td>
					<td align="center"><font color="#FFFFFF">제품</font></td>
					<td align="center"><font color="#FFFFFF">주문수량</font></td>
					<td align="center"><font color="#FFFFFF">주문날짜</font></td>
					<td align="center"><font color="#FFFFFF">주문상태</font></td>
					<td>&nbsp;</td>
				</tr>
				<tr> 
					<td align="center" colspan="7">주문 내역이 없습니다</td>
				</tr>
				<jsp:include page="../module/bookMgrTable.jsp">
					<jsp:param name="ordernum" value="@@"/>
					<jsp:param name="orderuser" value="@@"/>
					<jsp:param name="orderbook" value="@@"/>
					<jsp:param name="ordercount" value="@@"/>
					<jsp:param name="orderdate" value="@@"/>
					<jsp:param name="orderstate" value="@@"/>
				</jsp:include>
			</table>
		</td>
	</tr>
</table>