<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@ include file="head.jsp"%>
</head>
<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
	<div class="d-flex align-items-center justify-content-between">
		<a href="index.html" class="logo d-flex align-items-center"> <img
			src="../assets/img/logo.png" alt="" /> <span
			class="d-none d-lg-block">NiceAdmin</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo -->

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">
			<li class="nav-item d-block d-lg-none"><a
				class="nav-link nav-icon search-bar-toggle" href="#"> <i
					class="bi bi-search"></i>
			</a></li>
			<!-- End Search Icon-->

			<li class="nav-item dropdown pe-3 me-2"><a
				class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
				data-bs-toggle="dropdown"> <img
					src="<c:url value='/resources/assets/img/profile-img.jpg'/>" alt="Profile"
					class="rounded-circle" /> <span
					class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
			</a> <!-- End Profile Iamge Icon -->

				<ul
					class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile v-drop-profile">
					<li class="dropdown-header">
						<h6>Kevin Anderson</h6> <span>Web Designer</span>
					</li>
					<li>
						<hr class="dropdown-divider" />
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="QL_TrangCaNhan.html"> <i class="bi bi-person"></i> <span>Tài
								khoản của tôi</span>
					</a></li>

					<li>
						<hr class="dropdown-divider" />
					</li>

					<li><a class="dropdown-item d-flex align-items-center"
						href="QL_DangNhap.html"> <i class="bi bi-box-arrow-right"></i>
							<span>Đăng xuất</span>
					</a></li>
				</ul> <!-- End Profile Dropdown Items --></li>
			<!-- End Profile Nav -->
		</ul>
	</nav>
	<!-- End Icons Navigation -->
</header>
<!-- End Header -->
<%@ include file="slidebar.jsp"%>
<main id="main" class="main">
	<div class="pagetitle">
		<h1>Chuyến Xe</h1>
	</div>
	<!-- End Page Title -->
	<a href = "/CNPM/QL_ChuyenXe/insert.html"><button type="button"
		class="btn add-new btn-outline-danger shadow-none"
		data-bs-toggle="modal" data-bs-target="#verticalycentered">Thêm mới
		 <i class="bi bi-plus-circle"></i></button></a>
	
	<section class="section">
		<div class="row">
			<div class="col-lg-12">
				<div class="card-body">
					<!-- Table with stripped rows -->
					<table class="table datatable table-striped table-bordered">
						<thead>
							<tr class="v-table-tr-color">
								<th scope="col">Mã chuyến</th>
								<th scope="col">Ngày khỏi hành</th>
								<th scope="col">Thời gian đi</th>
								<th scope="col">Biển xe</th>
								<th scope="col">Trạng Thái</th>
								<th scope="col" class="text-center">Option</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var = "u" items = "${list}">
								<tr>
									<th scope="row">${u.maChuyen }</th>
									<td>${u.ngKH}</td>
									<td>${u.tgKh}</td>
									<td>${u.xekhach.bienXe}</td>
									<td>
										<c:choose>
											<c:when test="false"><span class="badge rounded-pill bg-success v-bg-tt">Không hoạt động</span></c:when>
											<c:when test="true"><span class="badge rounded-pill bg-success v-bg-tt">Hoạt động</span></c:when>
										</c:choose>
									</td>
									<td><span><a href = "/CNPM/QL_ChuyenXe/info.html"> <i
											class="bi bi-info-circle-fill v-icon-modal"
											data-bs-toggle="modal" data-bs-target="#ProfileViewModal"></i></a>
											<a href = "/CNPM/QL_ChuyenXe/update.html"><i class="bi bi-pencil-square v-icon-modal"
											data-bs-toggle="modal" data-bs-target="#ProfileEditModal"></i></a>
									</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- End Table with stripped rows -->
				</div>
			</div>
		</div>
	</section>
</main>
<!-- End #main -->
<!-- ProfileViewModal -->
<div class="modal fade" id="ProfileViewModal" idModal = "${idModal } tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content border-0" style="width: 660px;">
			<div class="modal-header v-modal-header">
				<h5 class="modal-title v-modal-title">Thông tin</h5>
				<button type="button" class="btn shadow-none"
					data-bs-dismiss="modal" aria-label="Close"
					style="font-weight: 700;">
					<i class="bi bi-x v-icon-close"></i>
				</button>
			</div>
			<div class="modal-body">
				<!-- profile -->
				<div id="modal-main" class="main">
					<section class="section profile">
						<div class="row">
							<div class="col-xl-12">
								<div class="card v-modal-de">
									<div class="card-body pt-3">
										<!-- Bordered Tabs -->
										<div class="tab-content pt-2">
											<div class="tab-pane fade show active profile-overview"
												id="profile-overview">
												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Mã
														chuyến</div>
													<div class="col-lg-8 col-md-5" name = ""></div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Tuyến</div>
													<div class="col-lg-8 col-md-5">Lueilwitz, Wisoky and
														Leuschke</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Nhân
														viên</div>
													<div class="col-lg-8 col-md-5">Web Designer</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Thời
														gian</div>

													<div class="col-lg-4 col-md-5">22/02/2022</div>

													<div class="col-lg-4 col-md-5">18:00</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Giá</div>
													<div class="col-lg-8 col-md-5">180.000</div>
												</div>

												<div class="row">
													<div class="col-lg-3 col-md-4 label v-label">Xe khách</div>
													<div class="col-lg-8 col-md-5">k.ande</div>
												</div>
											</div>
										</div>
										<!-- End Bordered Tabs -->
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<!-- end profile -->
			</div>
		</div>
	</div>
