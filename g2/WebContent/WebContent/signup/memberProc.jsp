<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="mgr" class="ch14.MemberMgr" />
<jsp:useBean id="bean" class="ch14.MemberBean" />
<jsp:setProperty property="*" name="bean" />
<%
	boolean result = mgr.insertMember(bean);
    String msg = "ȸ�����Կ� ���� �Ͽ����ϴ�.";
    String location = "member.jsp";
    if (result) {
        msg = "ȸ�������� �Ͽ����ϴ�.";
        location = "login.jsp";
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=location%>";
</script>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>