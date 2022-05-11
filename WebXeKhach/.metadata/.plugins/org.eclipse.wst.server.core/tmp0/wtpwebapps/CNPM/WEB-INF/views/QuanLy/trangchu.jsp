<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="../assets/img/logo.png" alt="" />
        <span class="d-none d-lg-block">VHP</span>
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

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
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
      <h1>Trang Chủ</h1>
    </div>
    <!-- End Page Title -->

    <section class="section">
      <!-- Left side columns -->
      <div class="col-lg-12">
        <div class="row">
          <!-- Sales Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
              <div class="card-body">
                <h5 class="card-title">Chuyến Xe</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="ri-bus-line"></i>
                  </div>
                  <div class="ps-3">
                    <h6>145</h6>
                    <span class="text-success small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">increase</span>
                  </div>
                </div>
              </div>
              <a href="QL_ChuyenXe.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title">Tuyến Xe</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="ri-arrow-left-right-line"></i>
                  </div>
                  <div class="ps-3">
                    <h6>$3,264</h6>
                    <span class="text-success small pt-1 fw-bold">8%</span> <span
                      class="text-muted small pt-2 ps-1">increase</span>
                  </div>
                </div>
              </div>
              <a href="QL_TuyenXe.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Revenue Card -->

          <!-- Customers Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">Nhân Viên</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="ri-contacts-line"></i>
                  </div>
                  <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">decrease</span>
                  </div>
                </div>
              </div>
              <a href="QL_NhanVien.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Customers Card -->

          <!-- Recent Sales -->
        </div>
        <div class="row">
          <!-- Customers Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">Khách Hàng</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-people"></i>
                  </div>
                  <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">decrease</span>
                  </div>
                </div>
              </div>
              <a href="QL_KhachHang.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Customers Card -->
          <!-- Sales Card -->

          <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card">
              <div class="card-body">
                <h5 class="card-title">Địa Điểm</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-pin-map-fill"></i>
                  </div>
                  <div class="ps-3">
                    <h6>145</h6>
                    <span class="text-success small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">increase</span>
                  </div>
                </div>
              </div>
              <a href="QL_DiaDiem.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Sales Card -->

          <!-- Revenue Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card">
              <div class="card-body">
                <h5 class="card-title">Loại Xe</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="ri-align-justify"></i>
                  </div>
                  <div class="ps-3">
                    <h6>$3,264</h6>
                    <span class="text-success small pt-1 fw-bold">8%</span> <span
                      class="text-muted small pt-2 ps-1">increase</span>
                  </div>
                </div>
              </div>
              <a href="QL_LoaiXe.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Revenue Card -->

          <!-- Recent Sales -->
        </div>
        <div class="row">
          <!-- Customers Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">Bảng Giá</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-currency-dollar"></i>
                  </div>
                  <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">decrease</span>
                  </div>
                </div>
              </div>
              <a href="QL_BangGia.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
          <!-- End Customers Card -->
          <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card">
              <div class="card-body">
                <h5 class="card-title">Phiếu Đặt</h5>

                <div class="d-flex align-items-center">
                  <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <i class="bi bi-clipboard"></i>
                  </div>
                  <div class="ps-3">
                    <h6>1244</h6>
                    <span class="text-danger small pt-1 fw-bold">12%</span> <span
                      class="text-muted small pt-2 ps-1">decrease</span>
                  </div>
                </div>
              </div>
              <a href="QL_PhieuDat.html">
                <div class="trangchu-link rounded-bottom shadow-sm">
                  Chi tiết
                  <i class="bi bi-arrow-right-circle-fill"> </i>
                </div>
              </a>
            </div>
          </div>
        </div>


      </div>
      <!-- End Left side columns -->
    </section>
  </main>
  <!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

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
  <script src="../../assets/js/main.js"></script>