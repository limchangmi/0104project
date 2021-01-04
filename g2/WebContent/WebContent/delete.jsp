<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="ch15.BoardBean"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<html>
<head>
<title>JSP Board</title>
<link href="delete.css" rel="stylesheet" type="text/css">
<%
	request.setCharacterEncoding("EUC-KR");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	if (request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean) session.getAttribute("bean");
		String dbPass = bean.getPass();
		if (inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			String url = "qna.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		} else {
%>
<script type="text/javascript">
	alert("입력하신 비밀번호가 아닙니다.");
	history.back();
</script>
<%}
	} else {
%>
<script type="text/javascript">
	function check() {
		if (document.delFrm.pass.value == "") {
			alert("패스워드를 입력하세요.");
			document.delFrm.pass.focus();
			return false;
		}
		document.delFrm.submit();
	}
</script>
</head>
<body >
     <header class="" id="header">
        <!-- 헤더 내부 박스1 - 좌측(버거메뉴+사이트로고+가운데 빈부분까지) -->
        <div class="hd_b1">
            
     
            <!-- 사이트로고 -->
            <div class="hd_c2">
                <a class="" href="index_2.jsp">
                    <p>JEJUALOT</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- 헤더 오른쪽 로그인 -->
           
            <div class="hd_c4">
                <a class="" href="signup/login.jsp">
           
                    로그인
                </a>
            </div>
            <!-- 헤더 오른쪽 개인정보 이미지 -->
            
            <div class="hd_c3">
                <a class="" href="#">
                    
                    <svg id="레이어_1" data-name="레이어 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 550 550"><defs><style>.cls-1,.cls-2{fill:none;stroke-miterlimit:10;stroke-width:33px;}.cls-1{stroke:#626567;}.cls-2{stroke:#626567;}</style></defs><circle class="cls-1" cx="246.5" cy="190.5" r="75.94"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><path class="cls-1" d="M93.09,410.91s38.67-69.05,111-69.05c0,0,59.07,22.66,116,0,0,0,57.76-2.21,111,69.05C431,410.91,270.22,582.36,93.09,410.91Z" transform="translate(-15.55 -10.61)"/></svg>
   
                </a>
            </div>
        </div>

    </header>
    
    
    
    
    
    <div id="center">
        <div class="qna_bn">
            <img class="qna_bnimg" alt="" src="img/qna.jpg">
            <!-- 큰제목 배너틀 안쪽 제주도 틀 -->
            <div class="qna_bntxt">
                <h1 class="">글 삭제</h1>
            </div>
         </div>
         <table class="tt_lb">
			<tr>
				<td class="intro">
					사용자의 비밀번호를 입력해주세요.
				</td>
			</tr>
		</table>
        <form name="delFrm" method="post" action="delete.jsp">
	        <table class="wt_wp">
	            <tr>
	                <td >
		                <table class="wt_tb">
		                    <tr>
		                        <td>비밀번호</td>
		                        <td><input type="password" name="pass" size="17" maxlength="15"></td>
		                    </tr>
		                    <tr>
		                        <td></td>
		                        <td></td>
		                    </tr>
		                    <tr>
		                        <td colspan="2" class="wt_bb">
		                           <input type="button" value="삭제완료" onClick="check()"> 
									<input type="reset" value="다시쓰기">
									<input type="button" value="뒤로" onClick="history.go(-1)">
		                        </td>
		                    </tr>
		                </table>
	                </td>
	            </tr>
	        </table>
	        
	        <input type="hidden" name="nowPage" value="<%=nowPage%>"> 
			<input type="hidden" name="num" value="<%=num%>">
        </form>
    </div>
    <%}%>
</body>
</html>