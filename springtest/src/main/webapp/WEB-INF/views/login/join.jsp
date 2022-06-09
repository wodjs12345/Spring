<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charest=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>join page</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%@ include file="../include/header.jsp"%>
<title>join page</title>

<script>
	<!--
	var result='${msg}';
	if(result == 'join_idnotnull'){
		alert('존재하는 아이디 입니다.');
	}	
	
$(document).ready(function() {
		
		$("#formcheck").on("click", function(e) {
			
			var id = $("#user_id").val();
			var pw = $("#user_pw").val();
			var pw2 = $("#user_pw2").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			if(pw==pw2){
				if(pw.length < 8 || pw.length > 20){
					  alert("8자리 ~ 20자리 이내로 입력해주세요.");
				}else if(pw.search(/\s/) != -1){
					  alert("비밀번호는 공백 없이 입력해주세요.");
				}else if(num < 0 || eng < 0 || spe < 0 ){
					  alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
				}else if(id.length<4 || id.length>10){
						  alert("아이디는 최소4자리 최대10자리 입니다.");
				}else {
						 document.getElementById('join_form').submit(); 
				}
			}
			else{
				alert("입력한 비밀번호가 다릅니다.");
			}
		});
		
	});
	
	-->
	</script>

</head>

<body class="bg-gradient-primary">
	<%@include file="../include/topbar.jsp"%>
	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
							</div>

							<form class="user" action="join_proc.do" id="join_form"
								method="POST">
								<div class="form-group">
									<input type="text" name="user_id" id="user_id"
										class="form-control form-control-user" placeholder="ID">
								</div>
								<div class="form-group">
									<input type="password" name="user_pw" id="user_pw"
										class="form-control form-control-user" placeholder="Password">
								</div>
								<div class="form-group">
									<input type="password" name="user_pw2" id="user_pw2"
										class="form-control form-control-user"
										placeholder="Repeat Password">
								</div>
								<div class="form-group">
									<input type="email" name="user_name"
										class="form-control form-control-user" placeholder="name">
								</div>
								<div class="form-group">
									<input type="email" name="user_email"
										class="form-control form-control-user" placeholder="Email">
								</div>

								<a href="#" class="btn btn-primary btn-user btn-block"
									id=formcheck> 회원가입 </a>
							</form>


							<hr>
							<div class="text-center">
								<a class="small" href="forgot-password.html">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="login.do">로그인 하기</a>
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