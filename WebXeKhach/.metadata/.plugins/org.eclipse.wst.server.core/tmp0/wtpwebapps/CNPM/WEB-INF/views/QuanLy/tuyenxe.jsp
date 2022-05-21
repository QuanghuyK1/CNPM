<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="head.jsp" %>
<!-- ======= Header ======= -->
    <header id="header" class="header fixed-top d-flex align-items-center">
        <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <img src="../assets/img/logo.png" alt="" />
                <span class="d-none d-lg-block">NiceAdmin</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
        </div>
        <!-- End Logo -->

        <nav class="header-nav ms-auto">
            <ul class="d-flex align-items-center">
                <li class="nav-item d-block d-lg-none">
                    <a class="nav-link nav-icon search-bar-toggle" href="#">
                        <i class="bi bi-search"></i>
                    </a>
                </li>
                <!-- End Search Icon-->

                <li class="nav-item dropdown pe-3 me-2">
                    <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                        <img src="../assets/img/profile-img.jpg" alt="Profile" class="rounded-circle" />
                        <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                    </a>
                    <!-- End Profile Iamge Icon -->

                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile v-drop-profile">
                        <li class="dropdown-header">
                            <h6>Kevin Anderson</h6>
                            <span>Web Designer</span>
                        </li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="QL_TrangCaNhan.html">
                                <i class="bi bi-person"></i>
                                <span>Tài khoản của tôi</span>
                            </a>
                        </li>

                        <li>
                            <hr class="dropdown-divider" />
                        </li>

                        <li>
                            <a class="dropdown-item d-flex align-items-center" href="QL_DangNhap.html">
                                <i class="bi bi-box-arrow-right"></i>
                                <span>Đăng xuất</span>
                            </a>
                        </li>
                    </ul>
                    <!-- End Profile Dropdown Items -->
                </li>
                <!-- End Profile Nav -->
            </ul>
        </nav>
        <!-- End Icons Navigation -->
    </header>
    <!-- End Header -->
    <%@ include file="slidebar.jsp" %>
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Tuyến Xe</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Pages</li>
                    <li class="breadcrumb-item active">Blank</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->
        <button type="button" class="btn add-new btn-outline-danger shadow-none" data-bs-toggle="modal"
            data-bs-target="#verticalycentered">Thêm mới <i class="bi bi-plus-circle"></i></button>
        <section class="section">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card-body">
                        <!-- Table with stripped rows -->
                        <table class="table datatable table-striped table-bordered">
                            <thead>
                                <tr class="v-table-tr-color">
                                    <th scope="col">Mã Tuyến</th>
                                    <th scope="col">Điểm đi</th>
                                    <th scope="col">Điểm đến</th>
                                    <th scope="col">Trạng Thái</th>
                                    <th scope="col" class="text-center">Option</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">SG-DL</th>
                                    <td>Hồ Chí Minh</td>
                                    <td>Đà Lạt</td>
                                    <td>
                                        <span class="badge rounded-pill bg-success v-bg-tt">Hoạt động</span>
                                    </td>
                                    <td class="text-center">
                                        <span>
                                            <i class="bi bi-pencil-square v-icon-modal" data-bs-toggle="modal"
                                                data-bs-target="#ProfileEditModal"></i>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">SG-DL</th>
                                    <td>Developer</td>
                                    <td>35</td>
                                    <td>
                                        <span class="badge rounded-pill bg-success v-bg-tt">Hoạt động</span>
                                    </td>
                                    <td class="text-center">
                                        <span>
                                            <i class="bi bi-pencil-square v-icon-modal" data-bs-toggle="modal"
                                                data-bs-target="#ProfileEditModal"></i>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">SG-DL</th>
                                    <td>Finance</td>
                                    <td>45</td>
                                    <td>
                                        <span class="badge rounded-pill bg-success v-bg-tt">Hoạt động</span>
                                    </td>

                                    <td class="text-center">
                                        <span>
                                            <i class="bi bi-pencil-square v-icon-modal" data-bs-toggle="modal"
                                                data-bs-target="#ProfileEditModal"></i>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">SG-DL</th>
                                    <td>HR</td>
                                    <td>34</td>
                                    <td>
                                        <span type="button" class="badge rounded-pill bg-danger v-bg-tt">Khóa</span>
                                    </td>
                                    <td class="text-center">
                                        <span>
                                            <i class="bi bi-pencil-square v-icon-modal" data-bs-toggle="modal"
                                                data-bs-target="#ProfileEditModal"></i>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">SG-DL</th>
                                    <td>Dynamic Division Officer</td>
                                    <td>47</td>
                                    <td>
                                        <span type="button" class="badge rounded-pill bg-danger v-bg-tt">Khóa</span>
                                    </td>
                                    <td class="text-center">
                                        <span>
                                            <i class="bi bi-pencil-square v-icon-modal" data-bs-toggle="modal"
                                                data-bs-target="#ProfileEditModal"></i>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- End #main -->

    <!-- ProfileEditModal -->
    <div class="modal fade" id="ProfileEditModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered v-modal-add">
            <div class="modal-content border-0">
                <div class="modal-header v-modal-header">
                    <h5 class="modal-title v-modal-title">Chỉnh sửa</h5>
                    <button type="button" class="btn shadow-none" data-bs-dismiss="modal" aria-label="Close"
                        style="font-weight: 700;"><i class="bi bi-x v-icon-close"></i></button>
                </div>
                <div class="modal-body modal-add">
                    <!-- Profile Edit Form -->
                    <form>
                        <div class="row mb-3">
                            <label for="machuyen" class="col-md-4 col-lg-3 col-form-label v-label">Mã tuyến</label>
                            <div class="col-md-8 col-lg-9">
                                <input name="fullName" type="text" class="form-control v-form-control" id="smatuyen" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputDate" class="col-md-3 col-form-label v-label">Điểm đi </label>
                            <div class="col-md-3">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <label for="inputDate" class="col-md-3 col-lg-3 col-form-label v-label">Điểm đến</label>
                            <div class="col-md-3">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-4 col-lg-3 col-form-label v-label">Trạng thái</label>
                            <div class="col-md-8 col-lg-9">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-main-color border-0 mt-3">Lưu</button>
                        </div>
                    </form>
                    <!-- End Profile Edit Form -->
                    <!-- End Profile Edit Form -->
                </div>
            </div>
        </div>
    </div>
    <!-- modal -->
    <div class="modal fade" id="verticalycentered" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered v-modal-add">
            <div class="modal-content border-0">
                <div class="modal-header v-modal-header">
                    <h5 class="modal-title v-modal-title">Thêm</h5>
                    <button type="button" class="btn shadow-none" data-bs-dismiss="modal" aria-label="Close"
                        style="font-weight: 700;"><i class="bi bi-x v-icon-close"></i></button>
                </div>
                <div class="modal-body modal-add">
                    <!-- Profile Edit Form -->
                    <form>
                        <div class="row mb-3">
                            <label for="machuyen" class="col-md-4 col-lg-3 col-form-label v-label">Mã tuyến</label>
                            <div class="col-md-8 col-lg-9">
                                <input name="fullName" type="text" class="form-control v-form-control" id="matuyen" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="inputDate" class="col-md-3 col-form-label v-label">Điểm đi </label>
                            <div class="col-md-3">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                            <label for="inputDate" class="col-md-3 col-lg-3 col-form-label v-label">Điểm đến</label>
                            <div class="col-md-3">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-md-4 col-lg-3 col-form-label v-label">Trạng thái</label>
                            <div class="col-md-8 col-lg-9">
                                <select class="form-select v-form-control" aria-label=" select example">
                                    <option selected value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-main-color border-0 mt-3">Lưu</button>
                        </div>
                    </form>
                    <!-- End Profile Edit Form -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Vertically centered Modal-->
    <!-- Vendor JS Files -->
    <script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/vendor/chart.js/chart.min.js"></script>
    <script src="../assets/vendor/echarts/echarts.min.js"></script>
    <script src="../assets/vendor/quill/quill.min.js"></script>
    <script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="../assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="../assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="../assets/js/main.js"></script>