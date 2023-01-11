<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
<%@include file="/static/css/login.css"%>
html {
  font-family: sans-serif;
  line-height: 1.15;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -ms-overflow-style: scrollbar;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0)
}
.selected{
  color: white;
  background: #f16464;
  border-radius: 5px;
  transform: translateX(20px);
}
header{
background-color: red
}
.selected:hover{
  color: white;
}
nav a {
  display: inline-block;
  width: 100%;
}

.nav-item-hover:hover{
  color: white;
  background: #f16464;
  border-radius: 5px;
  transform: translateX(20px);
}


</style>
<header class="main-header">

  <div class="container-header">
    <div class="container">
      <div class="header-content navbar row  justify-content-between align-items-center">
        <div class="logo-now col-auto"><span><a href="index.html"><img
          src="<c:url value = "/static/img/shopeefoodvn.png"/>"
          alt="ShopeeFood"></a></span></div>

        <div class="main-nav col"><span>Kênh người bán</span></div>
        <div class="user-acc col-auto user-acc-wr">
          <div class="user-acc-contain">
            <img class="user-acc-img" src="" alt="">
            <span></span>
            <div class="user-acc-dropdown">
              <span ><i class="fa-solid fa-right-to-bracket"></i> Đăng xuất</span>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
  <div class="modal fade modal-search" id="modal-search" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content"><span class="close" data-dismiss="modal">x</span>
        <div class="modal-search-form"><span class="sub-title">Đặt Đồ ăn, giao hàng từ 20'... có
                                    37422 địa điểm ở Hà Nội từ 00:00 - 23:59</span>
          <form><input class="search-input" name="search-input" type="text" autocomplete="off"
                       value=""></form>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade modal-new-app" id="modal-new-app" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content"><span class="close" data-dismiss="modal">x</span>
        <div class="img-now"><img
          src="#"
          alt="App now"></div>
        <div class="info-now"><span>
                                    <h3 style="font-size: 36px;font-weight: lighter;margin-bottom: 0;">Hello you!</h3>
                                    <p style="font-size: 15px;margin-top: 9px;margin-bottom: 9px;">We are pleased to
                                        inform you that our application<span class="bold"> ShopeeFood</span> is changed
                                        its name to</p><span class="btn btn-red font18" title="ShopeeFood"
                                                             style="cursor: pointer;font-size: 18px !important;background-color: #cf2127;color: #fff;border-color: #cf2127;"><span
          class="txt-bold"
          style="font-weight: 700 !important;">ShopBeaFood</span></span>
                                </span>
          <p class="update-version">Cập nhật phiên bản mới</p>
          <div class="down-apps"><a target="_blank" rel="noopener noreferrer"
                                    href="https://itunes.apple.com/us/app/deliverynow/id1137866760" class="down-app"
                                    title="App Store"><span class="icon icon-app-store-sm"></span></a><a
            target="_blank" rel="noopener noreferrer"
            href="https://play.google.com/store/apps/details?id=com.deliverynow"
            class="down-app" title="Google play"><span
            class="icon icon-gg-play-sm"></span></a></div>
        </div>
        <div class="box-now-merchant clearfix">
          <div class="img-merchant">
            <div class="float-left mar-right10"><span class="icon icon-merchant-lg"></span>
            </div>
            <div class="float-left"><a target="_blank" rel="noopener noreferrer"
                                       href="https://itunes.apple.com/US/app/id1296706589?mt=8" class="down-apps"
                                       title="App Store"><span class="icon icon-app-store-sm"></span></a><a
              target="_blank" rel="noopener noreferrer"
              href="https://play.google.com/store/apps/details?id=com.sea.foody.nowmerchant&amp;amp;hl=vi"
              class="down-apps" title="Google play"><span
              class="icon icon-gg-play-sm"></span></a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade modal-get-local" id="userLocationId" tabindex="-1" role="dialog"
       data-backdrop="static" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content"><span class="close" data-dismiss="modal">x</span>
        <div class="modal-header">Bạn muốn giao đến đâu?</div>
        <div class="modal-body">
          <div class="search-local">
            <div class="primary-local">
              <div class="row align-items-center no-gutters">
                <div class="col-auto"><i class="icon icon-search-gray"></i></div>
                <div class="col"><input type="text" id="address" name="address"
                                        placeholder="Nhập địa chỉ giao hàng" value=""></div>
                <div class="col-auto"><i class="icon icon-location"></i></div>
              </div>
            </div>
          </div>
          <div class="list-local">
            <div class="suggest-local">
              <div class="location-items"></div>
              <div class="find-map">
                <div class="row align-items-center no-gutters">
                  <div class="col-auto"><i class="icon icon-thumbtack"></i></div>
                  <div class="col pl-3"><span class="txt-blue link">Tìm trên bản đồ</span>
                  </div>
                  <div class="col-auto mr-3"><i class="icon-arrow-thin right"></i></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>




