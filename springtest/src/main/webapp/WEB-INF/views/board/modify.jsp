<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charest=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>modify page</title>

<%@ include file="../include/header.jsp"%>
<script>
<!--
	function modifyok() {
		document.getElementById('modify_ok').submit();
	}
	-->
</script>



</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="../include/sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="../include/topbar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">자유게시판</h1>
					<p class="mb-4">

						<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">자유 게시판</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">

								<form id="modify_ok"
									action="modify_proc.do?b_no=${boardVO.b_no }" method="POST">
									<h6 class="m-0 font-weight-bold text-primary">
										제목 : <input type="text" name="b_title"
											placeholder=${boardVO.b_title }>
									</h6>
									<hr class="sidebar-divider">
									<div class="sidebar-heading"></div>

									<h6 class="m-0 font-weight-bold text-primary">작성자 :
										${boardVO.b_writer }</h6>

									<hr class="sidebar-divider">
									<div class="sidebar-heading"></div>

									<h6 class="m-0 font-weight-bold text-primary">내용 :</h6>
									<div>
										<h6 class="m-0 font-weight-bold text-primary">
											<textarea rows="10%" cols="80%" name="b_detail"
												placeholder=${boardVO.b_detail }></textarea>
										</h6>

									</div>
								</form>



							</div>

						</div>

					</div>
					<div>
						<a href="#" class="btn btn-success btn-icon-split btn-sm"
							onclick="javascript:modifyok();"> <span
							class="icon text-white-50"> <i class="fas fa-check"></i>
						</span> <span class="text">수정 완료</span>
						</a>
					</div>
				</div>

				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="../include/footer.jsp"%>
			<!-- End of Footer -->


		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="BootBoardinclude.jsp"%>

</body>

</html> 