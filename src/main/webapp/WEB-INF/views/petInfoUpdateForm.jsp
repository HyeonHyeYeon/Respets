<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>반려동물 정보수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta
	content="A fully featured admin theme which can be used to build CRM, CMS, etc."
	name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="resources/images/logo-sm.png">

<!-- third party css -->
<link
	href="resources/dist/assets/css/vendor/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="resources/dist/assets/css/icons.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/dist/assets/css/app.min.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">
#petProfile {
	width: 150px;
	height: 150px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<!-- Begin page -->
	<div class="wrapper">

		<!-- ========== Left Sidebar Start ========== -->
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
								<h4 class="page-title">반려동물 정보 등록</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<p class="text-muted">반려동물의 정보는 업체에게 매우 필요한 정보로써 최대한 구체적으로
										작성하실 수록 상호간 소통이 원활합니다.</p>

									<form action="petInfoUpdate" name="petInfoUpdateForm"
										enctype="multipart/form-data" method="post">
										<div class="row">
											<div class="col-lg-6">

												<div class="form-group mb-3">
													<label for="example-fileinput">프로필 사진</label> <input
														type="file" id="example-fileinput"
														class="form-control-file">
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">이름<span style="color: red">*</span></label>
													<input type="text" name="pet_name" id="simpleinput"
														class="form-control" value="${pet.pet_name}" /> <span
														class="font-13 text-muted">e.g "바둑이"</span>
												</div>

												<div class="form-group mb-3">
													<label for="example-select">종류<span
														style="color: red">*</span></label> <select class="form-control"
														name="pty_no" id="pty_no">
														<option value="">선택</option>
														<option value="1">소형견</option>
														<option value="2">중형견</option>
														<option value="3">대형견</option>
														<option value="4">고양이</option>
														<option value="5">소동물</option>
														<option value="6">햄스터</option>
														<option value="7">고슴도치</option>
														<option value="8">페럿</option>
														<option value="9">기니피그</option>
														<option value="10">파충류</option>
														<option value="11">조류</option>
														<option value="12">가축</option>
														<option value="etc">기타</option>
													</select> <input type="text" class="form-control" name="pty_etc"
														id="pty_etc" placeholder="직접입력" /> <span
														class="font-13 text-muted">e.g "대형견"</span>
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">품종<span
														style="color: red">*</span></label> <input type="text"
														name="pet_vrt" id="simpleinput" class="form-control"
														value="${pet.pet_vrt}" /> <span
														class="font-13 text-muted">e.g "진돗개"</span>
												</div>

												<div class="form-group mb-3">
													<label for="example-select">성별<span
														style="color: red">*</span></label> <select class="form-control"
														id="example-select" name='pet_sex'>
														<option value="">선택</option>
														<option value='F'>암컷</option>
														<option value='M'>수컷</option>
													</select> <span class="font-13 text-muted">e.g "암컷"</span>
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">출생년도<span
														style="color: red">*</span></label> <input type="text"
														name="pet_age" id="simpleinput" class="form-control"
														value="${pet.pet_age}" /> <span
														class="font-13 text-muted">e.g "YYYY"</span>
												</div>

												<div class="form-group mb-3">
													<label for="example-select">중성화 수술<span
														style="color: red">*</span></label> <select class="form-control"
														id="example-select" name="pet_ntr">
														<option value="">선택</option>
														<option value='O'>중성화 했음</option>
														<option value='X'>중성화 안했음</option>
													</select> <span class="font-13 text-muted">e.g "중성화 했음"</span>
												</div>

												
											</div>
											<!-- end col -->

											<div class="col-lg-6">

												<div class="form-group mb-3">
													<label for="simpleinput">몸무게</label> <input type="text"
														name="pet_wght" id="simpleinput" class="form-control"
														value="${pet.pet_wght}" /> <span
														class="font-13 text-muted">e.g "00kg"</span>
												</div>
												
												<div class="form-group mb-3">
													<label for="simpleinput">질병</label> <input type="text"
														id="simpleinput" class="form-control" name="pet_sick"
														value="${pet.pet_sick}" /> <span
														class="font-13 text-muted">e.g "중이염"</span>
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">주의해야할 음식</label> <input
														type="text" name="pet_food" id="simpleinput"
														class="form-control" value="${pet.pet_food}"> <span
														class="font-13 text-muted">e.g "양고기"</span>
												</div>

												<div class="form-group mb-3">
													<label for="example-select">배변 훈련</label> <select
														class="form-control" id="example-select" name="pet_tot">
														<option value="미입력">선택</option>
														<option value='O'>훈련되어있음</option>
														<option value='X'>훈련되어있지 않음</option>
													</select> <span class="font-13 text-muted">e.g "훈련되어있음"</span>
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">일일 배식횟수 및 회당 배식량</label> <input
														type="text" name="pet_rat" id="simpleinput"
														class="form-control" value="${pet.pet_rat}" /> <span
														class="font-13 text-muted">e.g "0회 00g"</span>
												</div>

												<div class="form-group mb-3">
													<label for="simpleinput">가족이 된 날</label> <input type="text"
														name="pet_mday" id="simpleinput" class="form-control"
														value="${pet.pet_mday}" /> <span
														class="font-13 text-muted">e.g "YYYY/MM/DD"</span>
												</div>

												<div class="form-group mb-3">
													<label for="example-textarea">특이사항</label>
													<textarea class="form-control" id="example-textarea"
														rows="5" name="pet_etc">${pet.pet_etc}</textarea>
													<span class="font-13 text-muted">e.g "성격이 순하고 사람을 잘
														따라요"</span>
												</div>
											</div>
											<!-- end col -->
										</div>
										<!-- end row-->
									</form>
								</div>
								<!-- end card-body -->
							</div>
							<!-- end card -->
						</div>
						<!-- end col -->
					</div>
					<%-- <div class="row">
						<div class="col-12">
							반려동물 상세정보 수정 폼
	<br> 회원번호 : ${pet.per_no}
	<br> 동물번호 : ${pet.pet_no}
	<form action="petInfoUpdate" name="petInfoUpdateForm"
		enctype="multipart/form-data" method="post">
		<table>
			<tr>
				<td>프로필 사진</td>
				<td><img class="rounded-circle" id="petProfile"
					src="${pet.pet_loc}/${pet.pet_photo}"
					alt="pet profile"></td>
			</tr>
			<tr>
				<td>이름<span style="color: red">*</span></td>
				<td><input type="text" name="pet_name" placeholder="ex)토토" value="${pet.pet_name}"/></td>
			</tr>
			<tr>
				<td>종류<span style="color: red">*</span></td>
				<td>
					<!-- 드롭다운 --> <select name="pty_no" id="pty_no">
						<option value="">선택</option>
						<option value="1">소형견</option>
						<option value="2">중형견</option>
						<option value="3">대형견</option>
						<option value="4">고양이</option>
						<option value="5">소동물</option>
						<option value="6">햄스터</option>
						<option value="7">고슴도치</option>
						<option value="8">페럿</option>
						<option value="9">파충류</option>
						<option value="10">조류</option>
						<option value="etc">기타</option>
				</select> <input type="text" name="pty_etc" id="pty_etc" placeholder="직접입력" />
				</td>
			</tr>
			<tr>
				<td>품종<span style="color: red">*</span></td>
				<td><input type="text" name="pet_vrt" placeholder="ex)페르시안" value="${pet.pet_vrt}"/></td>
			</tr>
			<tr>
				<td>출생년도<span style="color: red">*</span></td>
				<td><input type="text" name="pet_age" placeholder="ex)2018" value="${pet.pet_age}"/></td>
			</tr>
			<tr>
				<td>성별<span style="color: red">*</span></td>
				<td>
					<!-- 드롭다운 --> <select name="pet_sex" id="pet_sex">
						<option value="">선택</option>
						<option value="F">암컷</option>
						<option value="M">수컷</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>중성화수술 여부<span style="color: red">*</span></td>
				<td>
					<!-- 드롭다운 --> <select name="pet_ntr" id="pet_ntr">
						<option value="">선택</option>
						<option value="O">중성화 했음</option>
						<option value="X">중성화 안했음</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>몸무게</td>
				<td><input type="text" name="pet_wght" placeholder="ex)1.5kg" value="${pet.pet_wght}"/></td>
			</tr>
			<tr>
				<td>질병</td>
				<td><input type="text" name="pet_sick" placeholder="ex)결막염" value="${pet.pet_sick}"/></td>
			</tr>
			<tr>
				<td>만난 날</td>
				<td><input type="text" name="pet_mday" placeholder="ex)2018/08/08" value="${pet.pet_mday}"/></td>
			</tr>
			<tr>
				<td>주의해야할 음식</td>
				<td><input type="text" name="pet_food" placeholder="ex)참치" value="${pet.pet_food}"/></td>
			</tr>
			<tr>
				<td>하루 식사 횟수 및 1회 배급량</td>
				<td><input type="text" name="pet_rat" placeholder="ex)1일 3회 100g씩" value="${pet.pet_rat}"/></td>
			</tr>
			<tr>
				<td>배변 훈련 여부</td>
				<td>
					<!-- 드롭다운 --> <select name="pet_tot" id="pet_tot">
						<option value="미입력">선택</option>
						<option value="O">훈련되어있음</option>
						<option value="X">훈련되어있지 않음</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>기타 특이사항</td>
				<td><textarea rows="5" cols="30" name="pet_etc"	placeholder="ex)낯선 사람을 잘 경계해요">${pet.pet_etc}</textarea></td>
			</tr>
			<tr>
				<td>프로필 사진</td>
				<td>
					<!-- accept 속성으로 파일 확장자를 지정하여 파일 선택 범위를 정할 수 있다 --> <input
					type="file" name="pet_photo" onchange="fileChk(this)" multiple />
					<input type="hidden" id="fileCheck" name="fileCheck" value="0" />
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: right;">					
					<input type="reset"	value="초기화" />&nbsp;
					<input type="button" value="수정 완료"	id="petInsertSubmit" />
				</td>
			</tr>
		</table>
		<input type="hidden" value="${pet.per_no}" name="per_no" />
		<input type="hidden" value="${pet.pet_no}" name="pet_no" />		 		
	</form>
						</div>
					</div>
 --%>
				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<!-- Footer Start -->
			<%@ include file="footer.html"%>
			<!-- end Footer -->

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->


	</div>
	<!-- END wrapper -->


	<!-- App js -->
	<script src="resources/dist/assets/js/app.min.js"></script>

	<!-- demo app -->
	<script src="resources/dist/assets/js/pages/demo.dashboard.js"></script>
	<!-- end demo js-->
