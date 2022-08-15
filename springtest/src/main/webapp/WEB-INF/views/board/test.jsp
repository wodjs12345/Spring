<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charest=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>create page</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%@ include file="../include/header.jsp"%>


<script type="text/javascript">
<!--


  $(document).ready(function(){    
	
	if (typeof jQuery == 'undefined') {제이
	  alert("작동 안된다");
	}else{
		alert("작동 잘되네");
	
	}
	
$("#test>tbody").append("<tr><td>Test Row Append-------</td></tr>");
 //adding row to end and start
$("#test>tbody").prepend("<tr><td>Test Row Prepend-------</td></tr>");
	
});



-->
</script>



<style>
  .leftt { width: 200px; position: absolute; left: 90%; margin-left: -200px; top:90%; }
  .lefttt { position: absolute; left: 80%; transform: translateX(-50%); }
</style>







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

								<form id="create_ok" action="create_proc.do" method="POST">
									<h6 class="m-0 font-weight-bold text-primary">
										제목 : <input type="text" name="b_title"
											placeholder=${boardVO.b_title }>
									</h6>

									<hr class="sidebar-divider">
									<div class="sidebar-heading"></div>

									<h6 class="m-0 font-weight-bold text-primary">
									작성자 : ${sessionScope.s_user_id }
										<input type="hidden" name="b_writer" value="${sessionScope.s_user_id }">
										</h6>

									<hr class="sidebar-divider">
									<div class="sidebar-heading"></div>

									<h6 class="m-0 font-weight-bold text-primary">내용 :</h6>
									<div>
										<h6 class="m-0 font-weight-bold text-primary">
											<textarea rows="10%" cols="80%" name="b_detail"></textarea>
										</h6>

									</div>
								</form>

							</div>

							<div>
								<a href="#" class="btn btn-success btn-icon-split btn-sm" onclick="javascript:createok();">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                        <span class="text">작성 완료</span>
                                    </a>
							</div>


						</div>

					</div>


				</div>


				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
			<table id="test">
   <tbody>
        <tr><td>Test Row Prepend</td></tr>
        <tr><td>Foo</td></tr>
        <tr><td>Test Row Append</td></tr>
    </tbody>
    <tfoot>
        <tr><td>footer information</td></tr>
    </tfoot>
</table>

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

	<%@ include file="BootBoardinclude.jsp" %>

</body>

</html> 