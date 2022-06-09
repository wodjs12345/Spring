<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charest=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>login page</title>

<%@ include file="../include/header.jsp"%>

<script>
<!--
	var result = '${msg}';
	
	if (result == 'loginfail') {
		alert("아이디 또는 비밀번호가 다릅니다.");
	}
	else if (result == 'joinok'){
		alert("회원가입 성공")
	}
	function emptycheck() {
		var id = $("#user_id").val();
		var pw = $("#user_pw").val();
		
		document.getElementById('login_form').submit();
	}
	-->
</script>

</head>

<body class="bg-gradient-primary">
	<%@include file="../include/topbar.jsp"%>
	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">로그인!</h1>
									</div>


									<form class="user" action="login_proc.do" id="login_form"
										method="POST">
										<div class="form-group">
											<input type="text" name="user_id" id="user_id"
												class="form-control form-control-user"
												placeholder="Enter ID Address...">
										</div>
										<div class="form-group">
											<input type="password" name="user_pw" id="user_pw"
												class="form-control form-control-user"
												placeholder="Password">

										</div>

										<a href="#" class="btn btn-primary btn-user btn-block"
											onclick="javascript:emptycheck();"> 로그인 </a>
										<hr>
									</form>


									<div class="text-center">
										<a class="small" href="join.do">아이디가 없으십니까? 회원가입</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

	<%@ include file="BootLogininclude.jsp"%>


</body>

</html> 