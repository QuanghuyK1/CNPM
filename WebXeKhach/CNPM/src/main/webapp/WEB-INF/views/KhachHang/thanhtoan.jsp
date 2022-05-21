<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="head.jsp" %>
    <body class="">
        <!-- MAIN -->
        <div class="load-wrap">
            <div class="wheel-load">
                <img src="images/loader.gif" alt="" class="image">
            </div>
        </div>
        <%@include file="navbar.jsp" %>
        <!-- ////////////////////////////////////////////////////////////// -->
        
        <!-- //////////////////////////////// -->
        <div class="wheel-start3">
            <img src="images/bg7.jpg" alt="" class="wheel-img">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 padd-lr0">
                        <div class="wheel-start3-body clearfix marg-lg-t255 marg-lg-b75 marg-sm-t190 marg-xs-b30">
                            <h3>Đặt vé</h3>
                            <ol class="breadcrumb">
                                <li><a href="index.html">Trang chủ</a></li>
                                <li class="active">Đặt vé</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /////////////////////////////////// -->
        <div class="step-wrap">
            <!-- ////////////////////////////////////////// -->
            <div class="container padd-lr0">
                <div class="row">
                    <div class="col-xs-12 padd-lr0">
                        <ul class="steps">
                            <li class="title-wrap ">
                                <div class="title">
                                    <span>1.</span>Chọn tuyến
                                </div>
                            </li>
                            <li class="title-wrap  ">
                                <div class="title">
                                    <span>2.</span>Xác nhận lộ trình
                                </div>
                            </li>
                            <li class="title-wrap ">
                                <div class="title">
                                    <span>3.</span>Thông tin khách hàng
                                </div>
                            </li>
                            <li class="title-wrap active ">
                                <div class="title">
                                    <span>4.</span>Thanh toán
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- ////////////////////////////////////////// -->
        </div>
        <!-- /////////////////////////////// -->
        <div class="reservation">
            <div class="container">
                <div class="py-5 text-center ">
                    <h2>Vui lòng chọn hình thức thanh toán</h2>
                </div>
        
                <div class="row">
                    <div class="col-md-4 order-md-2 mb-4 marg-lg-t140 marg-lg-b50 marg-sm-t100">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span class="text-muted">Thông tin chuyến xe</span>
                        </h4>
                        <ul class="list-group mb-3 marg-lg-t20">
                            <li class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h5 class="my-0">Tuyến xe: ${chuyenxe.getTuyen().getDiemDi().getDiaDiem()}  - ${chuyenxe.getTuyen().getDiemDen().getDiaDiem() } </h5>
                                    <h5 class="my-0">Thời gian: ${chuyenxe.getNgKH()} ${chuyenxe.getTgKh()}</h5>
                                    <h5>ghế:</h5>
                                    <c:forEach var="ve" items="${dsve}">
                                    <h5 class="my-0">  ${ve.getId().getSoGhe() }</h5>
                                    </c:forEach>
                                    
                                </div>
                            </li>
                            <li class="list-group-item d-flex justify-content-between">
                                <span>Tổng thành tiền</span>
                                <strong>143520000</strong>
                            </li>
                        </ul>
        
                    </div>
                    <div class="col-md-8 order-md-1 marg-lg-t140 marg-lg-b50 marg-sm-t100">
                        <h4 class="mb-3">Thông tin khách hàng</h4>
        
                            <div class="col-md-12">
                                <h4>Điện thoại:</h4>
                                <p> ${PhieuDat.getSdt() }</p>
                               
                            </div>
                            <div class="col-md-12">
                                <h4>Email</h4>
                                  <p> ${PhieuDat.getEmail() }</p>
                            </div>
                            
                        </div>
        
                        <h4 class="mb-3 marg-lg-t50 marg-lg-b20 ">Hình thức thanh toán</h4>
        
                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="httt-1" name="pttt" type="radio" class="custom-control-input" required=""
                                    value="0">
                                <label class="custom-control-label" for="httt-1">Tiền mặt</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="httt-2" name="pttt" type="radio" class="custom-control-input" required=""
                                    value="1">
                                <label class="custom-control-label" for="httt-2">Chuyển khoản</label>
                            </div>
                          
                        </div>
                        <hr class="mb-4">
                        <form action="trangchu.html" method="post">
                         <label for="input-val27" class="promo promo2">
                            <button name="btnDatVe" class="wheel-btn" id='input-val27'>Đặt vé</button>
                        </label>
                        </form>
                       
                    </div>
                </div>
            </div>
        </div>
        <!-- /////////////////////////////// -->
        <div class="wheel-subscribe wheel-bg2">
            <div class="container ">
                <div class="row">
                    <div class="col-md-6 padd-lr0">
                        <div class="wheel-header">
                            <h5>Đăng kí để nhận tin</h5>
                            <h3>Đăng kí ngay và bạn sẽ được nhận mã giảm giá<span> 20% </span></h3>
                        </div>
                    </div>
                    <div class="col-md-6 padd-lr0">
                        <form action="#">
                            <input type="text" placeholder="Địa chỉ gmail của bạn ">
                            <a href="register.html" class="wheel-cheader-but" target="_blank">Đăng kí ngay</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- FOOTER -->
        <!-- ///////////////// -->
        <footer class="wheel-footer">
            <img src="images/bg4.jpg" alt="" class="wheel-img">
            <div class="container">
                <div class="row">
                    <div class="col-md-3  col-sm-6  padd-lr0">
                        <div class="wheel-address">
                            <div class="wheel-footer-logo"><a href="#"><img src="images/logo.png" alt=""></a></div>
                            <ul>
                                <li><span><i class="fa fa-map-marker"></i>97 Man Thiện, Phường Hiệp Phú <br>
                                    TP Thủ Đức, TP Hồ Chí Minh 
                                </li>
                                <li><a href="#"><span><i class="fa fa-phone"></i> 0912345678</span></a></li>
                                <li><a href="#"><span><i class="fa fa-envelope"></i>p.h.n.phuong1812@gmail.com</span></a></li>
                            </ul>
                            <div class="wheel-soc">
                                <a href="#" class="fa fa-twitter"></a>
                                <a href="#" class="fa fa-facebook"></a>
                                <a href="#" class="fa fa-linkedin"></a>
                                <a href="#" class="fa fa-instagram"></a>
                                <a href="#" class="fa fa-share-alt"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6  padd-lr0">
                        <div class="wheel-footer-item">
                            <h3>Whell</h3>
                            <ul>
                                <li><a href="about.html" class="">Về chúng tôi</a></li>
                                <li><a href="news.html" class="">Tin tức</a></li>
                                <li><a href="about.html" class="">Giới thiệu</a></li>
                                <li><a href="contact.html" class="">Liên hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6  padd-lr0">
                        <div class="wheel-footer-item ">
                            <h3><span>Chăm sóc khách hàng</span> 1900 6886 </h3>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <div class="wheel-footer-info wheel-bg6">
            <div class="container">
                <div class="row">
                   <div class="col-lg-8 col-sm-6  padd-lr0"><span>&#169; WHEEL 2021</span></div>
                    <div class="col-lg-4 col-sm-6 padd-lr0">
                        <ul>
                            <li><a href="index.html">Trang chủ</a></li>
                            <li><a href="reservation.html"> Đặt vé</a></li>
                            <li><a href="contact.html"> Liên hệ</a></li>
                            <li><a href="about.html"> Giới thiệu</a></li>
                            <li><a href="news.html">Tin tức</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
     <%@include file="script.jsp" %>
      
    </body>

</html>