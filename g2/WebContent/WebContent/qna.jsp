<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page import="ch15.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<%	
	  request.setCharacterEncoding("EUC-KR");
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=10; // 페이지당 레코드 수 
	  int pagePerBlock=15; //블럭당 페이지수 
	  
	  int totalPage=0; //전체 페이지 수
	  int totalBlock=0;  //전체 블럭수 

	  int nowPage=1; // 현재페이지
	  int nowBlock=1;  //현재블럭
	  
	  int start=0; //디비의 select 시작번호
	  int end=10; //시작번호로 부터 가져올 select 갯수
	  
	  int listSize=0; //현재 읽어온 게시물의 수

	String keyWord = "", keyField = "";
	Vector<BoardBean> vlist = null;
	if (request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	if (request.getParameter("reload") != null){
		if(request.getParameter("reload").equals("true")) {
			keyWord = "";
			keyField = "";
		}
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	 start = (nowPage * numPerPage)-numPerPage;
	 end = numPerPage;
	 
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);  //전체페이지수
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //현재블럭 계산
	  
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  //전체블럭계산
%>
<html>
<head>
<title>JSP Board</title>
<!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript">
	function list() {
		document.listFrm.action = "qna.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="read.jsp";
		document.readFrm.submit();
	}
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("검색어를 입력하세요.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>

        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link href="qna.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/9588789e92.js" crossorigin="anonymous"></script>






</head>
<body bgcolor="#FFFFCC">


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

<div id="center" align="center">

	<div class="qna_bn">
	    <img class="qna_bnimg" alt="" src="img/qna.jpg">
	    <!-- 큰제목 배너틀 안쪽 제주도 틀 -->
	    <div class="qna_bntxt">
	        <h1 class="">무엇을 도와드릴까요?</h1>
	    </div>
 	</div>
	
	<!-- <div class="ct_ss">
	    <div class="ct_dv ct_sc">
	        검색창 입력부분
	        <i class="fas fa-search"></i>
	        <input type="text" value="문제를 설명해 주세요." class="" autocomplete="off">
	        /검색창 입력창 틀
	        검색창 로고
	    </div>
     </div>    -->
	
	<div class="ct_wp">
		
					
				
				
					
				
		<table class="ct_fl">
			<tr>
				<td>
					<table class="ct_oo">
							<tr>
								<td>전체 : <span><%=totalRecord%></span>건 <span>|</span> 현재페이지<span >
								<%=nowPage%>/<%=totalPage%></span></td>
							</tr>
					</table>
				</td>
				<td >
                    <form  name="searchFrm"  method="get" action="qna.jsp" >
						<table class = "ct_cd" cellpadding="4" cellspacing="0" >
					 		<tr>
					  			<td >
					   				<select name="keyField" size="1" >
					    				<option value="id"> 이 름</option>
					    				<option value="subject"> 제 목</option>
					    				<option value="content"> 내 용</option>
					   				</select>
					   				<input size="16" name="keyWord">
					   				<input type="button"  value="검색" onClick="javascript:check()">
					   				<input type="hidden" name="nowPage" value="1">
					  			</td>
					 		</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	<table class="bd_tb"  align="center" width="100%" cellpadding="3">
		<tr>
			<td colspan="2">
			<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, end);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				  <table  class = "tb_ct" width="100%" cellpadding="2" cellspacing="0">
						<tr>
							<th width="10%">번호</th>
							<th width="10%">고객명</th>
							<th width="10%">분류</th>
							<th width="40%">제목</th>
							<th width="10%">날짜</th>
							<th width="10%">조회수</th>
							<th width="10%">상태</th>
						</tr>
					<!-- </th> -->
					<%
						  for (int i = 0;i<numPerPage; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String id = bean.getId();
							String category = bean.getCategory();
							String title = bean.getTitle();
							String regdate = bean.getRegdate();
							String rstatus = bean.getRstatus();
							int depth = bean.getDepth();
							int count = bean.getCount();
					%>
					<tr>
						<td>
							<%=totalRecord-((nowPage-1)*numPerPage)-i%>
						</td>
						<td><%=id%></td>
						<td><%=category%></td>
						<td style="text-align: left;">
						<%
							  if(depth>0){
								for(int j=0;j<depth;j++){
									out.println("&nbsp;&nbsp;");
									}
								}
						%>
						  <a href="javascript:read('<%=num%>')"><%=title%></a>
						</td>
						<%-- <td align="center"><%=name%></td> --%>
						<td><%=regdate%></td>
						<td><%=count%></td>
						<td><%=rstatus %></td>
					</tr>
					<%		}//for%>
				</table> <%
 			}//if
 		%>
			</td>
		</tr>
		<tr>
			<td><br /><br /></td>
		</tr>
		<tr>
			<td class="bt_lf" style="padding-left:150px;">
			<!-- 페이징 및 블럭 처리 Start--> 
			<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //하단 페이지 시작번호
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //하단 페이지 끝번호
   				  if(totalPage !=0){
    			  	if (nowBlock > 1) {%>
    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
    			  		<%for ( ; pageStart < pageEnd; pageStart++){%>
     			     	<a href="javascript:pageing('<%=pageStart %>')"> 
     					<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
     					<div class="paging"><%=pageStart %></div> 
     					<%if(pageStart==nowPage) {%></font> <%}%></a> 
    					<%}//for%>&nbsp; 
    					<%if (totalBlock > nowBlock ) {%>
    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
    				<%}%>&nbsp;  
   				<%}%>
 				<!-- 페이징 및 블럭 처리 End-->
				</td>
				<td class = "bt_rt">
					<div><a href="post.jsp">글쓰기</a> </div>
					<div><a href="javascript:list()">처음으로</a></div>
				</td>
			</tr>
		</table>
	<!-- <hr width="600"/> -->
	
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
	
	</div>
	
	
	
	
	
	<!-- 푸터 -->
            <footer class="ft_wp">
                <!-- 푸터 내부 첫째줄 프레임 -->
                <div class="ft_lf">
                    <!-- 푸터 내부 첫째줄 항목1 -->
                    <a class="" href="#" target="_blank">About</a>
                    <!-- 푸터 내부 첫째줄 항목2 -->
                    <a class="" href="#" target="_blank">Privacy</a>
                    <!-- 푸터 내부 첫째줄 항목3 -->
                    <a class="" href="#" target="_blank">Terms</a>
                    <!-- 푸터 내부 첫째줄 항목4 -->
                    <a class="" href="#" target="_blank">Join user studies</a>
                    <!-- 푸터 내부 첫째줄 항목5 -->
                    <span class="" >Feedback</span>
                    <!-- 푸터 내부 첫째줄 항목6 -->
                    <a class="" href="#" target="_blank">Help Centre</a>
                </div>
                
                <!-- 푸터 내부 둘째줄 -->
                <div class="ft_ls">
                    <p class="">Content written by Google unless otherwise noted</p>
                </div>
            </footer>
</div>
















</body>
</html>