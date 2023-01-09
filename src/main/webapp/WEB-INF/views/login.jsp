
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.png">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://s3.prod.now.vn/resources/shopee_font/font.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=vietnamese">
    <link href="./assets/css/main2.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script src="https://apis.google.com/js/platform.js" gapi_processed="true"></script>
    <!-- Google Tag Manager -->
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({ 'gtm.start': new Date().getTime(), event: 'gtm.js' });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-KZSQTX3');
    </script>
    <style>
        .font15
        {
            font-size:15px;
        }
        .font14
        {
            font-size:14px;
        }
        <%@include file="/static/css/login.css"%>
    </style>
</head>

<body class="portal" style="font-size:calc(8px + 0.5vw);">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KZSQTX3" height="0" width="0"
                  style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<div id="app">
    <div class="wrapper">
        <header class="main-header">

            <div class="container-header">
                <div class="container">
                    <div class="header-content navbar row  justify-content-between align-items-center">
                        <div class="logo-now col-auto"><span><a href="home.html"><img
                                src="../img/shopeefoodvn.png"
                                alt="ShopeeFood"></a></span></div>
                        <div class="select-local col-auto">
                            <div class="dropdown">
                                <div class="dropdown-toggle" role="button" id="local-dropdown"
                                     data-toggle="dropdown" aria-haspopup="true">Hà Nội</div>
                                <div class="dropdown-menu" style="font-size:14px">
                                    <div class="dropdown-item"><span class="name col">TP. HCM</span><span
                                            class="count col-auto">85849 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Hà Nội</span><span
                                            class="count col-auto">42040 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Đà Nẵng</span><span
                                            class="count col-auto">11850 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Cần Thơ</span><span
                                            class="count col-auto">3584 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Hải Phòng</span><span
                                            class="count col-auto">4109 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Huế</span><span
                                            class="count col-auto">2886 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Khánh Hoà</span><span
                                            class="count col-auto">2450 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Đồng Nai</span><span
                                            class="count col-auto">4385 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Nghệ An</span><span
                                            class="count col-auto">1701 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Vũng Tàu</span><span
                                            class="count col-auto">1926 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Bắc Ninh</span><span
                                            class="count col-auto">604 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Bình Dương</span><span
                                            class="count col-auto">3397 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Điện Biên</span><span
                                            class="count col-auto">10454 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Lâm Đồng</span><span
                                            class="count col-auto">1460 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Quảng Nam</span><span
                                            class="count col-auto">1013 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Quảng Ninh</span><span
                                            class="count col-auto">884 địa điểm</span></div>
                                    <div class="dropdown-item"><span class="name col">Thái Nguyên</span><span
                                            class="count col-auto">1028 địa điểm</span></div>
                                </div>
                            </div>

                        </div>

                        <div class="main-nav col"><a class="nav-item active" href="/ha-noi/food">Đồ ăn</a><a
                                class="nav-item " href="/ha-noi/fresh">Thực phẩm</a><a class="nav-item "
                                                                                       href="/ha-noi/liquor">Bia</a><a class="nav-item " href="/ha-noi/flowers">Hoa</a><a
                                class="nav-item " href="/ha-noi/fmcg">Siêu thị</a><a class="nav-item "
                                                                                     href="/ha-noi/medicine">Thuốc</a><a class="nav-item " href="/ha-noi/pets">Thú
                            cưng</a></div>


                        <div class="user-acc col-auto">
                            <button type="button" )onclick="login(" class="btn btn-none-bg btn-login">
                                <span class="font14">Đăng nhập</span>
                            </button>