<div class="now-container-coporation now-container-content">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item" >
            <a class="nav-link active" aria-current="page" routerLink="merchant-dashboard" routerLinkActive="selected" [routerLinkActiveOptions]="{exact: true}">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
                <path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5Z"/>
              </svg><span data-feather="home" class="align-text-bottom"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item " >
            <a class="nav-link nav-item-hover" routerLink="merchant-order" routerLinkActive="selected">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-journal-text" viewBox="0 0 16 16">
                <path d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
                <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
                <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
              </svg><span data-feather="file" class="align-text-bottom"></span>
              Quản lý đơn hàng
            </a>
          </li>
          <li class="nav-item " >
            <a class="nav-link nav-item-hover" routerLink="product-list" routerLinkActive="selected">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
              </svg><span data-feather="shopping-cart" class="align-text-bottom"></span>
              Quản lý sản phẩm
            </a>
          </li>
          <li class="nav-item " >
            <a class="nav-link nav-item-hover" routerLink="merchant-transport" routerLinkActive="selected">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-rocket-takeoff-fill" viewBox="0 0 16 16">
                <path d="M12.17 9.53c2.307-2.592 3.278-4.684 3.641-6.218.21-.887.214-1.58.16-2.065a3.578 3.578 0 0 0-.108-.563 2.22 2.22 0 0 0-.078-.23V.453c-.073-.164-.168-.234-.352-.295a2.35 2.35 0 0 0-.16-.045 3.797 3.797 0 0 0-.57-.093c-.49-.044-1.19-.03-2.08.188-1.536.374-3.618 1.343-6.161 3.604l-2.4.238h-.006a2.552 2.552 0 0 0-1.524.734L.15 7.17a.512.512 0 0 0 .433.868l1.896-.271c.28-.04.592.013.955.132.232.076.437.16.655.248l.203.083c.196.816.66 1.58 1.275 2.195.613.614 1.376 1.08 2.191 1.277l.082.202c.089.218.173.424.249.657.118.363.172.676.132.956l-.271 1.9a.512.512 0 0 0 .867.433l2.382-2.386c.41-.41.668-.949.732-1.526l.24-2.408Zm.11-3.699c-.797.8-1.93.961-2.528.362-.598-.6-.436-1.733.361-2.532.798-.799 1.93-.96 2.528-.361.599.599.437 1.732-.36 2.531Z"/>
                <path d="M5.205 10.787a7.632 7.632 0 0 0 1.804 1.352c-1.118 1.007-4.929 2.028-5.054 1.903-.126-.127.737-4.189 1.839-5.18.346.69.837 1.35 1.411 1.925Z"/>
              </svg><span data-feather="users" class="align-text-bottom"></span>
              Quản lý đơn vị vận chuyển
            </a>
          </li>
          <li class="nav-item " >
            <a class="nav-link nav-item-hover" routerLink="merchant-info" routerLinkActive="selected">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-postage" viewBox="0 0 16 16">
                <path d="M4.75 3a.75.75 0 0 0-.75.75v8.5c0 .414.336.75.75.75h6.5a.75.75 0 0 0 .75-.75v-8.5a.75.75 0 0 0-.75-.75h-6.5ZM11 12H5V4h6v8Z"/>
                <path d="M3.5 1a1 1 0 0 0 1-1h1a1 1 0 0 0 2 0h1a1 1 0 0 0 2 0h1a1 1 0 1 0 2 0H15v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1a1 1 0 1 0 0 2v1h-1.5a1 1 0 1 0-2 0h-1a1 1 0 1 0-2 0h-1a1 1 0 1 0-2 0h-1a1 1 0 1 0-2 0H1v-1a1 1 0 1 0 0-2v-1a1 1 0 1 0 0-2V9a1 1 0 1 0 0-2V6a1 1 0 0 0 0-2V3a1 1 0 0 0 0-2V0h1.5a1 1 0 0 0 1 1ZM3 3v10a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1Z"/>
              </svg><span data-feather="users" class="align-text-bottom"></span>
              Thiết lập Shop
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <!--    <app-merchant-list class="col-md-9 ms-sm-auto col-lg-10 px-md-4"></app-merchant-list>-->
    <div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

<!--      <ng-template [ngIf] = "url == '/merchant/merchant-dashboard'">-->
<!--        <app-dashboard></app-dashboard>-->
<!--      </ng-template>-->

<!--      <ng-template [ngIf] = "url == '/merchant/merchant-order'">-->
<!--        <app-merchant-order-list></app-merchant-order-list>-->
<!--      </ng-template>-->

<!--      <ng-template [ngIf] = "url == '/merchant/product-list'">-->
<!--        <app-product-list></app-product-list>-->
<!--      </ng-template>-->

<!--      <ng-template [ngIf] = "url == url">-->
<!--        <app-product-edit></app-product-edit>-->
<!--      </ng-template>-->

<!--      <ng-template [ngIf] = "url == '/merchant/product-create'">-->
<!--        <app-product-create></app-product-create>-->
<!--      </ng-template>-->

      <!-- <div *ngIf="url == '/merchant/merchant-info'; then thenBlockInfo else elseBlockInfo"></div>
      <ng-template #thenBlockInfo>
        <app-merchant-info (newAccountEvent)="addNewAccount($event)"></app-merchant-info>
      </ng-template>

      <ng-template #elseBlockInfo>
        <router-outlet></router-outlet>
      </ng-template> -->
<jsp:include page="/WEB-INF/views/merchant/product-list.jsp"></jsp:include>
    </div>
  </div>
</div>



<div class="now-container-coporation" >
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

