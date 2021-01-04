<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
    String id = "";
	String pwd = "";
	if(request.getParameter("id") != null)  
	   id  = request.getParameter("id");
	if(request.getParameter("pwd") != null) 
	   pwd  = request.getParameter("pwd");
	if(mMgr.loginMember(id, pwd)){
		session.setAttribute("idKey",id);
%>
	<script>
	alert("로그인 되었습니다");
    location.href="../qna/qna.jsp";
	</script>
<%	}else{ %>
	<script>
	  alert("로그인 되지 않았습니다.");
      location.href="login.jsp";
	</script>
<%}%>