<%--                            <input type="submit" value="Đăng nhập ">--%>
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
                                src="/app/assets/img/img-new-app.png?2aafe2fa0d470c0d2fadada01c56a448"
                                alt="App now"></div>
                        <div class="info-now"><span>
                                    <h3 style="font-size: 36px;font-weight: lighter;margin-bottom: 0;">Hello you!</h3>
                                    <p style="font-size: 15px;margin-top: 9px;margin-bottom: 9px;">We are pleased to
                                        inform you that our application<span class="bold"> ShopeeFood</span> is changed
                                        its name to</p><span class="btn btn-red font18" title="ShopeeFood"
                                                             style="cursor: pointer;font-size: 18px !important;background-color: #cf2127;color: #fff;border-color: #cf2127;"><span
                                class="txt-bold"
                                style="font-weight: 700 !important;">ShopeeFood</span></span>
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
        <!--form login-->
        <div class="now-login">
            <div class="content">
                <div class="title">Đăng nhập</div>
                <div class="login-via">
                    <div class="item phone">
                        <span class="fas fa-mobile-alt"></span>Số điện thoại</div>
                    <div class="item fb"><span class="fab fa-facebook-f"></span>Facebook</div>
                    <form id="google-login-form" action="https://accounts.google.com/o/oauth2/v2/auth" method="GET"><input
                            type="hidden" name="client_id"
                            value="229327170580-69v69v4s94p2tvf4qi3g0qb901b2pg99.apps.googleusercontent.com"><input
                            type="hidden" name="redirect_uri" value="https://shopeefood.vn/account/login"><input type="hidden"
                                                                                                                 name="scope" value="email profile openid"><input type="hidden" name="state" value="/"><input
                            type="hidden" name="response_type" value="permission id_token"><input type="hidden"
                                                                                                  name="fetch_basic_profile" value="true"><input type="hidden" name="nonce"
                                                                                                                                                 value="AO9thoqUvirPjVc4KOM61c001.snqMhG">
                        <div class="item plus"><a target="_blank" href="https://accounts.google.com/o/oauth2/v2/auth/oauthchooseaccount?client_id=229327170580-69v69v4s94p2tvf4qi3g0qb901b2pg99.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fshopeefood.vn%2Faccount%2Flogin&scope=email%20profile%20openid&state=%2Fgioi-thieu&response_type=permission%20id_token&fetch_basic_profile=true&nonce=XGQ3vrHYjqY9A1iybTTvj4A5rusBTzEe&flowName=GeneralOAuthFlow"></a><i class="fab fa-google-plus-g"></i>Google</div>
                    </form>
                </div>
                <p class="text">${message}</p>
                <div class="form-login-input">
                    <form method="post" action="">
                        <div class="field-group">
                            <div class="input-group">
                                <i class="far fa-envelope"></i>

                                <input name="account" type="text" placeholder="Tên đăng nhập hoặc Email" value="">
                            </div>

                            <div class="input-group">
                                <i class="fas fa-lock"></i>
                                <input name="password" type="password" placeholder="Mật khẩu" value="">
                            </div>
                        </div>
                        <div class="form-group clearfix">
                            <div class="float-left"><input type="checkbox" id="RememberMe" checked=""><label for="RememberMe">Lưu
                                thông tin đăng nhập</label></div><span class="float-right"><a href="/forgotPassword">Quên mật
                                    khẩu?</a></span>
                        </div>

                        <input style="font-size: 20px" class="btn btn-block btn-submit" type="submit" value="Đăng nhập">

                    </form>
                    <form action="/login?action=">
                        <div class="item phone">
                            <span class="fas fa-mobile-alt"></span>Đăng Ký
                        </div>
                    </form>






                </div><br>
                <div class="login-mess-policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng
                    nhập hoặc đăng ký, bạn đồng ý với <a
                            style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank"
                            href="https://shopeefood.vn/gioi-thieu#footer-bottom">Chính sách quy định của Foody</a></div>
            </div>
        </div>
        <!-- end form login -->


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
    </div>



</div>

</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>!function (r) { var n = window.webpackJsonp; window.webpackJsonp = function (e, u, c) { for (var f, i, p, a = 0, l = []; a < e.length; a++)i = e[a], o[i] && l.push(o[i][0]), o[i] = 0; for (f in u) Object.prototype.hasOwnProperty.call(u, f) && (r[f] = u[f]); for (n && n(e, u, c); l.length;)l.shift()(); if (c) for (a = 0; a < c.length; a++)p = t(t.s = c[a]); return p }; var e = {}, o = { 2: 0 }; function t(n) { if (e[n]) return e[n].exports; var o = e[n] = { i: n, l: !1, exports: {} }; return r[n].call(o.exports, o, o.exports, t), o.l = !0, o.exports } t.m = r, t.c = e, t.d = function (r, n, e) { t.o(r, n) || Object.defineProperty(r, n, { configurable: !1, enumerable: !0, get: e }) }, t.n = function (r) { var n = r && r.__esModule ? function () { return r.default } : function () { return r }; return t.d(n, "a", n), n }, t.o = function (r, n) { return Object.prototype.hasOwnProperty.call(r, n) }, t.p = "/", t.oe = function (r) { throw console.error(r), r } }([]);
</script>
<script defer="" src="./assets/js/main1.js"></script>
<script defer="" src="./assets/js/main2.js"></script>



</body>

</html>