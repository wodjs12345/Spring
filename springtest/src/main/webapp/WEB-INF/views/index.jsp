<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charest=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>main page</title>
<%@ include file="include/header.jsp" %>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
             <%@ include file="include/sidebar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
				<%@ include file="include/topbar.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
				<div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">메인 홈페이지</h1>


                    <!-- DataTales Example -->



                </div>

                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@ include file="include/footer.jsp" %>
            <!-- End of Footer -->


        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>



    <!-- Bootstrap core JavaScript-->
    <script src="/resources/template1/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/template1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/template1/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/template1/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/template1/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/template1/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/template1/js/demo/datatables-demo.js"></script>

</body>

</html> 