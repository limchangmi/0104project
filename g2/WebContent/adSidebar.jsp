<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Jeju alot <sup>관리</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>대쉬보드</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                page
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>페이지관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">페이지관리:</h6>
                        <a class="collapse-item" href="buttons.jsp">여행페이지 테마 리스트</a>
                        <a class="collapse-item" href="cards.jsp">여행페이지 상품 리스트</a>
                        <a class="collapse-item" href="cards.jsp">명소페이지 상품 리스트</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
          <!--   <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>상품등록</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">상품등록:</h6>
                        <a class="collapse-item" href="utilities-color.jsp">메인페이지 상품</a>
                        <a class="collapse-item" href="utilities-border.jsp">여행페이지 상품</a>
                        <a class="collapse-item" href="utilities-animation.jsp">명소페이지 상품</a>
                    </div>
                </div>
            </li> -->

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                member
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>회원관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">회원관리:</h6>
                        <a class="collapse-item" href="login.jsp">회원등록</a>
                        <a class="collapse-item" href="register.jsp">회원탈퇴</a>
                        <a class="collapse-item" href="forgot-password.jsp">휴먼회원관리</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.jsp">404 Page</a>
                        <a class="collapse-item" href="blank.jsp">Blank Page</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <div class="sidebar-heading">
                Board
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
                    aria-expanded="true" aria-controls="collapseBoard">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>게시판 관리</span>
                </a>
                <div id="collapseBoard" class="collapse" aria-labelledby="headingBoard" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">게시판관리:</h6>
                        <a class="collapse-item" href="login.jsp">게시글 관리</a>
                        <a class="collapse-item" href="register.jsp">공지사항</a>
                    </div>
                </div>
            </li>

<!--             Nav Item - Tables
            <li class="nav-item">
                <a class="nav-link" href="tables.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>
 -->
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

        </ul>
        <!-- End of Sidebar -->
</body>
</html>