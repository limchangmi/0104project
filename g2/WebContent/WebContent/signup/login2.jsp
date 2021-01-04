<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet" href="login.css">

<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>

</head>
<body>
	<form name="loginFrm" method="post" action="loginProc2.jsp">
	    <div class="box">
	      <div class="logo">
	        <span style="color: #4285F4">T</span>
	        <span style="color: #EA4335">o</span>
	        <span style="color: #FBBC05">p </span>
	        <span style="color: #34A853">s</span>
	        <span style="color: #4285F4">i</span>
	        <span style="color: #EA4335">g</span>
	        <span style="color: #FBBC05">h</span>
	        <span style="color: #34A853">t</span>
	        <span style="color: #4285F4">s</span>
	      </div>
	      <h2>Sign in</h2>
	      <p>Use your Google Account</p>
	      
	        <div class="inputBox">
	          <input name="id" required onkeyup="this.setAttribute('value', this.value);"  value="">
	          <label>Username</label>
	        </div>
	        <div class="inputBox">
	          <!-- <input type="text" name="text" required onkeyup="this.setAttribute('value', this.value);" value=""> -->
	          <input type="password" name="pwd" required value="">
	          <label>Passward</label>
	        </div>
	        <div class="forgetPassword">
	          <span>Forget password?</span>
	        </div>
	        <div class="alert">
	          <span>Not your computer? Use a Private Window to sign in. <span>Learn more</span></span>
	        </div>
	        <div class="bottomLine">
	          <div class="createAccount"><a href="member.jsp">Create account</a></div>
	          <input type="button" value="로그인" onclick="loginCheck()">&nbsp;
	        </div>
        
      </form>
    </div>
</body>
</html>