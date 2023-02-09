<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
<link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/static/img/favicon.png">

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<style>
<%@include file="/static/css/login.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css"
      integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

</head>
<style>

  .font15 {
    font-size: 15px;
  }

  .font14 {
    font-size: 14px;
  }
</style>

<body class="portal" style="font-size:calc(8px + 0.5vw);">

<div id="app">
  <div class="wrapper">
    <header class="main-header">

      <div class="container-header">
        <div class="container">
          <div class="header-content navbar row  justify-content-between align-items-center">
            <div class="logo-now col-auto"><span><a href="${ pageContext.request.contextPath }/home"><img
         src="<c:url value = "/static/img/shopeefoodvn.png"/>"
              alt="ShopBaeFood"></a></span></div>
               <div class="user-acc col-auto">
               
               <c:if test="${page == 'forgotpass.jsp'|| page =='confirm-otp.jsp' }">
              <a href="${ pageContext.request.contextPath }login"><button type="button" class="btn btn-none-bg btn-login">
                <span class="font14">Đăng nhập</span>
              </button></a></c:if>
            </div>
          </div>
          
          
        </div>
      </div>
     
  
    </header>
   
<jsp:include page="/WEB-INF/views/account/${page}"></jsp:include>

    <div class="now-container-coporation">
      <p class="seo-footer-link__head">Danh mục</p>
      <div class="seo-footer-link__body">
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Thuốc</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-hoa-my-pham-giao-tan-noi"
            class="seo-footer-link__sub-item">Hoá mỹ phẩm</a><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-bcs-giao-tan-noi"
            class="seo-footer-link__sub-item">BCS</a><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-thiet-bi-giao-tan-noi"
            class="seo-footer-link__sub-item">Thiết bị</a><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-thuoc-tay-giao-tan-noi"
            class="seo-footer-link__sub-item">Thuốc tây</a><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-khau-trang-giao-tan-noi"
            class="seo-footer-link__sub-item">Khẩu trang</a><a
            href="https://shopeefood.vn/ha-noi/medicine/danh-sach-dia-diem-phuc-vu-khan-cap-giao-tan-noi"
            class="seo-footer-link__sub-item">Khẩn cấp</a></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Thú cưng</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"><a
            href="#"
            class="seo-footer-link__sub-item">Thú cưng</a></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Đồ ăn HN</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"><a
            href="#"
            class="seo-footer-link__sub-item">Đồ ăn HN</a></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Đặt bàn HN</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Thực phẩm HN</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Sản phẩm HN</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"></ul>
        </div>
        <div class="seo-footer-link__item"><a href="#">
          <p class="seo-footer-link__title">Sản phẩm</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"><a
            href="#"
            class="seo-footer-link__sub-item">Mỹ phẩm</a><a
            href="#"
            class="seo-footer-link__sub-item">Đồ chơi</a><a
            href="#"
            class="seo-footer-link__sub-item">Sữa</a><a
            href="#"
            class="seo-footer-link__sub-item">Tã bỉm</a><a
            href="#"
            class="seo-footer-link__sub-item">Dụng cụ</a><a
            href="#"
            class="seo-footer-link__sub-item">Quần áo</a><a
            href="https://shopeefood.vn/ha-noi/fmcg/danh-sach-dia-diem-phuc-vu-giay-dep-giao-tan-noi"
            class="seo-footer-link__sub-item">Giày dép</a><a
            href="https://shopeefood.vn/ha-noi/fmcg/danh-sach-dia-diem-phuc-vu-dien-tu-giao-tan-noi"
            class="seo-footer-link__sub-item">Điện tử</a><a
            href="https://shopeefood.vn/ha-noi/fmcg/danh-sach-dia-diem-phuc-vu-trang-suc-giao-tan-noi"
            class="seo-footer-link__sub-item">Trang sức</a></ul>
        </div>
        <div class="seo-footer-link__item"><a href="https://shopeefood.vn/ha-noi/flowers">
          <p class="seo-footer-link__title">Hoa</p>
        </a>
          <ul class="seo-footer-link__sub-item-wrapper"><a
            href="https://shopeefood.vn/ha-noi/flowers/danh-sach-dia-diem-phuc-vu-chia-buon-giao-tan-noi"
            class="seo-footer-link__sub-item">Chia buồn</a><a
            href="https://shopeefood.vn/ha-noi/flowers/danh-sach-dia-diem-phuc-vu-cay-canh-giao-tan-noi"
            class="seo-footer-link__sub-item">Cây cảnh</a><a
            href="https://shopeefood.vn/ha-noi/flowers/danh-sach-dia-diem-phuc-vu-chuc-mung-giao-tan-noi"
            class="seo-footer-link__sub-item">Chúc mừng</a><a
            href="https://shopeefood.vn/ha-noi/flowers/danh-sach-dia-diem-phuc-vu-sinh-nhat-giao-tan-noi"
            class="seo-footer-link__sub-item">Sinh nhật</a><a
            href="https://shopeefood.vn/ha-noi/flowers/danh-sach-dia-diem-phuc-vu-tinh-yeu-giao-tan-noi"
            class="seo-footer-link__sub-item">Tình yêu</a></ul>
        </div>
      </div>
    </div>
    <div class="now-container-coporation" style="margin-top: 0px;">
      <div class="container-inner">

        <div class="block-last">
          <p class="title-block">Địa chỉ công ty</p>
          <span>
                                <p>Công Ty Cổ Phần Foody</p>
                                <p>Lầu G, Tòa nhà Jabes 1,</p>
                                <p>số 244 đường Cống Quỳnh, phường Phạm Ngũ Lão, Quận 1, TPHCM</p>
                                <p>Giấy CN ĐKDN số: 0311828036</p>
                                <p>do Sở Kế hoạch và Đầu tư TP.HCM cấp ngày 11/6/2012,</p>
                                <p>sửa đổi lần thứ 23, ngày 10/12/2020</p>
                                <p>Số điện thoại: 1900 2042</p>
                                <p>Email: <a href="mailto:support@shopeefood.vn"> support@shopeefood.vn</a></p>
                            </span>
        </div>
      </div>
    </div>
    <hr>
  </div>


</div>

</body>
</html>