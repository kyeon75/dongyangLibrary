<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <%@ page contentType="text/html;charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="memMgr" class="smartProject.MemberMgr" />
<jsp:useBean id="regBean" class="smartProject.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberUpdate(regBean);
%>

<%
if(flag){
%>
		<script>
		alert("성공적으로 수정하였습니다");
		location.href="Index.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("수정도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
	  }
%>

복사해온 샘플 프로젝트의 멤버 업데이트 프록.jsp는 이렇게 되어있었음
유즈빈으로 정보 저장하는듯???
 --%>

</body>
</html>