</div>

<!-- End ProfileViewModal-->
<!-- ProfileEditModal -->
<div class="modal fade" id="ProfileEditModal" idModal = "${idModal } tabindex="-1">
	<div class="modal-dialog modal-dialog-centered v-modal-add">
		<div class="modal-content border-0">
			<div class="modal-header v-modal-header">
				<h5 class="modal-title v-modal-title">Chỉnh sửa</h5>
				<button type="button" class="btn shadow-none"
					data-bs-dismiss="modal" aria-label="Close"
					style="font-weight: 700;">
					<i class="bi bi-x v-icon-close"></i>
				</button>
			</div>
			<div class="modal-body modal-add">
				<!-- Profile Edit Form -->
				<form>
					<div class="row mb-3">
						<label for="machuyen"
							class="col-md-4 col-lg-3 col-form-label v-label">Mã
							chuyến</label>
						<div class="col-md-8 col-lg-9">
							<input name="fullName" type="text"
								class="form-control v-form-control" id="machuyen"
								value="Kevin Anderson" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Tuyến</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Nhân
							viên</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="row mb-3">
						<label for="inputDate" class="col-md-3 col-form-label v-label">Ngày
							khởi hành</label>
						<div class="col-md-3">
							<input type="date" class="form-control v-form-control" />
						</div>
						<label for="inputTime" class="col-md-3 col-form-label v-label">Thời
							gian đi</label>
						<div class="col-md-3">
							<input type="time" class="form-control v-form-control" />
						</div>
					</div>

					<div class="row mb-3">
						<label for="Country"
							class="col-md-4 col-lg-3 col-form-label v-label">Giá</label>
						<div class="col-md-8 col-lg-9">
							<input name="country" type="text"
								class="form-control v-form-control" id="Country" value="USA" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Xe
							khách</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="text-center">
						<button type="submit"
							class="btn btn-primary btn-main-color border-0">Save
							Changes</button>
					</div>
				</form>
				<!-- End Profile Edit Form -->
			</div>
		</div>
	</div>
</div>
<!-- add model -->
<div class="modal fade" id="verticalycentered" idModal = "${idModal } tabindex="-1">
	<div class="modal-dialog modal-dialog-centered v-modal-add">
		<div class="modal-content border-0">
			<div class="modal-header v-modal-header">
				<h5 class="modal-title v-modal-title">Thêm</h5>
				<button type="button" class="btn shadow-none"
					data-bs-dismiss="modal" aria-label="Close"
					style="font-weight: 700;">
					<i class="bi bi-x v-icon-close"></i>
				</button>
			</div>
			<div class="modal-body modal-add">
				<!-- Profile Edit Form -->
				<form>
					<div class="row mb-3">
						<label for="machuyen"
							class="col-md-4 col-lg-3 col-form-label v-label">Mã
							chuyến</label>
						<div class="col-md-8 col-lg-9">
							<input name="fullName" type="text"
								class="form-control v-form-control" id="machuyen"
								value="Kevin Anderson" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Tuyến</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Nhân
							viên</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="row mb-3">
						<label for="inputDate" class="col-md-3 col-form-label v-label">Ngày
							khởi hành</label>
						<div class="col-md-3">
							<input type="date" class="form-control v-form-control" />
						</div>
						<label for="inputTime" class="col-md-3 col-form-label v-label">Thời
							gian đi</label>
						<div class="col-md-3">
							<input type="time" class="form-control v-form-control" />
						</div>
					</div>

					<div class="row mb-3">
						<label for="Country"
							class="col-md-4 col-lg-3 col-form-label v-label">Giá</label>
						<div class="col-md-8 col-lg-9">
							<input name="country" type="text"
								class="form-control v-form-control" id="Country" value="USA" />
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-md-4 col-lg-3 col-form-label v-label">Xe
							khách</label>
						<div class="col-md-8 col-lg-9">
							<select class="form-select v-form-control"
								aria-label=" select example">
								<option selected value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
					</div>

					<div class="text-center">
						<button type="submit"
							class="btn btn-primary btn-main-color border-0">Save
							Changes</button>
					</div>
				</form>
				<!-- End Profile Edit Form -->
			</div>
		</div>
	</div>
</div>
<!-- End Vertically centered Modal-->
<!-- Vendor JS Files -->
<script src="<c:url value='/resources/assets/vendor/apexcharts/apexcharts.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/chart.js/chart.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/echarts/echarts.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/quill/quill.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/simple-datatables/simple-datatables.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/tinymce/tinymce.min.js'/>"></script>
<script src="<c:url value='/resources/assets/vendor/php-email-form/validate.js'/>"></script>
<script>
	if($(".modal_flag").attr("idModal") === "modalCreate"){
		$("#verticalycentered").model("show");
	}else if($(".modal fade").attr("idModal") === "modalShow"){
		$("#ProfileViewModal").model("show");
	}else if($(".modal_flag").attr("idModal") === "modalUpdate"){
		$("#ProfileEditModal").model("show");
	}
</script>
<!-- Template Main JS File -->
<script src="<c:url value='/resources/assets/js/main.js'/>"></script>
</body>
</html>