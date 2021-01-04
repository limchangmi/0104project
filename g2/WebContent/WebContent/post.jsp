<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>
<title>JSP Board</title>
<link href="post.css" rel="stylesheet" type="text/css">
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
                <h1 class="">글쓰기</h1>
            </div>
         </div>
        
        <form name="postFrm" method="post" action="boardPost" enctype="multipart/form-data">
        <table class="wt_wp">
            <tr>
                <td >
                <table class="wt_tb">
                
                <!-- sql = "insert tblHelp(name,category,title,content,ref,pos,depth,regdate,"
                            + "pass,count,ip,filename,filesize,rstatus)";
                    sql += "values(?, ?, ?, ?, 0, 0, now(), ?, 0, ?, ?, ?)"; -->
                
                
                    <tr>
                        <td >아이디</td>
                        <td >
                        <input name="id" size="10" maxlength="8"></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="password" name="pass" size="15" maxlength="15"></td>
                    </tr>
                    <tr>
                        <td>분류</td>
                        <td><input name="category" size="15" maxlength="15"></td>
                    </tr>
                    <tr>
                        <td>제목</td>
                        <td>
                        <input name="title" size="50" maxlength="30"></td>
                    </tr>
                    <tr >
                        <td>내용</td>
                        <td class="wt_tx"><textarea name="content" rows="10" cols="50"></textarea></td>
                    </tr>
                    <tr>
                        <td>파일찾기</td> 
                        <td><input type="file" name="filename" size="50" maxlength="50"></td>
                    </tr>
                    <tr>
                        <td >내용타입</td>
                        <td class="radioBox">HTML<input type="radio" name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
                        TEXT<input type="radio" name="contentType" value="TEXT" checked>
                        </td>
                    </tr>
                    <tr>
                        <!-- <td colspan="2"><hr/></td> -->
                    </tr>
                    <tr>
                        <td colspan="2" class="wt_bb">
                            <input type="submit" value="등록">
                            <input type="reset" value="다시쓰기">
                            <input type="button" value="리스트" onClick="javascript:location.href='qna.jsp'">
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
        <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
        </form>
    </div>
</body>
</html>