</body>
<script>
	$(document).ready(function() {
		//종류-기타 숨기기
		$("#pty_etc").hide();
		//불러온 값에 selected속성 부여하기
		$("#pty_no option").each(function() {
			if ($(this).val() == "${pet.pty_no}")
				$(this).attr("selected", "selected");
		})
		$("#pet_sex option").each(function() {
			if ($(this).val() == "${pet.pet_sex}")
				$(this).attr("selected", "selected");
		})
		$("#pet_ntr option").each(function() {
			if ($(this).val() == "${pet.pet_ntr}")
				$(this).attr("selected", "selected");
		})
		$("#pet_tot option").each(function() {
			if ($(this).val() == "${pet.pet_tot}")
				$(this).attr("selected", "selected");
		})
	});

	$("#pty_no").change(function() {
		var type = this.value;
		console.log("clickType=" + type);
		if (type == "etc") {
			$("pty_etc").show(); //기타 입력창 보이기
		} else {
			$("#pty_etc").hide(); //기타 입력창 숨기기
		}
	});

	$("#petInsertSubmit").click(function() {
		console.log(this.value + " 클릭함");
		var frm = document.petInfoUpdateForm;
		var length = frm.length - 6;
		for (var i = 0; i < length; i++) {
			if (frm[i].name == "pet_name") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("이름이 입력되지 않았습니다");
					frm[i].focus();
					return;
				}
			} else if (frm[i].name == "pty_no") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("종류가 입력되지 않았습니다");
					frm[i].focus();
					return;
				} else if (frm[i].value == "etc") {
					if (frm[i + 1].value == "" || frm[i + 1].value == null) {
						alert("종류가 입력되지 않았습니다");
						frm[i + 1].focus();
						return;
					}
				}
			} else if (frm[i].name == "pet_vrt") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("품종이 입력되지 않았습니다");
					frm[i].focus();
					return;
				}
			} else if (frm[i].name == "pet_age") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("출생년도가 입력되지 않았습니다");
					frm[i].focus();
					return;
				}
			} else if (frm[i].name == "pet_sex") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("성별이 입력되지 않았습니다");
					frm[i].focus();
					return;
				}
			} else if (frm[i].name == "pet_ntr") {
				if (frm[i].value == "" || frm[i].value == null) {
					alert("중성화수술 여부가 입력되지 않았습니다");
					frm[i].focus();
					return;
				}
			} else if (frm[i].name == "pet_wght") {
				if (frm[i].value == "" || frm[i].value == null) {
					frm[i].value = "미입력";
					alert("frm[i].value=" + frm[i].value);
				}
			} else if (frm[i].name == "pet_sick") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			} else if (frm[i].name == "pet_mday") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			} else if (frm[i].name == "pet_food") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			} else if (frm[i].name == "pet_rat") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			} else if (frm[i].name == "pet_tot") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			} else if (frm[i].name == "pet_etc") {
				if (frm[i].value == "" || frm[i].value == null)
					frm[i].value = "미입력";
			}
		}
		frm.submit();
	});

	function fileChk(file) {
		/* if(file.length>1){
			alert("하나의 파일만 첨부해주세요");
			return;
		} */
		console.log(file.value);
		if (file.value == "") {
			console.log("empty");
			$("#fileCheck").val(0); //파일 첨부 안했음
		} else {
			console.log("not empty");
			$("#fileCheck").val(1); //파일 첨부 했음	
		}
	}
</script>
</html>