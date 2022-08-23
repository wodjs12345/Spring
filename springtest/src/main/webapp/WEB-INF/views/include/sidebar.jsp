<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charest=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/index.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3"> 홈으로 </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">



            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/index.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>홈으로</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                메뉴
            </div>

            <!-- Nav Item - 로그인,회원가입 -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>로그인/회원가입</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">로그인/회원가입:</h6>
                        <a class="collapse-item" href="/login/login.do">로그인</a>
                        <a class="collapse-item" href="/login/join.do">회원가입</a>
                    </div>
                </div>
            </li>



            <!-- Nav Item - 자유게시판 -->
            <li class="nav-item active">
                <a class="nav-link" href="/board/boardlistAll.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>자유 게시판</span></a>
            </li>

			<!-- Nav Item - 채팅 -->
            <li class="nav-item active">
                <a class="nav-link" href="/chat/chat.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>실시간채팅</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
</body>
</html> 