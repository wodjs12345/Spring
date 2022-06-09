<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charest=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>


	                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
	                <a href="/index.do">go home</a>
					<div class="topbar-divider d-none d-sm-block"></div>
                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

					<c:if test="${sessionScope.s_user_id !=null }">
						안녕하세요${sessionScope.s_user_id}님---<a href=/login/logout.do>logout</a>
					</c:if>
					<c:if test="${sessionScope.s_user_id ==null }">
						  <a href=/login/login.do>로그인이 필요합니다. </a>
					</c:if>



                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                               <c:if test="${sessionScope.s_user_id !=null }">
						 			 ${sessionScope.s_user_id}님
								</c:if>    
                                </span>
                                <img class="img-profile rounded-circle"
                                    src="/resources/template1/img/undraw_profile.svg">
                            </a>
                        </li>

                    </ul>

                </nav>
</body>
</html> 