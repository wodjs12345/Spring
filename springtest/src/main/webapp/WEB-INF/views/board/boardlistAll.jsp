<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charest=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>boardlistAll page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<%@ include file="../include/header.jsp"%>


<script type="text/javascript">
<!--
	$(document).ready(function() {
		
		
		let moveForm = $("#moveForm");
		$(".pageInfo a").on("click", function(e) {
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/board/boardlistAll.do");
			moveForm.submit();
		});
		$(".search_areaa button").on("click", function(e) {
			e.preventDefault();
			let val = $("input[name='keyword']").val();
			moveForm.find("input[name='keyword']").val(val);
			moveForm.find("input[name='pageNum']").val(1);
			moveForm.submit();
		});
		
		

		
	});
	-->
</script>
<script>
<!--
	var result = '${msg}';
	
	if (result == 'deleteok') {
		alert("삭제완료");
	}
	if (result == 'createok') {
		alert("생성완료");
	}
	if (result == 'createfail') {
		alert("로그인 후 이용해 주세요");
	}
	
	-->
</script>

<!-- 틀 만들어 놓은거 -->


<style>
.createex {
	width: 200px;
	position: absolute;
	left: 90%;
	margin-left: -000px;
}
.createe {
	position: absolute;
	left: 90%;
	width: 200px;
	top: 80%;
	margin-left: -100px;
}
.pageInfo_wrap {
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
	top: 80%;
}
.pageInfo {
	list-style: none;
	display: inline-block;
	margin: 1px 0 0 50px;
}
.pageInfo li {
	float: left;
	font-size: 13px;
	margin-left: 18px;
	font-weight: 500;
}
.pageInfo_wrap a:link {
	color: black;
	text-decoration: none;
}
pageInfo_wrap a:visited {
	color: black;
	text-decoration: none;
}
pageInfo_wrap a:hover {
	color: black;
	text-decoration: underline;
}
.active {
	background-color: #cdd5ec;
}
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
					<h1 class="h3 mb-2 text-gray-800">자유 게시판</h1>
					<p class="mb-4">
						자유 게시판 입니당<a target="_blank" href="">yapyap</a>.
					</p>


					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">자유 게시판</h6>

							<div class="search_wrap">
								<div class="search_areaa">
									<input type="text" name="keyword"
										value="${pageMaker.cri.keyword }">
									<button>Search</button>
								</div>
							</div>


						</div>

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-boarded" width="100%" align="left">
									<thead>
										<tr>
											<th>글 번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									<thead>
									<tbody>
										<c:forEach items="${boardList}" var="boardVO">
											<tr>
												<td><a href="/board/detail.do?b_no=${boardVO.b_no}">${boardVO.b_no }</a></td>
												<td><a href="/board/detail.do?b_no=${boardVO.b_no}">${boardVO.b_title }</a></td>
												<td>${boardVO.b_writer }</td>
												<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
														value="${boardVO.b_date }" /></td>
												<td><span> ${boardVO.b_count }</span></td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="pageInfo_wrap">
						<div class="pageInfo_area">
							<ul id="pageInfo" class="pageInfo">


								<!-- 이전페이지 버튼 -->
								<c:if test="${pageMaker.prev}">
									<li class="pageInfo_btn previous"><a
										href="${pageMaker.startPage-1}">Previous</a></li>
								</c:if>


								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class="pageInfo_btn ${pageMaker.cri.pageNum == num ?"active":"" }"><a
										href="${num}">${num}</a></li>
								</c:forEach>

								<!-- 다음페이지 버튼 -->
								<c:if test="${pageMaker.next}">
									<li class="pageInfo_btn next"><a
										href="${pageMaker.endPage + 1 }">Next</a></li>
								</c:if>
							</ul>
						</div>


					</div>
<div class=createe>
							<a href="create.do" class="btn btn-success btn-icon-split btn-sm">
								<span class="icon text-white-50"> <i class="fas fa-check"></i>
							</span> <span class="text">게시글 작성</span>
							</a>
						</div>

				</div>

				<!-- /.container-fluid -->

				<form id="moveForm" method="GET">
					<input type="hidden" name="pageNum" id="pageNum"
						value="${pageMaker.cri.pageNum }"> <input type="hidden"
						id="amount" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" id="keyword" name="keyword"
						value="${pageMaker.cri.keyword }">
				</form>

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



	<%@ include file="BootBoardinclude.jsp"%>

</body>

</html> 