<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Respets :: 미인증기업목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon"
	href="resources/dist/assets/images/logo-sm.png">

<!-- App css -->
<link href="resources/dist/assets/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/dist/assets/css/app.min.css" rel="stylesheet"
	type="text/css" />

</head>
<body>
	<%@ include file="left-sidebar.jsp"%>

	<!-- Left Sidebar End -->

	<!-- ============================================================== -->
	<!-- Start Page Content here -->
	<!-- ============================================================== -->

	<div class="content-page">
		<div class="content">

			<!-- Topbar Start -->
			<%-- <jsp:include page="topbar-dashboard.jsp">
					<jsp:param name="no" value="${no}" />
				</jsp:include> --%>
			<%@ include file="topbar-dashboard.jsp"%>
			<!-- end Topbar -->

			<!-- Start Content-->
			<div class="container-fluid">

				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<form class="form-inline"></form>
							</div>
							<h4 class="page-title">미인증기업목록</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->
				<div class="row">
					<div class="col-xl-12">
						<div class="card mb-0">
							<div class="card-body">
								<span class="text-muted font-14 mb-4">미인증기업목록을 인증해주세요.</span> <br />
								<div class="table-responsive-sm">
									<table class="table table-centered mb-0"
										style='text-align: center;'>
										<thead>
											<tr style="text-align: center;">
												<th width='5%'>회원번호</th>
												<th>업종</th>
												<th>이메일</th>
												<th>업체명</th>
												<th>회원가입일시</th>
											</tr>
											${bList}
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<script src="/resources/dist/assets/js/app.min.js"></script>
</body>
</html>