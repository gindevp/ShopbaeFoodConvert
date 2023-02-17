<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/x-icon" href="${ pageContext.request.contextPath }/static/img/favicon.png">
  <title>Đặt Đồ Ăn</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://s3.prod.now.vn/resources/shopee_font/font.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.2.0/css/all.min.css"
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"
        href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=vietnamese">
  <link href="webapp/client/assets/css/main2.css" rel="stylesheet">
  <link href="client/css/home.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <script src="https://www.google.com/recaptcha/api.js"></script>
  <script src="https://apis.google.com/js/platform.js" gapi_processed="true"></script>
  <!-- Google Tag Manager -->
  <script src="https://kit.fontawesome.com/bb6a3cf0b7.js" crossorigin="anonymous"></script>
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
  .now-wrapper-chat .live-chat .group-event .icon-add {
  font-size: 16px;
  display: inline-block;
  margin-right: 10px;
  position: relative;
  top: -4px;
  left: 0;
  cursor: pointer
}

.now-wrapper-chat .live-chat.ui-tabs {
  padding: 0;
  border: 0
}

.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-panel {
  padding: 0
}

.now-wrapper-chat .live-chat.ui-tabs .header-tab {
  background: transparent;
  border: 0;
  display: inline-block;
  padding: 0
}

.now-wrapper-chat .live-chat.ui-tabs .header-tab .select {
  padding: 6px 0 6px 5px;
  border-radius: 4px;
  border-color: #d7d7d7;
  font-size: 14px
}

.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default {
  background: transparent;
  border: 0
}

.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default a {
  color: #fff;
  padding: 1px 5px
}

.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default.ui-state-active a {
  border-bottom: 2px solid
}

.now-wrapper-chat .chat-content {
  color: #464646;
  font-size: 12px;
  text-align: left;
  border: 1px solid #d7d7d7;
  padding: 4px 12px;
  display: inline-block;
  background-color: #d7d7d7;
  border-radius: 4px
}

.now-wrapper-chat .message-received .chat-message-content {
  padding-left: 30px
}

.now-wrapper-chat #c-shipper-chat .chartList {
  color: #cf2127;
  background-color: #cf2127
}

.now-wrapper-chat .chat-message-content .avatar {
  width: 28px;
  height: 28px;
  position: absolute;
  top: 3px;
  left: -3px
}

@media screen and (max-width: 1366px) {
  .category-list-filter {
    margin-bottom: -15px
  }

  .category-list-filter > a {
    margin-right: 15px;
    margin-bottom: 15px
  }

  .category-list-filter .category-item {
    font-size: 14px;
    padding: 5px 15px
  }

  .now-search .form-search {
    padding: 20px 0
  }

  .now-search .now-idea-searching {
    margin-top: -20px
  }
}

.logo-qr-code {
  position: relative;
  text-align: center
}

.logo-qr-code img {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%)
}

.now-loading-restaurant.show {
  display: block !important
}

.now-search-filter {
  padding-top: 15px
}

.now-search-filter .list-filter {
  float: left;
  padding-top: 10px
}

.now-search-filter .list-filter .item-filter {
  color: #6d6f71;
  font-size: 13px;
  text-transform: uppercase;
  float: left;
  position: static
}

.now-search-filter .list-filter .item-filter.show .dropdown-toggle {
  background-color: #fff;
  font-weight: 700
}

.now-search-filter .list-filter .item-filter.show .container-box-filter {
  display: block
}

.now-search-filter .list-filter .dropdown-toggle {
  position: relative;
  cursor: pointer;
  padding: 3px 16px 8px;
  display: inline-block;
  border-radius: 6px 6px 0 0
}

.now-search-filter .list-filter .dropdown-toggle:after {
  border: 0;
  border: solid #6d6f71;
  border-width: 0 1px 1px 0;
  display: inline-block;
  padding: 2px;
  transform: translate(-50%) rotate(45deg);
  -webkit-transform: translate(-50%) rotate(45deg);
  position: absolute;
  bottom: 2px;
  left: 50%
}

.now-search-filter .list-filter .tittle-all-cate {
  font-size: 18px;
  padding-top: 10px;
  margin-bottom: 10px
}

.now-search-filter .list-filter .container-box-filter {
  position: absolute;
  top: 100%;
  left: 0;
  background-color: #fff;
  z-index: 2;
  height: 180px;
  width: 868px;
  border-radius: 0 6px 6px 6px;
  overflow-y: auto;
  padding: 15px;
  box-shadow: 1px 1px 5px 0 rgba(50, 50, 50, .4);
  display: none;
  margin-top: -6px
}

.now-search-filter .list-filter .container-box-filter .custom-checkbox {
  float: left;
  width: 33.33%;
  margin-bottom: 5px
}

.now-search-filter .nav-filter {
  border-bottom: 1px solid #d7d7d7;
  position: relative;
  padding-bottom: 8px
}

.now-search-filter .result {
  font-size: 13px;
  float: left;
  padding: 10px
}

.now-search-filter .filter-sort {
  display: block;
  background: #fff;
  border-radius: 3px;
  border: 1px solid #d7d7d7;
  color: #252525;
  font-size: .8rem;
  font-weight: 300;
  height: 40px;
  line-height: 1;
  margin: 0;
  outline: none;
  padding: 5px 5px 5px 7px;
  position: relative;
  text-indent: 0;
  vertical-align: bottom
}

.now-search-filter .tag-filter {
  display: -ms-flexbox;
  display: flex;
  padding-top: 10px
}

.now-search-filter .tag-filter .widget-tag {
  font-size: 12px;
  display: inline-block;
  position: relative;
  margin-right: 15px;
  padding: 4px 7px;
  background-color: #d7d7d7;
  border-radius: 2px
}

.now-search-filter .tag-filter .key-word {
  font-size: 14px;
  font-weight: 700
}

.no-result-search {
  background-color: #fff;
  text-align: center;
  margin: auto;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  padding-top: 35px;
  padding-bottom: 35px;
  margin-top: 10px
}

.icon-pin {
  display: inline-block
}

.icon-pin, .icon-pin img {
  position: relative;
  z-index: 3
}

.icon-pin img {
  width: 40px
}

@keyframes l {
  0% {
    transform: scale(0);
    opacity: 1
  }
  20% {
    transform: scale(25);
    opacity: 1
  }
  to {
    opacity: 0;
    transform: scale(40)
  }
}

.icon-pin:after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  width: 4px;
  height: 4px;
  background: rgba(40, 111, 177, .5);
  opacity: 0;
  border-radius: 50%;
  transform: scale(1) translate(-50%);
  transform-origin: 50% 50%;
  animation: l 1s linear infinite normal
}

.header-res-collection {
  font-size: 15px;
  text-align: center;
  color: #525252;
  padding-top: 20px
}

.header-res-collection .title {
  margin: 20px 0;
  font-size: 25px;
  color: #252525;
  font-weight: 700
}

.header-res-collection .title-desc {
  padding: 0 15%;
  line-height: 25px;
  white-space: pre-wrap;
  margin-bottom: 0
}

.toolbar-res-collection {
  border-bottom: 1px solid #d7d7d7;
  padding: 2px 0 8px;
  margin-bottom: 28px;
  margin-left: 10px;
  margin-right: 10px
}

.toolbar-res-collection .facebook {
  margin-top: 20px
}

.toolbar-res-collection .local {
  font-size: 15px;
  color: #959595;
  padding-top: 20px
}

.toolbar-res-collection .local .number {
  padding: 0 4px
}

.fa-tag, .now-list-restaurant .content-promotion .fas {
  padding-right: 5px
}

.now-branch .banner-brand {
  position: relative;
  height: 300px;
  margin-bottom: 15px
}

.now-branch .banner-img {
  width: 100%;
  max-height: 100%
}

.now-branch .banner-info {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: #fff;
  padding: 10px 40px;
  background: rgba(0, 0, 0, .3);
  border-radius: 5px
}

.now-branch .banner-info h2 {
  font-size: 30px;
  font-weight: 700;
  margin: 0
}

.now-branch .banner-info p {
  font-size: 14px;
  margin-top: 10px;
  margin-bottom: 0
}

.now-branch .brand-filter {
  background-color: #d7d7d7;
  padding: 10px;
  margin-bottom: 5px
}

.now-branch .brand-filter select {
  padding: 4px 5px;
  border: 0;
  margin-right: 15px
}

.now-branch-filter {
  border-bottom: 1px solid #d7d7d7;
  padding-bottom: 13px;
  margin-bottom: 7px
}

.now-branch-filter select {
  font-size: 14px;
  padding: 6px 0 6px 5px;
  border-radius: 4px;
  border-color: #d7d7d7
}

.now-branch-filter select:focus {
  font-size: 14px
}

.deal-hot {
  background: #f2f2f2
}

.deal-hot__banner {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 35px
}

.deal-hot__condition {
  font-size: 26px;
  text-transform: uppercase;
  color: #58585a;
  text-align: center
}

.deal-hot__condition:after {
  content: " ";
  display: block;
  margin: 5px auto 30px;
  width: 100px;
  height: 2px;
  background: #58585a;
  border-radius: 2px
}

.deal-hot__container {
  width: 965px;
  margin: 0 auto;
  display: table
}

.deal-hot__container__section {
  margin: 0 10px 15px;
  background: #fff;
  box-shadow: 2px 2px 4px 0 hsla(0, 0%, 71%, .2);
  border-radius: 3px;
  float: left;
  width: 460px;
  height: 400px;
  display: table-cell
}

.deal-hot__container__section__img {
  display: block;
  width: 100%;
  margin: 0 auto;
  min-height: 110px
}

.deal-hot__container__section__text {
  font-size: 16px;
  color: #3a3a3b
}

.deal-hot__download {
  height: 550px;
  background-color: #fff
}

.deal-hot__download__container {
  width: 1200px;
  margin-left: auto;
  margin-right: auto
}

.deal-hot__download__container__inside {
  position: relative
}

.deal-hot__download__container__inside__text {
  font-size: 26px;
  position: absolute;
  top: 225px;
  left: 620px;
  width: 280px;
  text-align: center
}

.deal-hot__download__container__inside__phone {
  position: absolute;
  top: 45px;
  left: 250px
}

.deal-hot__download__container__inside__phone__img {
  display: block;
  width: 306px;
  height: 500px
}

.deal-hot__download__container__inside__logo {
  position: absolute;
  top: 90px;
  left: 700px
}

.deal-hot__download__container__inside__iTune {
  position: absolute;
  top: 290px;
  left: 610px
}

.deal-hot__download__container__inside__ggplay {
  position: absolute;
  top: 290px;
  left: 770px
}

.deal-hot__download__container__inside__qrIOs {
  position: absolute;
  top: 370px;
  left: 633px
}

.deal-hot__download__container__inside__qrAndroid {
  position: absolute;
  top: 370px;
  left: 790px
}

.restaurant-landing-page .box-loading, .restaurant-landing-page .item-restaurant {
  width: 20% !important
}

.landing-banner {
  opacity: 1 !important
}

.event-category {
  background-color: #fff;
  padding: 20px 0
}

.container-banner-event {
  margin-bottom: 0;
  text-align: center;
  position: relative
}

.event-category-container {
  margin: auto;
  position: relative
}

.event-category-container .list-event {
  margin: 0 -10px
}

.event-category-container .event-item {
  float: left;
  width: 25%;
  padding: 0 10px
}

.event-category-container .event-item .image-event {
  padding: 5px;
  width: 270px;
  height: 270px;
  position: relative;
  display: block;
  margin-bottom: 10px
}

.event-category-container .event-item .image-event:after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 2;
  background-size: contain;
  background-repeat: no-repeat
}

.event-category-container .event-item .image-event img {
  width: 100%;
  height: 100%;
  transition: all .2s ease
}

.event-category-container .event-item .title-event {
  font-size: 24px;
  text-align: center;
  text-transform: uppercase
}

.event-category-container .event-item.milk-tea .image-event:after {
  background-size: 271px 270px
}

.event-category-container .event-item.milk-tea .title-event {
  color: #0f7993
}

.event-category-container .event-item.breakfast .image-event:after {
  background-size: 271px 272px;
  background-position: 0 -2px
}

.event-category-container .event-item.breakfast .title-event {
  color: #e8a409
}

.event-category-container .event-item.lunch .image-event:after {
  background-position: -1px 0
}

.event-category-container .event-item.lunch .title-event {
  color: #bc3635
}

.event-category-container .event-item.dinner .image-event:after {
  background-position: -2px 0;
  background-size: 272px 270px
}

.event-category-container .event-item.dinner .title-event {
  color: #879b34
}

.event-category-container .content-event {
  display: block
}

.banner-event .now-search {
  left: 50%;
  top: 30%;
  width: 760px;
  transform: translate(-50%, -50%)
}

.banner-event .now-search .form-search {
  margin: 0
}

.banner-event .now-idea-searching {
  text-align: left;
  margin-top: -1px
}

.now-detail-restaurant {
  background-color: #fff;
  padding-top: 30px
}

.now-detail-restaurant .detail-restaurant-img {
  width: 480px;
  height: 300px;
  position: relative;
  float: left
}

.now-detail-restaurant .detail-restaurant-img img {
  width: 100%;
  height: 100%
}

.now-detail-restaurant .detail-restaurant-info {
  color: #252525;
  float: right;
  width: 645px;
  padding-bottom: 15px
}

.now-detail-restaurant .breadcrumb {
  padding-left: 0;
  margin-bottom: 18px;
  list-style: none;
  overflow: hidden;
  margin-top: -2px
}

.now-detail-restaurant .breadcrumb .breadcrumb-item {
  float: left;
  position: relative;
  padding-right: 4px
}

.now-detail-restaurant .breadcrumb .breadcrumb-item:after {
  content: "\BB";
  color: #0288d1;
  display: inline-block;
  padding-left: 4px
}

.now-detail-restaurant .breadcrumb .breadcrumb-item:last-child:after {
  content: ""
}

.now-detail-restaurant .breadcrumb .breadcrumb-link {
  font-size: 13px;
  color: #187caa
}

.now-detail-restaurant .breadcrumb .breadcrumb-link:hover {
  text-decoration: none
}

.now-detail-restaurant .tag-preferred {
  background: #f13233;
  color: #fff;
  padding: 3px 5px;
  margin-right: 10px;
  cursor: pointer;
  text-transform: none
}

.now-detail-restaurant .tag-preferred i {
  padding-left: 2px;
  padding-right: 5px
}

.now-detail-restaurant .kind-restaurant {
  font-size: 11px;
  color: #959595;
  text-transform: uppercase;
  display: -ms-flexbox;
  display: flex
}

.now-detail-restaurant .kind-restaurant span {
  margin: auto 0
}

.now-detail-restaurant .link-brand {
  text-transform: none;
  margin-left: 10px
}

.now-detail-restaurant .name-restaurant {
  font-size: 22px;
  color: #464646;
  font-weight: 700;
  text-overflow: ellipsis;
  white-space: nowrap;
  overflow: hidden;
  margin-bottom: 4px;
  line-height: 33px
}

.now-detail-restaurant .name-restaurant .icon {
  margin-right: 2px;
  vertical-align: sub
}

.now-detail-restaurant .address-restaurant {
  font-size: 13px;
  margin-bottom: 2px
}

.now-detail-restaurant .status-restaurant {
  margin-bottom: 6px
}

.now-detail-restaurant .status-restaurant .time {
  font-size: 15px;
  display: inline-block;
  padding-left: 10px;
  vertical-align: middle
}

.now-detail-restaurant .status-restaurant .fa-clock {
  color: #959595;
  margin-right: 3px
}

.now-detail-restaurant .opentime-status {
  position: relative;
  top: 0;
  left: 0;
  display: inline-block
}

.now-detail-restaurant .opentime-status .stt {
  width: inherit;
  height: inherit;
  vertical-align: middle;
  display: inline-block;
  background-color: transparent
}

.now-detail-restaurant .opentime-status .stt:after {
  content: attr(title);
  font-size: 15px;
  display: inline-block;
  white-space: nowrap;
  color: inherit;
  padding-left: 5px
}

.now-detail-restaurant .opentime-status .stt:before {
  content: "";
  border-radius: 50%;
  cursor: pointer;
  width: 8px;
  height: 8px;
  display: inline-block;
  position: relative;
  top: -1px;
  z-index: 2
}

.now-detail-restaurant .opentime-status .online:before {
  background-color: #6cc942
}

.now-detail-restaurant .opentime-status .offline:before {
  background-color: #6d6f71
}

.now-detail-restaurant .opentime-status .busy:before {
  background-color: #cf2127
}

.now-detail-restaurant .cost-restaurant {
  color: #959595;
  font-size: 15px
}

.now-detail-restaurant .cost-restaurant .fas {
  text-align: center;
  font-size: 8px;
  width: 16px;
  height: 16px;
  border: 1px solid;
  border-radius: 50%;
  line-height: 15px;
  vertical-align: top;
  margin-top: 3px;
  margin-right: 3px
}

.now-detail-restaurant .restaurant-announcement-info {
  min-height: 40px;
  line-height: 38px;
  width: 420px;
  border-radius: 2px;
  background-color: #fbf9d8;
  position: relative;
  bottom: 0;
  margin-bottom: 8px;
  float: left
}

.now-detail-restaurant .restaurant-announcement-info .icon-notice {
  background-size: contain;
  height: 20px;
  width: 20px;
  vertical-align: middle
}

.now-detail-restaurant .restaurant-announcement-info span {
  display: inline-block;
  line-height: 30px;
  vertical-align: middle;
  font-size: 13px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  letter-spacing: .26px;
  color: #464646;
  padding-left: 15px;
  padding-right: 10px
}

.now-detail-restaurant .share-social {
  width: 100%;
  height: auto;
  margin-top: 10px
}

.now-detail-restaurant .share-social .facebook {
  float: left;
  margin-right: 15px;
  padding-top: 2px
}

.now-detail-restaurant .link-merchant {
  color: #fff;
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: #525252;
  border-radius: 3px;
  padding: 9px 10px 9px 40px;
  position: relative;
  float: right
}

.now-detail-restaurant .link-merchant .icon-merchant {
  position: absolute;
  color: #669fab;
  font-size: 24px !important;
  vertical-align: middle;
  content: "";
  width: 30px;
  height: 30px;
  top: 4px;
  left: 6px;
  background-position: -192px -15px;
  background-repeat: no-repeat
}

.now-detail-restaurant .link-merchant:hover {
  text-decoration: none
}

.now-detail-restaurant .utility-restaurant {
  border-top: 1px solid #ebebeb
}

.now-detail-restaurant .utility-restaurant .utility-item {
  float: left;
  width: 140px;
  position: relative;
  padding: 10px;
  margin-bottom: 30px
}

.now-detail-restaurant .utility-restaurant .utility-item:after {
  content: "";
  width: 1px;
  height: 20px;
  position: absolute;
  top: 22px;
  left: 0;
  background-color: #ebebeb
}

.now-detail-restaurant .utility-restaurant .utility-item:first-child {
  padding-left: 0
}

.now-detail-restaurant .utility-restaurant .utility-item:first-child:after {
  width: 0;
  height: 0
}

.now-detail-restaurant .utility-restaurant .utility-title {
  color: #959595;
  font-size: 13px;
  text-transform: uppercase
}

.now-detail-restaurant .utility-restaurant .utility-content {
  font-size: 14px
}

.now-detail-restaurant .utility-restaurant .note {
  color: #0288d1;
  cursor: pointer
}

.now-detail-restaurant .utility-restaurant .icon-verify-merchant {
  position: absolute;
  bottom: 0;
  left: 0;
  cursor: pointer
}

.now-detail-restaurant .utility-restaurant .time-confirm {
  position: absolute;
  bottom: 12px;
  right: 5px;
  z-index: 1
}

.now-detail-restaurant .utility-restaurant .content-confirm {
  color: #fff;
  white-space: nowrap;
  background: #464646;
  padding: 5px 10px;
  border-radius: 5px;
  transform: translate(-50%);
  margin-top: 14px;
  position: absolute;
  top: 100%;
  left: 0
}

.now-detail-restaurant .utility-restaurant .content-confirm:after {
  content: " ";
  bottom: 100%;
  left: 50%;
  border: solid transparent;
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
  border-color: transparent;
  border-bottom-color: #464646;
  border-width: 7px;
  margin-left: 2px
}

.now-detail-restaurant .utility-restaurant .content-confirm .close {
  font-size: 14px;
  text-align: center;
  position: absolute;
  top: -10px;
  right: -7px;
  cursor: pointer;
  background-color: #fff;
  color: #252525;
  width: 18px;
  height: 18px;
  line-height: 11px;
  border-radius: 50%;
  font-weight: 700;
  border: 2px solid;
  opacity: 1;
  text-shadow: none
}

.now-detail-restaurant .utility-restaurant .more-utility {
  cursor: pointer
}

.now-detail-restaurant .utility-restaurant .more-utility:after {
  border: 0
}

.now-detail-restaurant .utility-restaurant .dropdown {
  display: inline-block;
  margin-top: 18px
}

.now-detail-restaurant .utility-restaurant .dropdown:hover .dropdown-menu {
  display: block
}

.now-detail-restaurant .utility-restaurant .dropdown-menu {
  margin-top: 0;
  padding: 0
}

.now-detail-restaurant .utility-restaurant .dropdown-item {
  padding: 4px 10px;
  border-bottom: 1px solid #ebebeb
}

.now-detail-restaurant .utility-restaurant .dropdown-item:active {
  background-color: #fff
}

.now-detail-restaurant .utility-restaurant .dropdown-item:active .utility-content {
  color: #252525
}

.now-detail-restaurant .utility-restaurant .btn-more-utility {
  font-size: 5px;
  cursor: pointer;
  color: #959595;
  vertical-align: middle;
  padding: 10px 0
}

.now-detail-restaurant .utility-restaurant .btn-more-utility .fas {
  padding: 0 1px;
  outline: none
}

.now-detail-restaurant .utility-restaurant .btn-more-utility .fas:focus {
  outline: none
}

.now-detail-restaurant .number-review {
  font-size: 14px
}

.now-detail-restaurant .number-review:hover {
  text-decoration: none
}

.now-detail-restaurant .rating {
  margin-bottom: 4px;
  font-size: 14px
}

.now-detail-restaurant .rating .number-rating {
  background-color: #ffc107;
  padding: 0 5px;
  border-radius: 4px;
  color: #fff;
  margin: 0 5px
}

.now-detail-restaurant .view-more-rating {
  margin-bottom: 4px
}

.now-detail-restaurant .detail-restaurant-note {
  font-size: 15px;
  padding: 12px 0;
  clear: both
}

.rating .stars {
  font-size: 14px;
  color: #ffc107;
  display: inline-block
}

.rating .stars > span {
  padding-right: 2px
}

.now-menu-restaurant {
  width: 845px;
  margin-bottom: 20px;
  min-height: 226px;
  float: left
}

.now-menu-restaurant .menu-restaurant-tab .item {
  color: #6d6f71;
  text-transform: uppercase;
  cursor: pointer;
  display: inline-block;
  padding: 13px 26px
}

.now-menu-restaurant .menu-restaurant-tab .item.active {
  font-weight: 700;
  color: #cf2127;
  cursor: default
}

.now-menu-restaurant .menu-restaurant-category {
  position: absolute;
  top: 0;
  left: 0
}

.now-menu-restaurant .introduce-restaurant {
  padding-top: 15px
}

.now-menu-restaurant .introduce-restaurant .no-intro {
  text-align: center;
  font-size: 13px
}

.now-menu-restaurant .introduce-restaurant .no-intro .fas {
  color: #d7d7d7;
  font-size: 35px;
  margin-bottom: 10px
}

.now-menu-restaurant .introduce-restaurant .content {
  background-color: #fff;
  padding: 10px 15px
}

.menu-restaurant-category {
  border: 1px solid #ebebeb;
  padding: 15px 5px 15px 15px;
  width: 235px;
  margin-right: 10px;
  background: #fff;
  border-radius: 4px
}

.menu-restaurant-category .scrollbar-container {
  max-height: calc(100vh - 100px);
  position: relative
}

.menu-restaurant-category .list-category {
  position: relative
}

.menu-restaurant-category .list-category .item {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  margin: 5px 0;
  padding: 2px 0
}

.menu-restaurant-category .list-category .item-link {
  font-size: 13px;
  display: inline-block;
  color: #6d6f71;
  text-transform: uppercase;
  padding: 3px 7px 1px;
  border-radius: 4px;
  cursor: pointer
}

.menu-restaurant-category .list-category .item-link:hover {
  text-decoration: none
}

.menu-restaurant-category .list-category .item-link.active {
  background-color: #959595;
  color: #fff
}

.menu-restaurant-detail {
  width: 590px;
  padding: 6px 15px;
  float: right;
  border: 1px solid #ebebeb;
  border-radius: 4px;
  background: #fff
}

.menu-restaurant-detail .duplicate-order {
  font-size: 13px;
  color: #252525;
  position: relative;
  padding: 9px 0 28px;
  margin-bottom: 10px
}

.menu-restaurant-detail .duplicate-order:after {
  content: "";
  position: absolute;
  bottom: 0;
  left: -15px;
  right: -15px;
  height: 1px;
  background-color: #ebebeb
}

.menu-restaurant-detail .duplicate-order .fas {
  color: #6d6f71;
  float: right
}

.menu-restaurant-detail .duplicate-order a {
  color: #252525;
  display: block
}

.menu-restaurant-detail .duplicate-order a:hover {
  text-decoration: none
}

.menu-restaurant-detail .duplicate-order .re-order-btn {
  float: right;
  margin-top: -3px;
  margin-right: 10px
}

.menu-restaurant-detail .promotions-order {
  background-color: #fbf9d8;
  position: relative;
  overflow: hidden;
  margin-left: -15px;
  margin-right: -15px;
  border: 1px dashed #575757;
  padding: 2px 15px 0 89px;
  display: none
}

.menu-restaurant-detail .promotions-order .promotion-item {
  padding: 8px 75px 0 0;
  position: relative;
  cursor: pointer
}

.menu-restaurant-detail .promotions-order .promotion-item .content {
  position: relative;
  border-bottom: 1px solid #ebe9c9;
  padding-top: 10px;
  min-height: 55px
}

.menu-restaurant-detail .promotions-order .promotion-item .content p, .menu-restaurant-detail .promotions-order .promotion-item .content span {
  font-size: 14px !important;
  font-family: Noto Sans, Arial, sans-serif !important
}

.menu-restaurant-detail .promotions-order .promotion-item .code-copy, .menu-restaurant-detail .promotions-order .promotion-item code-copy:focus {
  position: absolute;
  top: 10px;
  right: 0;
  border: 0;
  background: none;
  font-size: 12px;
  color: #575252;
  font-weight: 700
}

.menu-restaurant-detail .promotions-order .promotion-item .code-copy .fa-copy, .menu-restaurant-detail .promotions-order .promotion-item code-copy:focus .fa-copy {
  padding-left: 5px
}

.menu-restaurant-detail .promotions-order .icon-discount {
  position: absolute;
  left: -74px;
  top: 13px
}

.menu-restaurant-detail .promotions-order .icon-promotion {
  height: 40px;
  width: 40px;
  text-align: center;
  position: absolute;
  left: -74px;
  top: -3px;
  bottom: 0;
  margin: auto
}

.menu-restaurant-detail .promotions-order .title {
  font-size: 18px
}

.menu-restaurant-detail .promotion-collapse {
  cursor: pointer;
  color: #0288d1;
  padding: 10px 0
}

.menu-restaurant-detail .promotion-collapse .expand {
  position: relative
}

.menu-restaurant-detail .promotion-collapse .fa-angle-up {
  text-align: center;
  font-size: 11px;
  line-height: 14px;
  padding-left: 1px;
  float: right;
  width: 14px;
  height: 14px;
  background-color: #6d6f71;
  color: #fbf9d8;
  border-radius: 50%
}

.menu-restaurant-list, body {
  position: relative
}

.menu-restaurant-list .title-menu {
  text-transform: uppercase;
  color: #6d6f71;
  padding: 5px 0 0;
  margin: 10px 0 20px
}

.menu-restaurant-list .item-restaurant-row {
  padding-top: 10px;
  border-bottom: 1px solid #f5f5f5;
  padding-bottom: 10px;
  position: relative
}

.menu-restaurant-list .menu-provider {
  font-size: 13px
}

.menu-restaurant-list .search-items {
  position: -webkit-sticky;
  position: sticky;
  top: 70px;
  background: #fff;
  z-index: 2;
  padding: 15px 0 10px
}

.menu-restaurant-list .search-items .input-group {
  margin: 0;
  position: relative;
  color: #46464c
}

.menu-restaurant-list .search-items .input-group input {
  width: 100%;
  padding: 0 40px;
  border: 0;
  border: 1px solid #ededed;
  height: 40px
}

.menu-restaurant-list .search-items .input-group input:focus {
  outline: none
}

.menu-restaurant-list .search-items .input-group i {
  position: absolute;
  padding: 15px;
  line-height: 10px
}

.menu-restaurant-list .search-items .input-group .fa-search {
  left: 0
}

.menu-restaurant-list .search-items .input-group .fa-times {
  right: 0
}

.now-bill-restaurant {
  background-color: #fff;
  border-radius: 4px;
  border: 1px solid #ebebeb;
  position: absolute;
  top: 48px;
  right: 10px;
  width: 315px
}

.now-bill-restaurant .bill-restaurant-header {
  border-bottom: 1px solid #ebebeb;
  padding: 7px 10px;
  position: relative
}

.now-bill-restaurant .bill-restaurant-header:after {
  content: "";
  display: block;
  clear: both
}

.now-bill-restaurant .cart-stats {
  font-size: 12px;
  cursor: pointer;
  color: #187caa;
  background: #ebebeb;
  padding: 2px 8px;
  border-radius: 2px;
  float: left;
  display: block
}

.now-bill-restaurant .cart-stats:hover {
  background-color: #5d6d9a;
  color: #fff
}

.now-bill-restaurant .btn-reset {
  float: right
}

.now-bill-restaurant .btn-condition, .now-bill-restaurant .btn-order-group {
  float: right;
  margin-right: 5px
}

.now-bill-restaurant .block-tooltip {
  font-size: 13px;
  position: absolute;
  bottom: 100%;
  right: 60px;
  background: #525252;
  color: #fff;
  padding: 6px 15px;
  border-radius: 5px;
  border: 1px dashed #959595;
  margin-bottom: 10px
}

.now-bill-restaurant .block-tooltip:after {
  content: "";
  position: absolute;
  top: 100%;
  right: 30px;
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 8px solid #525252
}

.now-bill-restaurant .block-tooltip .close {
  font-size: 13px;
  font-weight: 400;
  opacity: 1;
  text-shadow: none;
  position: absolute;
  top: 0;
  right: 2px;
  color: #fff;
  padding: 0 3px;
  cursor: pointer
}

.now-bill-restaurant .create-order {
  font-size: 11px;
  font-style: italic;
  padding-top: 6px;
  clear: both
}

.now-bill-restaurant .now-order-card-group {
  color: #464646;
  max-height: 300px;
  overflow-y: auto
}

.now-bill-restaurant .row-bill-restaurant {
  font-size: 13px;
  padding: 4px 10px;
  background-color: #f9f9f9;
  border-bottom: 1px solid #ebebeb
}

.now-bill-restaurant .tooltip-discount {
  font-size: 13px;
  color: #fff;
  text-align: center;
  background-color: #525252;
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  border: 1px dashed #959595;
  border-radius: 5px;
  padding: 7px 5px
}

.now-bill-restaurant .tooltip-discount:after, .now-bill-restaurant .tooltip-discount:before {
  top: 100%;
  right: 22px;
  border: dashed transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none
}

.now-bill-restaurant .tooltip-discount:after {
  border-top-color: #525252;
  border-width: 6px
}

.now-bill-restaurant .tooltip-discount :before {
  border-color: #959595 transparent transparent;
  border-width: 7px;
  margin-right: -1px
}

.now-bill-restaurant .tooltip-discount .close-tooltip {
  font-size: 15px;
  line-height: 15px;
  border-radius: 50%;
  cursor: pointer;
  position: absolute;
  top: -7px;
  right: -7px;
  width: 14px;
  height: 14px;
  z-index: 1;
  background-color: #464646
}

.now-bill-restaurant .btn-red {
  font-size: 15px;
  margin: 12px 10px 15px;
  display: block;
  width: calc(100% - 20px)
}

.now-bill-restaurant .input-promocode {
  background-color: #fbf9d8
}

.now-bill-restaurant .input-promocode:before {
  content: "(*)";
  color: #cf2127;
  font-size: 8px;
  display: inline-block;
  vertical-align: top;
  margin-top: 3px
}

.now-bill-restaurant .number-oder {
  font-size: 12px;
  color: #cf2127;
  text-align: center;
  font-weight: 700;
  display: inline-block;
  min-width: 18px
}

.menu-restaurant-content-tab {
  position: relative
}

.menu-restaurant-content-tab:after {
  content: "";
  display: block;
  clear: both
}

.now-related-place {
  margin-top: 20px
}

.now-related-place .title-related-place {
  color: #cf2127;
  font-size: 18px;
  margin: 0;
  font-weight: 700;
  text-transform: uppercase
}

.now-related-place .now-list-restaurant {
  overflow: hidden
}

.now-related-place .slick-next {
  right: 10px
}

.now-related-place .slick-prev {
  left: 10px
}

.loading-microsite {
  z-index: 2
}

.loading-microsite .now-loading-restaurant {
  display: block;
  padding-top: 25px;
  padding-bottom: 18px
}

.loading-microsite .now-loading-restaurant .box-loading {
  width: 100%;
  position: relative;
  padding-left: 15%;
  height: inherit;
  margin-bottom: 15px
}

.loading-microsite .now-loading-restaurant .box-thumbnail {
  position: absolute;
  top: 8px;
  left: 0;
  width: 14%;
  height: 85px
}

.loading-microsite .now-loading-restaurant .box-line-df {
  margin-top: 2px;
  width: 60%
}

.loading-microsite .now-loading-restaurant .box-line-df:after {
  content: "";
  display: table;
  min-height: 1px
}

.loading-microsite .now-loading-restaurant .box-line-lgx {
  width: 45%
}

.loading-microsite .now-loading-restaurant .box-line-lg {
  width: 50%;
  float: none;
  clear: both
}

.loading-microsite .now-loading-restaurant .box-loading.full-box {
  height: 300px;
  padding-left: 45.5%
}

.loading-microsite .now-loading-restaurant .box-loading.full-box .box-thumbnail {
  width: 40.6%;
  height: 300px
}

.loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-df {
  height: 15px;
  width: 80%;
  margin-bottom: 15px
}

.loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-lg, .loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-lgx {
  height: 15px
}

.loading-microsite .loading-microsite-col {
  background-color: #f2f2f2;
  padding-top: 45px
}

.loading-microsite .loading-microsite-col:after {
  content: "";
  display: block;
  clear: both
}

.loading-microsite .now-loading-restaurant.category {
  float: left;
  width: 235px;
  background-color: #fff;
  margin-right: 20px
}

.loading-microsite .now-loading-restaurant.category .box-loading {
  padding-left: 15px
}

.loading-microsite .now-loading-restaurant.detail {
  float: left;
  width: 590px;
  margin-right: 20px;
  padding-left: 15px
}

.loading-microsite .now-loading-restaurant.bill {
  float: left;
  width: 315px
}

.loading-microsite .now-loading-restaurant.bill .box-loading {
  padding-left: 15px
}

.duplicate-order, .group-order-campaign {
  cursor: pointer
}

.promotion-title {
  white-space: nowrap;
  margin-bottom: 10px;
  font-weight: 600
}

.promotion-title p {
  font-weight: 600;
  margin: 0
}

.promotion-title * {
  font-family: Noto Sans, Arial, sans-serif !important;
  font-size: inherit !important
}

.promotion-code {
  margin: 10px 100px 10px 15px;
  padding: 5px 5px 5px 20px;
  background-color: #faf6db
}

.delivery-restaurent-popup .modal-footer {
  -ms-flex-pack: center;
  justify-content: center
}

.icon-partner-vi {
  position: absolute;
  top: 20px;
  left: 15px;
  cursor: pointer;
  width: 116px;
  height: 44px
}

.icon-partner-en {
  position: absolute;
  top: 25px;
  left: 20px;
  cursor: pointer;
  width: 92px;
  height: 40px
}

.format-price {
  font-weight: 400;
  position: relative;
  top: -9px;
  font-size: 10px;
  right: 0
}

.preferred-tag {
  background: #f23132;
  padding: 3px 10px;
  border-radius: 25px;
  color: #fff;
  font-size: 14px
}

.QRcode {
  position: absolute;
  top: 48px;
  right: 10px;
  width: 315px;
  color: #fff;
  text-align: center;
  padding-top: 30px;
  padding-bottom: 10px
}

.now-menu-restaurant .align-left {
  text-align: left
}

.now-menu-restaurant .modal-dialog {
  pointer-events: auto
}

.now-menu-restaurant .max-width-750 {
  max-width: 750px
}

.now-menu-restaurant .fa-spinner {
  right: 0
}

.now-menu-restaurant .menu-restaurant-list .fa-times {
  cursor: pointer
}

.rst-animate-tip {
  position: fixed;
  z-index: 20000;
  height: 20px;
  padding: 0 6px;
  border-radius: 10px;
  background-color: #3198ef;
  color: #fff;
  line-height: 20px;
  font-size: 12px
}

#modal-box-image {
  z-index: 1049
}

.menu-restaurant-list .item-restaurant-row .item-restaurant-img button {
  background: none !important;
  color: inherit;
  border: none;
  padding: 0 !important;
  font: inherit;
  cursor: pointer
}

.res-menu-carousel .carousel.carousel-slider .control-arrow, .res-menu-carousel .carousel .control-arrow {
  transition: all .25s ease-in;
  opacity: .4;
  filter: alpha(opacity=40);
  position: absolute;
  z-index: 2;
  top: 20px;
  background: none;
  border: 0;
  font-size: 32px;
  cursor: pointer
}

.res-menu-carousel .carousel .control-arrow:hover {
  opacity: 1;
  filter: alpha(opacity=100)
}

.res-menu-carousel .carousel.carousel-slider .control-arrow:before, .res-menu-carousel .carousel .control-arrow:before {
  margin: 0 5px;
  display: inline-block;
  border-top: 8px solid transparent;
  border-bottom: 8px solid transparent;
  content: ""
}

.res-menu-carousel .carousel .control-disabled.control-arrow {
  opacity: 0;
  filter: alpha(opacity=0);
  cursor: inherit;
  display: none
}

.res-menu-carousel .carousel .control-prev.control-arrow {
  left: 0
}

.res-menu-carousel .carousel .control-prev.control-arrow:before {
  transform: none;
  border-color: transparent;
  border-left: 0;
  padding: 0;
  border-right: 8px solid #fff
}

.res-menu-carousel .carousel .control-next.control-arrow {
  right: 0
}

.res-menu-carousel .carousel .control-next.control-arrow:before {
  transform: none;
  border-color: transparent;
  border-right: 0;
  padding: 0;
  border-left: 8px solid #fff
}

.res-menu-carousel .btn-red {
  background-color: #cf2127;
  color: #fff;
  border-color: #cf2127;
  padding: 4px 10px
}

.res-menu-carousel .btn-over {
  padding: 4px 10px;
  background-color: #959595;
  border-color: #959595
}

.res-menu-carousel .carousel {
  position: relative;
  width: 100%
}

.res-menu-carousel .carousel button.control-arrow {
  outline: 0;
  border: 0;
  background: none
}

.res-menu-carousel .carousel img {
  width: 100%;
  display: inline-block;
  pointer-events: none
}

.res-menu-carousel .carousel .carousel {
  position: relative
}

.res-menu-carousel .carousel .control-arrow {
  top: 50%;
  margin-top: -13px;
  font-size: 18px
}

.res-menu-carousel .carousel .thumbs-wrapper {
  margin: 20px;
  overflow: hidden
}

.res-menu-carousel .carousel .thumbs {
  transition: all .15s ease-in;
  transform: translateZ(0);
  position: relative;
  list-style: none;
  white-space: nowrap
}

.res-menu-carousel .carousel .thumb {
  transition: border .15s ease-in;
  display: inline-block;
  width: 80px;
  margin-right: 6px;
  white-space: nowrap;
  overflow: hidden;
  border: 3px solid #fff;
  padding: 2px
}

.res-menu-carousel .carousel .thumb.selected, .res-menu-carousel .carousel .thumb:hover {
  border: 3px solid #333;
  padding: 2px
}

.res-menu-carousel .carousel .thumb img {
  vertical-align: top
}

.res-menu-carousel .carousel.carousel-slider {
  position: relative;
  margin: 0;
  overflow: hidden
}

.res-menu-carousel .carousel.carousel-slider .control-arrow {
  top: 0;
  color: #fff;
  font-size: 26px;
  bottom: 53px;
  margin-top: 0;
  padding: 5px
}

.res-menu-carousel .carousel.carousel-slider .control-arrow:hover {
  background: rgba(0, 0, 0, .2)
}

.res-menu-carousel .carousel .slider-wrapper {
  overflow: hidden;
  margin: auto;
  width: 100%;
  transition: height .15s ease-in
}

.res-menu-carousel .carousel .slider-wrapper.axis-horizontal .slider {
  -ms-box-orient: horizontal;
  display: -ms-flexbox;
  display: flex
}

.res-menu-carousel .carousel .slider-wrapper.axis-horizontal .slider .slide {
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-flow: column;
  flex-flow: column
}

.res-menu-carousel .carousel .slider-wrapper.axis-vertical {
  -ms-box-orient: horizontal;
  display: -ms-flexbox;
  display: flex
}

.res-menu-carousel .carousel .slider-wrapper.axis-vertical .slider {
  -ms-flex-direction: column;
  flex-direction: column
}

.res-menu-carousel .carousel .slider {
  margin: 0;
  padding: 0;
  position: relative;
  list-style: none;
  width: 100%
}

.res-menu-carousel .carousel .slider.animated {
  transition: all .35s ease-in-out
}

.res-menu-carousel .carousel .slide {
  min-width: 100%;
  margin: 0;
  position: relative;
  text-align: center
}

.res-menu-carousel .carousel .slide img {
  width: 100%;
  vertical-align: top;
  border: 0
}

.res-menu-carousel .carousel .slide iframe {
  display: inline-block;
  width: calc(100% - 80px);
  margin: 0 40px 40px;
  border: 0
}

.res-menu-carousel .carousel .slide .legend {
  transition: all .5s ease-in-out;
  position: absolute;
  bottom: 40px;
  left: 50%;
  margin-left: -45%;
  width: 90%;
  border-radius: 10px;
  background: #000;
  color: #fff;
  padding: 10px;
  font-size: 12px;
  text-align: center;
  opacity: .25;
  transition: opacity .35s ease-in-out
}

.res-menu-carousel .carousel .control-dots {
  position: absolute;
  bottom: 0;
  margin: 10px 0;
  text-align: center;
  width: 100%
}

@media (min-width: 960px) {
  .res-menu-carousel .carousel .control-dots {
    bottom: 0
  }
}

.res-menu-carousel .carousel .control-dots .dot {
  transition: opacity .25s ease-in;
  opacity: .3;
  filter: alpha(opacity=30);
  box-shadow: 1px 1px 2px rgba(0, 0, 0, .9);
  background: #fff;
  border-radius: 50%;
  width: 8px;
  height: 8px;
  cursor: pointer;
  display: inline-block;
  margin: 0 8px
}

.res-menu-carousel .carousel .control-dots .dot.selected, .res-menu-carousel .carousel .control-dots .dot:hover {
  opacity: 1;
  filter: alpha(opacity=100)
}

.res-menu-carousel .carousel .carousel-status {
  position: absolute;
  top: 0;
  right: 0;
  padding: 5px;
  font-size: 10px;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, .9);
  color: #fff
}

.res-menu-carousel .carousel:hover .slide .legend {
  opacity: 1
}

#modal-delivery-alert-MenuAlertModal {
  z-index: 1055 !important
}

#submitOrderConfirm div {
  white-space: pre-wrap
}

.menu-no-data {
  text-align: center
}

.menu-no-data .no-data-picture {
  width: 99px;
  height: 111px;
  -o-object-fit: contain;
  object-fit: contain
}

.menu-no-data .no-data-text {
  width: 100%;
  height: 40px;
  font-size: 17px;
  font-weight: 400;
  font-style: normal;
  font-stretch: normal;
  line-height: 1.41;
  letter-spacing: normal;
  color: #707070;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  text-align: center
}

.menu-no-data .no-data-text--bold {
  font-weight: 600;
  color: #333
}

#modal-order-fee {
  background-color: rgba(0, 0, 0, .3);
  color: #333
}

#modal-order-fee .modal-dialog {
  margin-top: 20vh
}

#modal-order-fee ::-webkit-scrollbar {
  width: 6px;
  background-color: #d8d8d8
}

#modal-order-fee ::-webkit-scrollbar-thumb {
  background: #acacac;
  border-radius: 2px
}

#modal-order-fee .modal-body {
  max-height: 450px;
  overflow-y: auto
}

#modal-order-fee .title {
  text-align: center;
  font-size: 16px;
  line-height: 22px;
  letter-spacing: .257143px;
  font-weight: 700;
  display: inline-block;
  padding: 16px 0 12px
}

#modal-order-fee .fee:not(:first-of-type) {
  margin-top: 15px
}

#modal-order-fee .fee {
  border-bottom: 1px solid #f2f2f2;
  padding-bottom: 8px
}

#modal-order-fee .fee p {
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 6px
}

#modal-order-fee .fee__name {
  width: 60%;
  font-size: 14px;
  line-height: 19px;
  color: #333
}

#modal-order-fee .fee__text {
  font-size: 12px;
  line-height: 16px;
  color: #999;
  mix-blend-mode: normal
}

#modal-order-fee .fee__text img {
  width: 14px
}

#modal-order-fee .fee__value {
  width: 40%;
  font-size: 14px;
  line-height: 19px;
  text-align: right;
  color: #333
}

#modal-order-fee .total {
  width: 100%;
  font-weight: 600;
  font-size: 16px;
  line-height: 22px;
  color: #333;
  display: inline-block;
  padding-top: 25px
}

#modal-order-fee .total__name {
  float: left
}

#modal-order-fee .total__value {
  float: right
}

.modal-order .modal-order-detail .modal-footer .submit-order {
  color: #fff;
  background-color: #0288d1
}

.modal-order .modal-footer .submit-order {
  font-size: 16px;
  font-weight: 700;
  display: block;
  padding: 10px 0;
  cursor: pointer;
  transition: all .2s ease;
  width: 100%;
  border-radius: 5px
}

.customMaker {
  width: 30px;
  position: relative;
  border-radius: 50%;
  border: 2px solid #6abd45
}

.customMaker img {
  max-width: 100% !important;
  border-radius: 50%
}

.customMaker:before {
  content: "";
  position: absolute;
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 11px 5px 0;
  border-color: #6abd45 transparent transparent;
  top: 100%;
  left: 50%;
  transform: translateX(-50%)
}

#popup-order-add-new-address {
  color: #0288d1;
  cursor: pointer
}

.modal-order-promo-code {
  font-size: 13px;
  padding-right: 17px
}

.modal-order-promo-code .modal-dialog {
  max-width: 885px;
  padding: 0
}

.modal-order-promo-code .modal-content {
  height: 600px
}

.modal-order-promo-code .modal-body {
  background: #ebebeb;
  padding: 0
}

.modal-order-promo-code .icon-now-promo-code {
  width: 32px;
  height: 32px;
  background: hsla(0, 0%, 7%, .56);
  border-radius: 50%;
  font-size: 32px;
  color: #fff
}

.modal-order-promo-code__title {
  padding: 10px 15px;
  font-size: 14px;
  font-weight: 600;
  color: #363636;
  background: #ebebeb
}

.modal-order-promo-code__container {
  background: #fff;
  padding: 0 15px
}

.modal-order-promo-code__row {
  display: -ms-flexbox;
  display: flex;
  font-size: .75rem;
  border-bottom: 1px solid #f0f0f0;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-flow: row wrap;
  flex-flow: row wrap;
  background: #fff
}

.modal-order-promo-code__row--head {
  font-size: 13px
}

.modal-order-promo-code__row--head .promo-code-table__cell {
  color: red;
  font-weight: 400
}

.modal-order-promo-code__cell {
  padding: 8px 5px;
  -ms-flex: 1 1;
  flex: 1 1;
  font-size: 14px
}

.modal-order-promo-code__cell--copy, .modal-order-promo-code__cell--icon {
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-preferred-size: 60px;
  flex-basis: 60px;
  -ms-flex-positive: 0;
  flex-grow: 0
}

.modal-order-promo-code__cell--copy {
  cursor: pointer
}

.modal-order-promo-code__cell--code {
  color: #111;
  font-weight: 600
}

.modal-order-promo-code__cell--code.expired {
  color: hsla(0, 0%, 7%, .56)
}

.modal-order-promo-code__cell--discount {
  color: #00a2d3;
  font-weight: 600
}

.modal-order-promo-code__cell--min-order {
  color: #363636;
  font-weight: 600
}

.modal-order-promo-code__cell--apply {
  text-align: right
}

.modal-order-promo-code__cell--apply > button {
  cursor: pointer;
  border-radius: 4px;
  width: 100px;
  background: #fff;
  border: 1px solid #5aa953;
  color: #5aa953
}

.modal-order-promo-code__cell--status {
  font-weight: 600
}

.modal-order-promo-code__cell--status.available {
  color: #4fa12e
}

.modal-order-promo-code__cell--status.expired {
  color: #b62a26
}

.modal-order-promo-code__cell--status.used {
  color: #6d6d64
}

.modal-order-promo-code__cell--action {
  cursor: pointer;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-preferred-size: 100px;
  flex-basis: 100px;
  -ms-flex-positive: 0;
  flex-grow: 0
}

.modal-order-promo-code__empty-code {
  padding: 10px 0
}

.landing-page-wrapper .banner-img {
  display: block;
  width: 100%
}

.landing-page-wrapper .title-nowship {
  font-size: 2.813rem;
  color: #cf2127;
  text-align: center;
  font-weight: 700;
  position: relative;
  padding-top: 21px;
  padding-bottom: 12px;
  margin-bottom: 35px
}

.landing-page-wrapper .title-nowship:after {
  content: "";
  width: 100px;
  height: 1px;
  background-color: #cf2127;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translate(-50%)
}

.landing-page-wrapper .title-nowship:before {
  content: "";
  width: 17px;
  height: 17px;
  background-color: #fff;
  border-radius: 50%;
  border: 1px solid #cf2127;
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translate(-50%, 50%);
  margin-bottom: 1px;
  z-index: 1
}

.landing-page-wrapper .title-block-nowship {
  color: #fff;
  font-size: 2.813rem;
  text-align: center;
  font-weight: 700;
  background-color: #cf2127;
  padding-top: 10px;
  padding-bottom: 15px
}

.landing-page-wrapper .nowship-list-policy {
  counter-reset: b;
  padding-top: 54px
}

.landing-page-wrapper .nowship-list-policy .policy-item {
  background-color: #ebebeb;
  margin-top: 170px;
  border-radius: 82px;
  padding: 39px 126px 45px;
  display: -ms-flexbox;
  display: flex
}

.landing-page-wrapper .nowship-list-policy .policy-item:first-child .policy-text {
  margin-left: 2rem
}

.landing-page-wrapper .nowship-list-policy .policy-item:nth-child(3) {
  margin-top: 200px
}

.landing-page-wrapper .nowship-list-policy .policy-text {
  counter-increment: b;
  position: relative;
  font-size: 1.875rem;
  line-height: 2.375rem;
  -ms-flex: 0 0 75%;
  flex: 0 0 75%;
  max-width: 75%
}

.landing-page-wrapper .nowship-list-policy .policy-text:before {
  content: counter(b) ".";
  font-weight: 700;
  font-size: 4.063rem;
  margin-right: .5rem;
  line-height: 1;
  position: absolute;
  top: 11px;
  left: -60px;
  letter-spacing: -2px
}

.landing-page-wrapper .nowship-list-policy .policy-text + .policy-img img {
  left: 50px
}

.landing-page-wrapper .nowship-list-policy .policy-img {
  position: relative;
  -ms-flex: 0 0 25%;
  flex: 0 0 25%;
  max-width: 25%
}

.landing-page-wrapper .nowship-list-policy .policy-img img {
  position: absolute;
  bottom: -15px;
  left: -75px
}

.landing-page-wrapper .nowship-question {
  margin-bottom: 30px
}

.landing-page-wrapper .nowship-question .card {
  border: 0
}

.landing-page-wrapper .nowship-question .card:nth-child(odd) .card-header {
  background-color: #ebebeb
}

.landing-page-wrapper .nowship-question .card-header {
  font-size: 1.875rem;
  text-align: center;
  border: 0;
  border-bottom: 1px solid #fff;
  cursor: pointer;
  background-color: #d7d7d7;
  position: relative
}

.landing-page-wrapper .nowship-question .card-header .fas {
  color: #6d6f71;
  font-size: 22px;
  position: absolute;
  right: 70px;
  top: 26px;
  transition: transform .2s ease
}

.landing-page-wrapper .nowship-question .card-header[aria-expanded=true] .fas {
  transform: rotate(180deg)
}

.landing-page-wrapper .nowship-question .card-body {
  font-size: 1.5rem
}

.map-incoming {
  position: relative;
  margin-bottom: 120px
}

.map-incoming .map-incoming-detail {
  height: 700px;
  height: calc(100vh - 160px)
}

.map-incoming .map-incoming-detail .customMaker {
  width: 50px;
  height: 50px;
  border: none
}

.map-incoming .map-incoming-detail .shipper-info .shipper-name {
  font-size: 16px;
  font-weight: 700
}

.map-incoming .map-incoming-detail .shipper-info .shipper-phone {
  font-size: 15px
}

.map-incoming .map-incoming-order {
  width: 1100px;
  height: 180px;
  background-color: #fff;
  border: 1px solid #cbcbcb;
  border-radius: 6px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding: 20px 50px;
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translate(-50%, -50%)
}

.map-incoming .map-incoming-order .incoming-countdown {
  position: absolute;
  left: 10px;
  border: 2px solid #0288d1;
  border-radius: 50%
}

.map-incoming .map-incoming-order .incoming-countdown .circle-rotate {
  margin: 0 auto;
  position: relative;
  width: 56px;
  height: 56px;
  background: transparent;
  animation: a 30s linear 0s infinite normal none
}

.map-incoming .map-incoming-order .incoming-countdown .circle {
  position: absolute;
  top: 4px;
  left: 3px;
  width: 8px;
  height: 8px;
  border-radius: 50%;
  border: 2px solid #fff;
  background: #0288d1
}

.map-incoming .map-incoming-order .incoming-countdown .incoming-time {
  color: #252525;
  font-weight: 700;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center
}

.map-incoming .map-incoming-order .incoming-countdown .incoming-time-type {
  text-transform: uppercase
}

.map-incoming .order-time {
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  width: 90px;
  max-width: none
}

.map-incoming .circle-time {
  text-align: center;
  font-size: 20px;
  color: #343434;
  font-weight: 700;
  width: 90px;
  height: 90px;
  border: 2px solid #1d93fb;
  border-radius: 50%;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-direction: column;
  flex-direction: column
}

.map-incoming .circle-time .unit {
  font-size: 15px;
  font-weight: 700;
  text-transform: uppercase;
  display: block;
  position: static;
  margin-top: -5px
}

.map-incoming .order-detail {
  -ms-flex-preferred-size: 0;
  flex-basis: 0;
  -ms-flex-positive: 1;
  flex-grow: 1;
  max-width: 100%;
  position: relative;
  padding-left: 30px;
  padding-right: 30px;
  overflow: hidden
}

.map-incoming .order-detail:after {
  content: "";
  position: absolute;
  top: 26px;
  bottom: 23px;
  left: 42px;
  z-index: 1;
  width: 15px;
  border: 1px dotted #707070;
  border-right: 0
}

.map-incoming .order-detail:before {
  content: "";
  position: absolute;
  top: 50%;
  left: 35px;
  z-index: 2;
  width: 16px;
  height: 32px;
  transform: translateY(-50%);
}

.map-incoming .order-detail-info {
  color: #343434;
  position: relative;
  padding-left: 85px
}

.map-incoming .order-detail-info:first-child {
  margin-bottom: 14px
}

.map-incoming .order-detail-info .icon {
  position: absolute;
  top: 3px;
  left: 33px
}

.map-incoming .order-detail-info .icon-restaurant {
  transform: scale(.9)
}

.map-incoming .order-detail-info .customMaker {
  height: 30px;
  border-width: 3px;
  top: 9px;
  left: 37px
}

.map-incoming .order-detail-info .customMaker:before {
  border-width: 10px 9px 0
}

.map-incoming .order-detail-name {
  font-weight: 700;
  font-size: 19px
}

.map-incoming .order-detail-address, .map-incoming .order-detail-name {
  padding-left: 5px;
  white-space: nowrap;
  max-width: 100%;
  overflow: hidden;
  text-overflow: ellipsis
}

.map-incoming .order-detail-address {
  font-size: 16px;
  font-style: italic
}

.map-incoming .order-status {
  font-size: 15px;
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  width: 31%;
  max-width: none;
  padding: 0 20px 0 60px;
  border-left: 1px solid #cbcbcb
}

.map-incoming .order-status .btn {
  font-size: 17px;
  font-weight: 700;
  height: 50px;
  background-color: #1592e6;
  border-color: #1592e6;
  margin-top: 15px;
  border-radius: 5px
}

.map-incoming .order-status .success {
  color: #6cc942
}

.map-incoming .order-status .failure {
  color: #cf2127
}

.map-incoming .order-status .icon {
  margin-left: 5px;
  padding-bottom: 2px
}

.map-incoming .status-row {
  margin-bottom: 5px;
  line-height: 20px
}

.free-ship {
  background: #f2f2f2;
  margin-top: -70px
}

.free-ship .icon-search {
  position: absolute;
  top: 30px;
  right: 420px
}

.free-ship__header {
  width: 100%;
  height: 80px;
  background-color: #fff
}

.free-ship__header__container {
  width: 1100px;
  margin-left: auto;
  margin-right: auto
}

.free-ship__header__container__logo {
  width: 120px;
  padding-top: 15px
}

.free-ship__header__container__logo__img {
  display: block;
  margin-left: auto;
  margin-right: auto
}

.free-ship__banner {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: center;
  justify-content: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 35px
}

.free-ship__condition {
  font-size: 26px;
  text-transform: uppercase;
  color: #58585a;
  text-align: center
}

.free-ship__condition:after {
  content: " ";
  display: block;
  margin: 5px auto 30px;
  width: 50px;
  height: 2px;
  background: #58585a;
  border-radius: 2px
}

.free-ship__container {
  height: 400px;
  width: 1200px;
  margin: 0 auto
}

.free-ship__container__section {
  margin: 0 20px 20px;
  background: #fff;
  padding: 25px 20px 35px;
  box-shadow: 2px 2px 4px 0 hsla(0, 0%, 71%, .2);
  border-radius: 3px;
  width: 30%;
  height: 340px;
  float: left
}

.free-ship__container__section__img {
  display: block;
  width: 180px;
  height: 180px;
  margin: 0 auto 40px
}

.free-ship__container__section__text {
  font-size: 16px;
  color: #3a3a3b
}

.free-ship__download {
  height: 550px;
  background-color: #fff
}

.free-ship__download__container {
  width: 1200px;
  margin-left: auto;
  margin-right: auto
}

.free-ship__download__container__inside {
  position: relative
}

.free-ship__download__container__inside__text {
  font-size: 26px;
  position: absolute;
  top: 225px;
  left: 620px;
  width: 280px;
  text-align: center
}

.free-ship__download__container__inside__phone {
  position: absolute;
  top: 45px;
  left: 250px
}

.free-ship__download__container__inside__phone__img {
  display: block;
  width: 306px;
  height: 500px
}

.free-ship__download__container__inside__logo {
  position: absolute;
  top: 90px;
  left: 700px
}

.free-ship__download__container__inside__iTune {
  position: absolute;
  top: 290px;
  left: 610px
}

.free-ship__download__container__inside__ggplay {
  position: absolute;
  top: 290px;
  left: 770px
}

.free-ship__download__container__inside__qrIOs {
  position: absolute;
  top: 370px;
  left: 633px
}

.free-ship__download__container__inside__qrAndroid {
  position: absolute;
  top: 370px;
  left: 790px
}

.promo-code {
  margin-top: 30px
}

.promo-code__title {
  font-size: 26px;
  color: #363636;
  font-weight: 700;
  margin-top: 30px
}

.promo-code__container {
  background: #fff;
  padding: 20px 15px
}

.promo-code__table {
  width: 100%
}

.promo-code-table {
  font-size: 13px;
  margin-top: 30px
}

.promo-code-table .icon-now-promo-code {
  width: 32px;
  height: 32px;
  background: hsla(0, 0%, 7%, .56);
  border-radius: 50%;
  font-size: 32px;
  color: #fff
}

.promo-code-table__row {
  display: -ms-flexbox;
  display: flex;
  font-size: .75rem;
  border-bottom: 1px solid #ebebeb;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-flow: row wrap;
  flex-flow: row wrap
}

.promo-code-table__row--head {
  font-size: 13px
}

.promo-code-table__row--head .promo-code-table__cell {
  color: red;
  font-weight: 400
}

.promo-code-table__cell {
  padding: 8px 5px;
  -ms-flex: 1 1;
  flex: 1 1;
  font-size: 14px
}

.promo-code-table__cell--copy, .promo-code-table__cell--icon {
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-preferred-size: 60px;
  flex-basis: 60px;
  -ms-flex-positive: 0;
  flex-grow: 0
}

.promo-code-table__cell--copy {
  cursor: pointer
}

.promo-code-table__cell--code {
  color: #111;
  font-weight: 600
}

.promo-code-table__cell--code.expired {
  color: hsla(0, 0%, 7%, .56)
}

.promo-code-table__cell--discount {
  color: #00a2d3;
  font-weight: 600
}

.promo-code-table__cell--status {
  font-weight: 600
}

.promo-code-table__cell--status.ready {
  color: #4fa12e
}

.promo-code-table__cell--status.expired {
  color: #b62a26
}

.promo-code-table__cell--status.used {
  color: #6d6d64
}

.promo-code-table__cell--action {
  cursor: pointer;
  -ms-flex-negative: 0;
  flex-shrink: 0;
  -ms-flex-preferred-size: 100px;
  flex-basis: 100px;
  -ms-flex-positive: 0;
  flex-grow: 0
}

.promo-code-table__no-data {
  color: #363636;
  font-weight: 600;
  font-size: 14px;
  text-align: center
}

.promo-code-detail .modal-dialog {
  width: 500px;
  padding-bottom: 20px
}

.promo-code-detail__title {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  width: 320px;
  -ms-flex-pack: justify;
  justify-content: space-between;
  border: 1.5px dashed #acacac;
  border-radius: 8px;
  margin: 0 auto 10px;
  font-size: 20px;
  color: #464646;
  padding: 10px 20px
}

.promo-code-detail__main-title {
  color: #00a2d3;
  font-size: 16px;
  font-weight: 600;
  text-align: center;
  margin-bottom: 30px
}

.promo-code-detail__main-title * {
  font-size: 16px !important;
  font-family: inherit !important
}

.promo-code-detail__remaining-quantity {
  margin-bottom: 10px;
  text-align: center
}

.promo-code-detail__code, .promo-code-detail__remaining-quantity > span {
  color: #4fa12e;
  font-weight: 600
}

.promo-code-detail__code {
  margin-left: 8px
}

.promo-code-detail__label {
  color: #252525;
  font-size: 18px;
  font-weight: 600
}

.promo-code-detail__text {
  font-size: 14px;
  color: #464646
}

.promo-code-detail__row {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: justify;
  justify-content: space-between;
  padding: 5px 0
}

.promo-code-detail__divider {
  width: 100%;
  height: 1px;
  background: #ebebeb;
  margin-top: 10px;
  margin-bottom: 10px
}

.promo-code-detail__content {
  white-space: pre-line
}

.promo-code-detail .icon-now-copy {
  cursor: pointer
}

.promo-code-detail .modal-header {
  text-align: center;
  font-weight: 600;
  font-size: 16px;
  -ms-flex-pack: center;
  justify-content: center;
  position: absolute;
  top: -38px;
  color: #fff;
  border: 0
}

.promo-code-detail .modal-footer {
  display: none
}

.collection-page-row {
  margin-top: 50px
}

.collection-page-row .card-address {
  color: #0288d1
}

.collection-page-row .card-img-top {
  border-top-left-radius: 5px;
  border-top-right-radius: 5px
}

.collection-page-row .card-address, .collection-page-row .card-name {
  font-size: 14px
}

.merchant-register {
  background-color: #fff
}

.merchant-register * {
  font-family: Shopee
}

.merchant-register .carousel .control-dots {
  padding-left: 0
}

.merchant-register__header {
  position: relative
}

.merchant-register__header--img {
  width: 100%;
  -o-object-fit: cover;
  object-fit: cover;
  z-index: 5
}

.merchant-register__header--overlay {
  background: #000;
  opacity: .45;
  z-index: 7;
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0
}

.merchant-register__header--content {
  position: absolute;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: end;
  justify-content: flex-end;
  z-index: 10;
  width: 100%
}

.merchant-register__header--content__sub-title, .merchant-register__header--content__title {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center
}

.merchant-register__header--content__title {
  font-size: 40px;
  color: #fff;
  margin-bottom: 8px;
  font-weight: 900
}

.merchant-register__header--content__sub-title {
  color: #fff;
  font-size: 20px;
  font-weight: 400;
  -o-object-fit: contain;
  object-fit: contain;
  margin-bottom: 8px;
  width: 100%
}

.merchant-register__body {
  padding-bottom: 10px
}

.merchant-register__body__block {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-align: center;
  align-items: center;
  width: 100%
}

.merchant-register__body__block.block-background-gray {
  background: #f3f3f3
}

.merchant-register__body__block.block-background-gray .merchant-register__body--separator {
  background: #fff !important
}

.merchant-register__body__block .merchant-register__nav {
  -ms-flex-pack: end;
  justify-content: end
}

.merchant-register__body--sub-title, .merchant-register__body--title {
  color: #ee4d2d;
  font-weight: 900;
  text-align: center;
  text-transform: uppercase
}

.merchant-register__body--separator {
  width: 118px;
  height: 6px;
  border-radius: 3px;
  background: #f3f3f3
}

.merchant-register__body--list {
  display: -ms-flexbox;
  display: flex;
  width: 100%
}

.merchant-register__body--item-title {
  padding: 10px 20px 0;
  font-weight: 700;
  color: #ee4d2d
}

.merchant-register__body--item-content {
  padding: 10px 20px 20px
}

.merchant-register__body--sign-contract-item {
  width: 378px;
  position: relative;
  padding-top: 70px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column
}

.merchant-register__body--sign-contract-item > img {
  position: absolute;
  height: 125px;
  top: 0;
  left: 50%;
  transform: translateX(-50%)
}

.merchant-register__body--sign-contract-item--content {
  -ms-flex: 1 1;
  flex: 1 1;
  background: #fff;
  border-radius: 20px;
  box-shadow: 0 0 22px 0 rgba(0, 0, 0, .04)
}

.merchant-register__body--sign-contract-item--content img {
  width: 100%;
  border-top-left-radius: 20px;
  border-top-right-radius: 20px
}

.merchant-register__body--block-online-register--subtitle-wrapper {
  width: 100%;
  text-align: center;
  padding-bottom: 20px
}

.merchant-register__body--block-online-register--extra-info {
  width: 100%;
  text-align: center
}

.merchant-register__body--block-online-register--extra-info--content {
  margin-top: 15px;
  font-style: italic
}

.merchant-register__body--online-register-icon-wrapper {
  position: relative;
  margin-bottom: 16px
}

.merchant-register__body--online-register-icon-wrapper--icon {
  height: 72px
}

.merchant-register__body--online-register-icon-wrapper--description {
  position: absolute;
  color: #fff;
  width: 100%;
  font-size: 25px;
  font-weight: 700
}

.merchant-register__body--testimonial-item {
  width: 376px;
  border-radius: 20px;
  box-shadow: 0 0 22px 0 rgba(0, 0, 0, .1);
  background-color: #fff;
  display: -ms-flexbox;
  display: flex
}

.merchant-register__body--testimonial-item > img {
  width: 110px;
  height: 110px;
  border-radius: 50%;
  margin-top: 46px;
  margin-left: 24px;
  margin-bottom: 20px;
  -o-object-fit: cover;
  object-fit: cover
}

.merchant-register__body--testimonial-item--content > img {
  height: 21px;
  width: 27px;
  margin-top: 9px;
  margin-left: 20px
}

.merchant-register__body--testimonial-item--content .merchant-register__body--item-title {
  text-transform: uppercase;
  font-weight: 800
}

.merchant-register__body--answer-question-block .merchant-register__body--title {
  text-transform: unset !important
}

.merchant-register__body--answer-question-block .merchant-register__body--list {
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-align: unset;
  align-items: unset;
  -ms-flex-pack: unset;
  justify-content: unset
}

.merchant-register__body--answer-question-item {
  background: #fff;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  border-radius: 10px;
  box-shadow: 0 0 22px 0 rgba(0, 0, 0, .1)
}

.merchant-register__body--answer-question-item--content {
  width: calc(100% - 50px)
}

.merchant-register__body--answer-question-item img {
  width: 25px;
  height: 25px;
  margin-right: 25px
}

.merchant-register__body--answer-question-item img:hover {
  cursor: pointer
}

.merchant-register__body--answer-question-item.show-more {
  min-height: 104px;
  height: auto !important
}

.merchant-register__body--answer-question-item.show-more img {
  transform: rotate(180deg)
}

.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content, .merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content > span > span, .merchant-register__body--answer-question-item.show-less .merchant-register__body--item-title {
  overflow: hidden;
  width: 100%;
  word-break: break-word;
  text-overflow: ellipsis;
  white-space: nowrap
}

.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content > span:first-child > span:not(:first-child), .merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content > span:not(:first-child) {
  display: none
}

.merchant-register__body--answer-question-item:not(:last-child) {
  margin-bottom: 10px
}

.merchant-register__nav {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center
}

.merchant-register__nav-item {
  margin-right: 30px
}

.merchant-register__nav-item div {
  width: 146px;
  height: 48px;
  background-size: cover
}

.merchant-register__nav-item:first-of-type {
  position: relative;
  width: 168px;
  height: 48px;
  border-radius: 8px;
  overflow: hidden
}

.merchant-register__nav-item:first-of-type div {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 170px;
  height: 55px
}

.merchant-register__nav-item-app-store-vi {
}

.merchant-register__nav-item-play-store-vi {
}

.merchant-register__nav-item-app-store-en {
}

.merchant-register__nav-item-play-store-en {
}

.merchant-register--btn {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  width: -moz-fit-content;
  width: fit-content;
  height: 48px;
  padding: 8px 24px 0;
  border-radius: 8px;
  text-align: center;
  text-transform: uppercase;
  background: #ee4d2d;
  color: #fff;
  cursor: pointer
}

.merchant-register--btn-wrapper {
  display: inline-block
}

.merchant-register--btn-register {
  line-height: 18px;
  font-size: 17px;
  font-weight: 700
}

.merchant-register--btn-download {
  font-size: 12px
}

.merchant-register__header--content {
  padding-bottom: 50px;
  top: 0;
  margin-top: 138px
}

.merchant-register__header--content__title {
  padding: 0 55px;
  margin-bottom: 25px
}

.merchant-register__header--content__sub-title {
  margin-bottom: 30px;
  padding: 0 55px
}

.merchant-register__body {
  padding: 48px 0 26px
}

.merchant-register__body--list {
  -ms-flex-pack: justify;
  justify-content: space-between;
  -ms-flex-align: stretch;
  align-items: stretch
}

.merchant-register__body--list > div {
  height: inherit
}

.merchant-register__body__block {
  padding: 32px calc((100% - 1200px) / 2) 34px
}

.merchant-register__body--separator {
  margin: 25px 0
}

.merchant-register__body--title {
  font-size: 36px;
  padding: 0 100px
}

.merchant-register__body--sub-title {
  font-size: 32px
}

.merchant-register__body--item-title {
  font-size: 18px
}

.merchant-register__body--block-online-register {
  padding: 32px calc((100% - 1200px) / 2 + 50px) 34px !important
}

.merchant-register__body--block-online-register--extra-info {
  text-align: right;
  margin-top: 20px
}

.merchant-register__body--block-online-register--extra-info--content {
  width: 500px;
  margin-left: auto
}

.merchant-register__body--online-register-icon-wrapper--description {
  top: 20px;
  left: 38px
}

.merchant-register__body--online-register-item {
  width: 350px;
  position: relative;
  padding-top: 90px;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column
}

.merchant-register__body--online-register-item > img {
  position: absolute;
  height: 120px;
  top: 0;
  left: 50%;
  transform: translateX(-50%)
}

.merchant-register__body--online-register-item--content {
  padding-top: 30px;
  border-radius: 10px;
  background-color: #f3f3f3;
  -ms-flex: 1 1;
  flex: 1 1
}

.merchant-register__body--answer-question-item {
  width: 100%;
  height: 104px !important
}

.merchant-register__body--answer-question-block--list-wrapper {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -ms-flex-align: stretch;
  align-items: stretch;
  width: 100%
}

.merchant-register__body--answer-question-block .merchant-register__body--list {
  width: calc(50% - 20px)
}

.merchant-register__body--answer-question-block .merchant-register__body--list:last-child {
  -ms-flex-align: center;
  align-items: center
}

@media screen and (max-width: 1200px) {
  .merchant-register__body--list {
    -ms-flex-direction: column;
    flex-direction: column;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: center;
    justify-content: center
  }

  .merchant-register__body--list > div:not(:last-child) {
    margin-bottom: 20px
  }

  .merchant-register__body--block-online-register--extra-info {
    text-align: center
  }

  .merchant-register__body--block-online-register--extra-info > * {
    margin-left: auto;
    margin-right: auto
  }

  .merchant-register__body--answer-question-block--list-wrapper {
    -ms-flex-direction: column;
    flex-direction: column;
    -ms-flex-align: center;
    align-items: center;
    -ms-flex-pack: center;
    justify-content: center
  }

  .merchant-register__body--answer-question-block--list-wrapper .merchant-register__body--list:not(last-child) {
    margin-bottom: 20px
  }
}

.modal-new-app .btn-logout {
  margin-left: 646px;
  margin-top: 5px;
  background-color: transparent;
  border: 0;
  color: #c2c2c2;
  cursor: pointer
}

.modal-new-app .btn-logout .icon-now-power-off {
  margin-left: 5px;
  margin-bottom: 6px;
  vertical-align: bottom;
  color: #0288d1 !important;
  font-weight: 700;
  font-size: 17px
}

.modal-new-app .align-items-center {
  border: 1px solid;
  border-color: #0288d1 !important;
  padding: 3px;
  margin-bottom: 7px;
  border-radius: 6px;
  color: #0288d1 !important;
  margin-right: 15px;
  margin-top: 10px
}

.fa-rating {
  color: #f4d516
}

.ic, span.text {
  display: inline-block;
  vertical-align: middle
}

.ic-add {
  background-position: -42px -137px;
  width: 36px;
  height: 36px
}

.ic-add, .ic-menu {
  background-size: 270px 177px
}

.ic-menu {
  background-position: -80px -137px;
  width: 30px;
  height: 30px
}

.ic-ocha-white {
  background-position: -204px -68px;
  width: 44px;
  height: 44px;
  background-size: 270px 177px
}

.ic-merchant-airpay {
  background-position: -136px -69px
}

.ic-merchant-airpay, .ic-merchant-marketing {
  width: 66px;
  height: 66px;
  background-size: 270px 177px
}

.ic-merchant-marketing {
  background-position: -204px 0
}

.ic-merchant-shipper {
  background-position: -68px -69px
}

.ic-merchant-shipper, .ic-merchant-system {
  width: 66px;
  height: 66px;
  background-size: 270px 177px
}

.ic-merchant-system {
  background-position: -136px 0
}

.ic-icon-box {
  background-position: 0 -69px;
  width: 66px;
  height: 66px;
  background-size: 270px 177px
}

.ic-icon-app-phone {
  background-position: 0 0
}

.ic-icon-app-phone, .ic-icon-money {
  width: 66px;
  height: 67px;
  background-size: 270px 177px
}

.ic-icon-money {
  background-position: -68px 0
}

.wrapper input[type=color], .wrapper input[type=date], .wrapper input[type=datetime-local], .wrapper input[type=datetime], .wrapper input[type=email], .wrapper input[type=month], .wrapper input[type=number], .wrapper input[type=password], .wrapper input[type=search], .wrapper input[type=tel], .wrapper input[type=text], .wrapper input[type=time], .wrapper input[type=url], .wrapper input[type=week], .wrapper select:focus, .wrapper textarea {
  font-size: 16px
}

.now-text {
  color: #d52f33;
  font-weight: 700
}

.is-active {
  display: block !important
}

#modal-sorry.modal-alert .modal-body {
  background-image: none
}

.now-loading-restautants {
  background-color: #fff
}

.item-navigation a.active {
  color: #cf2127
}

.item-navigation a {
  color: #464646
}

.table-row .pagination {
  margin: 0 auto
}

.input-field input.required-data {
  box-shadow: 0 1px 0 0 #cf2127;
  border-color: #cf2127
}

.input-field input.required-data + label {
  color: #cf2127
}

.link-button {
  color: #0f76a9;
  cursor: pointer
}

.now-loading-restaurant {
  background-color: #fff
}

input.required-data, select.required-data {
  border-color: #cf2127 !important;
  outline: none
}

.form-reg-app-merchant .input-group select {
  background-color: #f2f2f2;
  font-size: 14px;
  border: 1px solid #d7d7d7;
  border-radius: 4px;
  padding: 0 10px;
  margin-bottom: 0;
  height: 45px;
  width: 100%
}

.pac-container {
  z-index: 10000 !important
}

.mar-right10 {
  margin-right: 10px
}

.mar-top30 {
  margin-top: 30px
}

.mar-bottom30 {
  margin-bottom: 30px
}

.menu-restaurant-detail .promotions-order {
  display: block !important
}

.list-service .service-image i {
  display: block;
  margin: auto
}

.now-detail-restaurant .link-merchant {
  margin-bottom: 8px
}

.share-social-box {
  display: inline-block
}

.dropdown-menu .dropdown-item {
  position: relative
}

.now-bill-restaurant .cart-stats {
  border: 0
}

.user-profile-update .not-validate, .user-profile-update .validate {
  right: 10px !important;
  top: 5px !important;
  background: #fff
}

.padding-0 {
  padding: 0 !important
}

.navbar-default .navbar-nav > li {
  margin: 30px 9px
}

@media (max-width: 770px) {
  .navbar-default .navbar-nav > li {
    margin: 0
  }
}

.user-acc-admin{
  margin-right: 15px;
  color: #ee4d2d;
}
.user-acc-admin:hover{
  color: #f69987;
}

.wrapper-item{
  background-color: #f6f6f6;
}

.user-acc-img{
  width: 30px;
  height: 30px;
  border-radius: 50px;
  margin-right: 10px;
}
.user-acc-wr{
  display: flex;
}
.user-acc-contain{
  position: relative;
}
.user-acc-dropdown{
  position: absolute;
  background-color: #f7f7f7;
  width: 200px;
  padding: 10px 0 20px 20px;
  border-radius: 5px;
  display: none;
}
.user-acc-admin{
  display: block;
  margin-bottom: 15px;
}

.user-acc-contain:hover .user-acc-dropdown{
  display: block;
}

.user-acc-dropdown span:hover{
  cursor: pointer;
}

.user-acc-contain span:hover{
  cursor: pointer;
}

.nav-bar-cart:hover{
  cursor: pointer;
}
.nav-bar-cart{
  font-size: 20px;
  color: #525252;
  margin: 0 20px;
}
.cart-detail{
  position: absolute;
  width: 400px;
  max-height: 400px;
  left: -80px;
  background-color: #ffffff;
  display: none;
  border-radius: 5px;
  box-shadow: 5px 5px 8px #ddd;
  border: 1px solid #ddd;

}

.nav-bar-cart:hover .cart-detail{
  display: block;

}

.cart-detail:hover{
  cursor: default;
}
.cart-detail-span{
  display: block;
  font-size: 18px;
  font-weight: 300;
  padding: 10px 15px 10px 15px;
  border-bottom: 1px solid #ddd;
  margin-bottom: 10px;
}
.cart-detai-item{
  display: flex;
  padding:6px 15px;
  overflow: scroll-y;
}
.cart-detai-item:hover{
  cursor: pointer;
  background-color: #ededed;
}


.cart-detai-item img{
  width: 45px;
  height: 45px;
  display: block;
  margin-right: 10px;
  box-shadow: 3px 3px 3px #ddd;
}
.cart-detai-item span {
  display: block;
  font-size: 18px;
  color: #fe6333;
  transform: translateY(-5px);
}

.cart-detai-item-span{
  width: 240px;
  word-wrap: break-word;
}
.cart-detai-item span:last-child {
  position: absolute;
  right: 0;
  color: #fe6333;
  margin-right: 15px;
}
.cart-detail-btn{
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 15px 0 20px 0 ;
  border-top: 1px solid #ddd;
}
.cart-detai-item-container{
  margin-bottom: 90px;
}
.btn-cart{
  background-color: #fe6333;
  border: none;
  font-size: 18px;
}
.cart-detail-btn span{
  font-size: 18px;
  font-weight: 300;
  margin: 20px 65px 20px 20px;

}
.nocart-img{
  width: 400px;
  margin-bottom: 100px;
}
  
    .font15
    {
      font-size:15px;
    }
    .font14
    {
      font-size:14px;
    }
    :root{--blue:#0288d1;--blue-dark:#187caa;--red:#cf2127;--white:#fff;--gray:#959595;--gray-dark:#464646;--primary:#0288d1;--secondary:#959595;--success:#6cc942;--info:#0ccaff;--warning:#ffc107;--danger:red;--light:#ebebeb;--dark:#464646;--rebranding-primary:#ee4d2d;--breakpoint-xs:0;--breakpoint-sm:576px;--breakpoint-md:768px;--breakpoint-lg:992px;--breakpoint-xl:1200px;--font-family-sans-serif:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";--font-family-monospace:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace}*,:after,:before{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;-ms-overflow-style:scrollbar;-webkit-tap-highlight-color:rgba(0,0,0,0)}@-ms-viewport{width:device-width}article,aside,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}body{margin:0;font-family:Noto Sans,Arial,sans-serif;font-size:.875rem;font-weight:400;line-height:1.5;color:#464646;text-align:left;background-color:#f2f2f2}.wrapper{padding-top:70px}[tabindex="-1"]:focus{outline:0!important}hr{box-sizing:content-box;height:0;overflow:visible}h1,h2,h3,h4,h5,h6{margin-top:0;margin-bottom:.5rem}p{margin-top:0;margin-bottom:1rem}abbr[data-original-title],abbr[title]{text-decoration:underline;-webkit-text-decoration:underline dotted;text-decoration:underline dotted;cursor:help;border-bottom:0}address{font-style:normal;line-height:inherit}address,dl,ol,ul{margin-bottom:1rem}dl,ol,ul{margin-top:0}ol ol,ol ul,ul ol,ul ul{margin-bottom:0}dt{font-weight:700}dd{margin-bottom:.5rem;margin-left:0}blockquote{margin:0 0 1rem}dfn{font-style:italic}b,strong{font-weight:bolder}small{font-size:80%}sub,sup{position:relative;font-size:75%;line-height:0;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}a{color:#0288d1;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}a:hover{color:#015785}a:hover,a:not([href]):not([tabindex]),a:not([href]):not([tabindex]):focus,a:not([href]):not([tabindex]):hover{text-decoration:none}a:not([href]):not([tabindex]):focus{outline:0}code,kbd,pre,samp{font-family:SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace;font-size:1em}pre{margin-top:0;margin-bottom:1rem;overflow:auto;-ms-overflow-style:scrollbar}figure{margin:0 0 1rem}img{vertical-align:middle;border-style:none}svg:not(:root){overflow:hidden}table{border-collapse:collapse}caption{padding-top:.75rem;padding-bottom:.75rem;color:#959595;text-align:left;caption-side:bottom}th{text-align:inherit}label{display:inline-block;margin-bottom:.5rem}button{border-radius:0}button,input,optgroup,select,textarea{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button,select{text-transform:none}[type=reset],[type=submit],button,html [type=button]{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{padding:0;border-style:none}input[type=checkbox],input[type=radio]{box-sizing:border-box;padding:0}input[type=date],input[type=datetime-local],input[type=month],input[type=time]{-webkit-appearance:listbox}textarea{overflow:auto;resize:vertical}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;max-width:100%;padding:0;margin-bottom:.5rem;font-size:1.5rem;line-height:inherit;color:inherit;white-space:normal}progress{vertical-align:baseline}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{outline-offset:-2px;-webkit-appearance:none}[type=search]::-webkit-search-cancel-button,[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}output{display:inline-block}summary{display:list-item;cursor:pointer}template{display:none}.container,.container-fluid{width:1200px;margin-right:auto;margin-left:auto;height:100%}.row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-10px;margin-left:-10px}.no-gutters{margin-right:0;margin-left:0}.no-gutters>.col,.no-gutters>[class*=col-]{padding-right:0;padding-left:0}.col,.col-1,.col-2,.col-3,.col-4,.col-5,.col-6,.col-7,.col-8,.col-9,.col-10,.col-11,.col-12,.col-auto,.col-lg,.col-lg-1,.col-lg-2,.col-lg-3,.col-lg-4,.col-lg-5,.col-lg-6,.col-lg-7,.col-lg-8,.col-lg-9,.col-lg-10,.col-lg-11,.col-lg-12,.col-lg-auto,.col-md,.col-md-1,.col-md-2,.col-md-3,.col-md-4,.col-md-5,.col-md-6,.col-md-7,.col-md-8,.col-md-9,.col-md-10,.col-md-11,.col-md-12,.col-md-auto,.col-sm,.col-sm-1,.col-sm-2,.col-sm-3,.col-sm-4,.col-sm-5,.col-sm-6,.col-sm-7,.col-sm-8,.col-sm-9,.col-sm-10,.col-sm-11,.col-sm-12,.col-sm-auto,.col-xl,.col-xl-1,.col-xl-2,.col-xl-3,.col-xl-4,.col-xl-5,.col-xl-6,.col-xl-7,.col-xl-8,.col-xl-9,.col-xl-10,.col-xl-11,.col-xl-12,.col-xl-auto{position:relative;width:100%;min-height:1px;padding-right:10px;padding-left:10px;min-width:0}.col{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-1{-ms-flex:0 0 8.33333%;flex:0 0 8.33333%;max-width:8.33333%}.col-2{-ms-flex:0 0 16.66667%;flex:0 0 16.66667%;max-width:16.66667%}.col-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-4{-ms-flex:0 0 33.33333%;flex:0 0 33.33333%;max-width:33.33333%}.col-5{-ms-flex:0 0 41.66667%;flex:0 0 41.66667%;max-width:41.66667%}.col-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-7{-ms-flex:0 0 58.33333%;flex:0 0 58.33333%;max-width:58.33333%}.col-8{-ms-flex:0 0 66.66667%;flex:0 0 66.66667%;max-width:66.66667%}.col-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-10{-ms-flex:0 0 83.33333%;flex:0 0 83.33333%;max-width:83.33333%}.col-11{-ms-flex:0 0 91.66667%;flex:0 0 91.66667%;max-width:91.66667%}.col-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-first{-ms-flex-order:-1;order:-1}.order-last{-ms-flex-order:13;order:13}.order-0{-ms-flex-order:0;order:0}.order-1{-ms-flex-order:1;order:1}.order-2{-ms-flex-order:2;order:2}.order-3{-ms-flex-order:3;order:3}.order-4{-ms-flex-order:4;order:4}.order-5{-ms-flex-order:5;order:5}.order-6{-ms-flex-order:6;order:6}.order-7{-ms-flex-order:7;order:7}.order-8{-ms-flex-order:8;order:8}.order-9{-ms-flex-order:9;order:9}.order-10{-ms-flex-order:10;order:10}.order-11{-ms-flex-order:11;order:11}.order-12{-ms-flex-order:12;order:12}.offset-1{margin-left:8.33333%}.offset-2{margin-left:16.66667%}.offset-3{margin-left:25%}.offset-4{margin-left:33.33333%}.offset-5{margin-left:41.66667%}.offset-6{margin-left:50%}.offset-7{margin-left:58.33333%}.offset-8{margin-left:66.66667%}.offset-9{margin-left:75%}.offset-10{margin-left:83.33333%}.offset-11{margin-left:91.66667%}@media (min-width:576px){.col-sm{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-sm-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-sm-1{-ms-flex:0 0 8.33333%;flex:0 0 8.33333%;max-width:8.33333%}.col-sm-2{-ms-flex:0 0 16.66667%;flex:0 0 16.66667%;max-width:16.66667%}.col-sm-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-sm-4{-ms-flex:0 0 33.33333%;flex:0 0 33.33333%;max-width:33.33333%}.col-sm-5{-ms-flex:0 0 41.66667%;flex:0 0 41.66667%;max-width:41.66667%}.col-sm-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-sm-7{-ms-flex:0 0 58.33333%;flex:0 0 58.33333%;max-width:58.33333%}.col-sm-8{-ms-flex:0 0 66.66667%;flex:0 0 66.66667%;max-width:66.66667%}.col-sm-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-sm-10{-ms-flex:0 0 83.33333%;flex:0 0 83.33333%;max-width:83.33333%}.col-sm-11{-ms-flex:0 0 91.66667%;flex:0 0 91.66667%;max-width:91.66667%}.col-sm-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-sm-first{-ms-flex-order:-1;order:-1}.order-sm-last{-ms-flex-order:13;order:13}.order-sm-0{-ms-flex-order:0;order:0}.order-sm-1{-ms-flex-order:1;order:1}.order-sm-2{-ms-flex-order:2;order:2}.order-sm-3{-ms-flex-order:3;order:3}.order-sm-4{-ms-flex-order:4;order:4}.order-sm-5{-ms-flex-order:5;order:5}.order-sm-6{-ms-flex-order:6;order:6}.order-sm-7{-ms-flex-order:7;order:7}.order-sm-8{-ms-flex-order:8;order:8}.order-sm-9{-ms-flex-order:9;order:9}.order-sm-10{-ms-flex-order:10;order:10}.order-sm-11{-ms-flex-order:11;order:11}.order-sm-12{-ms-flex-order:12;order:12}.offset-sm-0{margin-left:0}.offset-sm-1{margin-left:8.33333%}.offset-sm-2{margin-left:16.66667%}.offset-sm-3{margin-left:25%}.offset-sm-4{margin-left:33.33333%}.offset-sm-5{margin-left:41.66667%}.offset-sm-6{margin-left:50%}.offset-sm-7{margin-left:58.33333%}.offset-sm-8{margin-left:66.66667%}.offset-sm-9{margin-left:75%}.offset-sm-10{margin-left:83.33333%}.offset-sm-11{margin-left:91.66667%}}@media (min-width:768px){.col-md{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-md-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-md-1{-ms-flex:0 0 8.33333%;flex:0 0 8.33333%;max-width:8.33333%}.col-md-2{-ms-flex:0 0 16.66667%;flex:0 0 16.66667%;max-width:16.66667%}.col-md-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-md-4{-ms-flex:0 0 33.33333%;flex:0 0 33.33333%;max-width:33.33333%}.col-md-5{-ms-flex:0 0 41.66667%;flex:0 0 41.66667%;max-width:41.66667%}.col-md-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-md-7{-ms-flex:0 0 58.33333%;flex:0 0 58.33333%;max-width:58.33333%}.col-md-8{-ms-flex:0 0 66.66667%;flex:0 0 66.66667%;max-width:66.66667%}.col-md-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-md-10{-ms-flex:0 0 83.33333%;flex:0 0 83.33333%;max-width:83.33333%}.col-md-11{-ms-flex:0 0 91.66667%;flex:0 0 91.66667%;max-width:91.66667%}.col-md-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-md-first{-ms-flex-order:-1;order:-1}.order-md-last{-ms-flex-order:13;order:13}.order-md-0{-ms-flex-order:0;order:0}.order-md-1{-ms-flex-order:1;order:1}.order-md-2{-ms-flex-order:2;order:2}.order-md-3{-ms-flex-order:3;order:3}.order-md-4{-ms-flex-order:4;order:4}.order-md-5{-ms-flex-order:5;order:5}.order-md-6{-ms-flex-order:6;order:6}.order-md-7{-ms-flex-order:7;order:7}.order-md-8{-ms-flex-order:8;order:8}.order-md-9{-ms-flex-order:9;order:9}.order-md-10{-ms-flex-order:10;order:10}.order-md-11{-ms-flex-order:11;order:11}.order-md-12{-ms-flex-order:12;order:12}.offset-md-0{margin-left:0}.offset-md-1{margin-left:8.33333%}.offset-md-2{margin-left:16.66667%}.offset-md-3{margin-left:25%}.offset-md-4{margin-left:33.33333%}.offset-md-5{margin-left:41.66667%}.offset-md-6{margin-left:50%}.offset-md-7{margin-left:58.33333%}.offset-md-8{margin-left:66.66667%}.offset-md-9{margin-left:75%}.offset-md-10{margin-left:83.33333%}.offset-md-11{margin-left:91.66667%}}@media (min-width:992px){.col-lg{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-lg-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-lg-1{-ms-flex:0 0 8.33333%;flex:0 0 8.33333%;max-width:8.33333%}.col-lg-2{-ms-flex:0 0 16.66667%;flex:0 0 16.66667%;max-width:16.66667%}.col-lg-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-lg-4{-ms-flex:0 0 33.33333%;flex:0 0 33.33333%;max-width:33.33333%}.col-lg-5{-ms-flex:0 0 41.66667%;flex:0 0 41.66667%;max-width:41.66667%}.col-lg-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-lg-7{-ms-flex:0 0 58.33333%;flex:0 0 58.33333%;max-width:58.33333%}.col-lg-8{-ms-flex:0 0 66.66667%;flex:0 0 66.66667%;max-width:66.66667%}.col-lg-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-lg-10{-ms-flex:0 0 83.33333%;flex:0 0 83.33333%;max-width:83.33333%}.col-lg-11{-ms-flex:0 0 91.66667%;flex:0 0 91.66667%;max-width:91.66667%}.col-lg-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-lg-first{-ms-flex-order:-1;order:-1}.order-lg-last{-ms-flex-order:13;order:13}.order-lg-0{-ms-flex-order:0;order:0}.order-lg-1{-ms-flex-order:1;order:1}.order-lg-2{-ms-flex-order:2;order:2}.order-lg-3{-ms-flex-order:3;order:3}.order-lg-4{-ms-flex-order:4;order:4}.order-lg-5{-ms-flex-order:5;order:5}.order-lg-6{-ms-flex-order:6;order:6}.order-lg-7{-ms-flex-order:7;order:7}.order-lg-8{-ms-flex-order:8;order:8}.order-lg-9{-ms-flex-order:9;order:9}.order-lg-10{-ms-flex-order:10;order:10}.order-lg-11{-ms-flex-order:11;order:11}.order-lg-12{-ms-flex-order:12;order:12}.offset-lg-0{margin-left:0}.offset-lg-1{margin-left:8.33333%}.offset-lg-2{margin-left:16.66667%}.offset-lg-3{margin-left:25%}.offset-lg-4{margin-left:33.33333%}.offset-lg-5{margin-left:41.66667%}.offset-lg-6{margin-left:50%}.offset-lg-7{margin-left:58.33333%}.offset-lg-8{margin-left:66.66667%}.offset-lg-9{margin-left:75%}.offset-lg-10{margin-left:83.33333%}.offset-lg-11{margin-left:91.66667%}}@media (min-width:1200px){.col-xl{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%}.col-xl-auto{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none}.col-xl-1{-ms-flex:0 0 8.33333%;flex:0 0 8.33333%;max-width:8.33333%}.col-xl-2{-ms-flex:0 0 16.66667%;flex:0 0 16.66667%;max-width:16.66667%}.col-xl-3{-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.col-xl-4{-ms-flex:0 0 33.33333%;flex:0 0 33.33333%;max-width:33.33333%}.col-xl-5{-ms-flex:0 0 41.66667%;flex:0 0 41.66667%;max-width:41.66667%}.col-xl-6{-ms-flex:0 0 50%;flex:0 0 50%;max-width:50%}.col-xl-7{-ms-flex:0 0 58.33333%;flex:0 0 58.33333%;max-width:58.33333%}.col-xl-8{-ms-flex:0 0 66.66667%;flex:0 0 66.66667%;max-width:66.66667%}.col-xl-9{-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.col-xl-10{-ms-flex:0 0 83.33333%;flex:0 0 83.33333%;max-width:83.33333%}.col-xl-11{-ms-flex:0 0 91.66667%;flex:0 0 91.66667%;max-width:91.66667%}.col-xl-12{-ms-flex:0 0 100%;flex:0 0 100%;max-width:100%}.order-xl-first{-ms-flex-order:-1;order:-1}.order-xl-last{-ms-flex-order:13;order:13}.order-xl-0{-ms-flex-order:0;order:0}.order-xl-1{-ms-flex-order:1;order:1}.order-xl-2{-ms-flex-order:2;order:2}.order-xl-3{-ms-flex-order:3;order:3}.order-xl-4{-ms-flex-order:4;order:4}.order-xl-5{-ms-flex-order:5;order:5}.order-xl-6{-ms-flex-order:6;order:6}.order-xl-7{-ms-flex-order:7;order:7}.order-xl-8{-ms-flex-order:8;order:8}.order-xl-9{-ms-flex-order:9;order:9}.order-xl-10{-ms-flex-order:10;order:10}.order-xl-11{-ms-flex-order:11;order:11}.order-xl-12{-ms-flex-order:12;order:12}.offset-xl-0{margin-left:0}.offset-xl-1{margin-left:8.33333%}.offset-xl-2{margin-left:16.66667%}.offset-xl-3{margin-left:25%}.offset-xl-4{margin-left:33.33333%}.offset-xl-5{margin-left:41.66667%}.offset-xl-6{margin-left:50%}.offset-xl-7{margin-left:58.33333%}.offset-xl-8{margin-left:66.66667%}.offset-xl-9{margin-left:75%}.offset-xl-10{margin-left:83.33333%}.offset-xl-11{margin-left:91.66667%}}.form-control{display:block;width:100%;padding:.23rem .6rem;font-size:.875rem;line-height:1.5;color:#6d6f71;background-color:#fff;background-clip:padding-box;border:1px solid #d7d7d7;border-radius:3px;transition:border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media screen and (prefers-reduced-motion:reduce){.form-control{transition:none}}.form-control::-ms-expand{background-color:transparent;border:0}.form-control:focus{color:#6d6f71;background-color:#fff;border-color:#959595;outline:0;box-shadow:none}.form-control::-webkit-input-placeholder{color:#959595;opacity:1}.form-control::-ms-input-placeholder{color:#959595;opacity:1}.form-control::placeholder{color:#959595;opacity:1}.form-control:disabled,.form-control[readonly]{background-color:#f2f2f2;opacity:1}select.form-control:not([size]):not([multiple]){height:calc(1.7725rem + 2px)}select.form-control:focus::-ms-value{color:#6d6f71;background-color:#fff}.form-control-file,.form-control-range{display:block;width:100%}.col-form-label{padding-top:calc(.23rem + 1px);padding-bottom:calc(.23rem + 1px);margin-bottom:0;font-size:inherit;line-height:1.5}.col-form-label-lg{padding-top:calc(.3rem + 1px);padding-bottom:calc(.3rem + 1px);font-size:1.05rem;line-height:1.5}.col-form-label-sm{padding-top:calc(.29rem + 1px);padding-bottom:calc(.29rem + 1px);font-size:.813rem;line-height:1.5}.form-control-plaintext{display:block;width:100%;padding-top:.23rem;padding-bottom:.23rem;margin-bottom:0;line-height:1.5;color:#464646;background-color:transparent;border:solid transparent;border-width:1px 0}.form-control-plaintext.form-control-lg,.form-control-plaintext.form-control-sm,.input-group-lg>.form-control-plaintext.form-control,.input-group-lg>.input-group-append>.form-control-plaintext.btn,.input-group-lg>.input-group-append>.form-control-plaintext.input-group-text,.input-group-lg>.input-group-prepend>.form-control-plaintext.btn,.input-group-lg>.input-group-prepend>.form-control-plaintext.input-group-text,.input-group-sm>.form-control-plaintext.form-control,.input-group-sm>.input-group-append>.form-control-plaintext.btn,.input-group-sm>.input-group-append>.form-control-plaintext.input-group-text,.input-group-sm>.input-group-prepend>.form-control-plaintext.btn,.input-group-sm>.input-group-prepend>.form-control-plaintext.input-group-text{padding-right:0;padding-left:0}.form-control-sm,.input-group-sm>.form-control,.input-group-sm>.input-group-append>.btn,.input-group-sm>.input-group-append>.input-group-text,.input-group-sm>.input-group-prepend>.btn,.input-group-sm>.input-group-prepend>.input-group-text{padding:.29rem .7rem;font-size:.813rem;line-height:1.5;border-radius:.2rem}.input-group-sm>.input-group-append>select.btn:not([size]):not([multiple]),.input-group-sm>.input-group-append>select.input-group-text:not([size]):not([multiple]),.input-group-sm>.input-group-prepend>select.btn:not([size]):not([multiple]),.input-group-sm>.input-group-prepend>select.input-group-text:not([size]):not([multiple]),.input-group-sm>select.form-control:not([size]):not([multiple]),select.form-control-sm:not([size]):not([multiple]){height:calc(1.7995rem + 2px)}.form-control-lg,.input-group-lg>.form-control,.input-group-lg>.input-group-append>.btn,.input-group-lg>.input-group-append>.input-group-text,.input-group-lg>.input-group-prepend>.btn,.input-group-lg>.input-group-prepend>.input-group-text{padding:.3rem 1rem;font-size:1.05rem;line-height:1.5;border-radius:.3rem}.input-group-lg>.input-group-append>select.btn:not([size]):not([multiple]),.input-group-lg>.input-group-append>select.input-group-text:not([size]):not([multiple]),.input-group-lg>.input-group-prepend>select.btn:not([size]):not([multiple]),.input-group-lg>.input-group-prepend>select.input-group-text:not([size]):not([multiple]),.input-group-lg>select.form-control:not([size]):not([multiple]),select.form-control-lg:not([size]):not([multiple]){height:calc(2.175rem + 2px)}.form-group{margin-bottom:1rem}.form-text{display:block;margin-top:.25rem}.form-row{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;margin-right:-5px;margin-left:-5px}.form-row>.col,.form-row>[class*=col-]{padding-right:5px;padding-left:5px}.form-check{position:relative;display:block;padding-left:1.25rem}.form-check-input{position:absolute;margin-top:.3rem;margin-left:-1.25rem}.form-check-input:disabled~.form-check-label{color:#959595}.form-check-label{margin-bottom:0}.form-check-inline{display:-ms-inline-flexbox;display:inline-flex;-ms-flex-align:center;align-items:center;padding-left:0;margin-right:.75rem}.form-check-inline .form-check-input{position:static;margin-top:0;margin-right:.3125rem;margin-left:0}.valid-feedback{display:none;width:100%;margin-top:.25rem;font-size:.75rem;color:#6cc942}.valid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.5rem;margin-top:.1rem;font-size:.875rem;line-height:1;color:#fff;background-color:rgba(108,201,66,.8);border-radius:.2rem}.custom-select.is-valid,.form-control.is-valid,.was-validated .custom-select:valid,.was-validated .form-control:valid{border-color:#6cc942}.custom-select.is-valid:focus,.form-control.is-valid:focus,.was-validated .custom-select:valid:focus,.was-validated .form-control:valid:focus{border-color:#6cc942;box-shadow:0 0 0 .2rem rgba(108,201,66,.25)}.custom-select.is-valid~.valid-feedback,.custom-select.is-valid~.valid-tooltip,.form-control-file.is-valid~.valid-feedback,.form-control-file.is-valid~.valid-tooltip,.form-control.is-valid~.valid-feedback,.form-control.is-valid~.valid-tooltip,.was-validated .custom-select:valid~.valid-feedback,.was-validated .custom-select:valid~.valid-tooltip,.was-validated .form-control-file:valid~.valid-feedback,.was-validated .form-control-file:valid~.valid-tooltip,.was-validated .form-control:valid~.valid-feedback,.was-validated .form-control:valid~.valid-tooltip{display:block}.form-check-input.is-valid~.form-check-label,.was-validated .form-check-input:valid~.form-check-label{color:#6cc942}.form-check-input.is-valid~.valid-feedback,.form-check-input.is-valid~.valid-tooltip,.was-validated .form-check-input:valid~.valid-feedback,.was-validated .form-check-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid~.custom-control-label,.was-validated .custom-control-input:valid~.custom-control-label{color:#6cc942}.custom-control-input.is-valid~.custom-control-label:before,.was-validated .custom-control-input:valid~.custom-control-label:before{background-color:#b9e5a5}.custom-control-input.is-valid~.valid-feedback,.custom-control-input.is-valid~.valid-tooltip,.was-validated .custom-control-input:valid~.valid-feedback,.was-validated .custom-control-input:valid~.valid-tooltip{display:block}.custom-control-input.is-valid:checked~.custom-control-label:before,.was-validated .custom-control-input:valid:checked~.custom-control-label:before{background-color:#8bd46a}.custom-control-input.is-valid:focus~.custom-control-label:before,.was-validated .custom-control-input:valid:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(108,201,66,.25)}.custom-file-input.is-valid~.custom-file-label,.was-validated .custom-file-input:valid~.custom-file-label{border-color:#6cc942}.custom-file-input.is-valid~.custom-file-label:before,.was-validated .custom-file-input:valid~.custom-file-label:before{border-color:inherit}.custom-file-input.is-valid~.valid-feedback,.custom-file-input.is-valid~.valid-tooltip,.was-validated .custom-file-input:valid~.valid-feedback,.was-validated .custom-file-input:valid~.valid-tooltip{display:block}.custom-file-input.is-valid:focus~.custom-file-label,.was-validated .custom-file-input:valid:focus~.custom-file-label{box-shadow:0 0 0 .2rem rgba(108,201,66,.25)}.invalid-feedback{display:none;width:100%;margin-top:.25rem;font-size:.75rem;color:red}.invalid-tooltip{position:absolute;top:100%;z-index:5;display:none;max-width:100%;padding:.5rem;margin-top:.1rem;font-size:.875rem;line-height:1;color:#fff;background-color:rgba(255,0,0,.8);border-radius:.2rem}.custom-select.is-invalid,.form-control.is-invalid,.was-validated .custom-select:invalid,.was-validated .form-control:invalid{border-color:red}.custom-select.is-invalid:focus,.form-control.is-invalid:focus,.was-validated .custom-select:invalid:focus,.was-validated .form-control:invalid:focus{border-color:red;box-shadow:0 0 0 .2rem rgba(255,0,0,.25)}.custom-select.is-invalid~.invalid-feedback,.custom-select.is-invalid~.invalid-tooltip,.form-control-file.is-invalid~.invalid-feedback,.form-control-file.is-invalid~.invalid-tooltip,.form-control.is-invalid~.invalid-feedback,.form-control.is-invalid~.invalid-tooltip,.was-validated .custom-select:invalid~.invalid-feedback,.was-validated .custom-select:invalid~.invalid-tooltip,.was-validated .form-control-file:invalid~.invalid-feedback,.was-validated .form-control-file:invalid~.invalid-tooltip,.was-validated .form-control:invalid~.invalid-feedback,.was-validated .form-control:invalid~.invalid-tooltip{display:block}.form-check-input.is-invalid~.form-check-label,.was-validated .form-check-input:invalid~.form-check-label{color:red}.form-check-input.is-invalid~.invalid-feedback,.form-check-input.is-invalid~.invalid-tooltip,.was-validated .form-check-input:invalid~.invalid-feedback,.was-validated .form-check-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid~.custom-control-label,.was-validated .custom-control-input:invalid~.custom-control-label{color:red}.custom-control-input.is-invalid~.custom-control-label:before,.was-validated .custom-control-input:invalid~.custom-control-label:before{background-color:#ff8080}.custom-control-input.is-invalid~.invalid-feedback,.custom-control-input.is-invalid~.invalid-tooltip,.was-validated .custom-control-input:invalid~.invalid-feedback,.was-validated .custom-control-input:invalid~.invalid-tooltip{display:block}.custom-control-input.is-invalid:checked~.custom-control-label:before,.was-validated .custom-control-input:invalid:checked~.custom-control-label:before{background-color:#f33}.custom-control-input.is-invalid:focus~.custom-control-label:before,.was-validated .custom-control-input:invalid:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(255,0,0,.25)}.custom-file-input.is-invalid~.custom-file-label,.was-validated .custom-file-input:invalid~.custom-file-label{border-color:red}.custom-file-input.is-invalid~.custom-file-label:before,.was-validated .custom-file-input:invalid~.custom-file-label:before{border-color:inherit}.custom-file-input.is-invalid~.invalid-feedback,.custom-file-input.is-invalid~.invalid-tooltip,.was-validated .custom-file-input:invalid~.invalid-feedback,.was-validated .custom-file-input:invalid~.invalid-tooltip{display:block}.custom-file-input.is-invalid:focus~.custom-file-label,.was-validated .custom-file-input:invalid:focus~.custom-file-label{box-shadow:0 0 0 .2rem rgba(255,0,0,.25)}.form-inline{display:-ms-flexbox;display:flex;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center;align-items:center}.form-inline .form-check{width:100%}@media (min-width:576px){.form-inline label{-ms-flex-align:center;-ms-flex-pack:center;justify-content:center}.form-inline .form-group,.form-inline label{display:-ms-flexbox;display:flex;align-items:center;margin-bottom:0}.form-inline .form-group{-ms-flex:0 0 auto;flex:0 0 auto;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-align:center}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-plaintext{display:inline-block}.form-inline .custom-select,.form-inline .input-group{width:auto}.form-inline .form-check{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;width:auto;padding-left:0}.form-inline .form-check-input{position:relative;margin-top:0;margin-right:.25rem;margin-left:0}.form-inline .custom-control{-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.form-inline .custom-control-label{margin-bottom:0}}.custom-checkbox label{padding-left:25px;position:relative;cursor:pointer;display:inline-block;height:25px;line-height:25px;-webkit-user-select:none;-moz-user-select:none;-khtml-user-select:none;-ms-user-select:none;margin:0}.custom-checkbox label:before{content:"";position:absolute;top:2px;left:0;width:18px;height:18px;z-index:0;border:1px solid #9e9e9e;border-radius:1px;margin-top:2px;transition:.2s}.custom-checkbox input{position:absolute;left:-99px;visibility:hidden}.custom-checkbox [type=checkbox]:checked+label:after{content:"";position:absolute;top:5px;left:0;width:8px;height:13px;border-top:2px solid transparent;border-left:2px solid transparent;border-right:2px solid #cf2127;border-bottom:2px solid #cf2127;transform:rotate(40deg);-webkit-backface-visibility:hidden;transform-origin:100% 100%}.custom-checkbox.green [type=checkbox]:checked+label:before{background-color:#329900;border-color:#329900;border-radius:5px}.custom-checkbox.green [type=checkbox]:checked+label:after{border-right-color:#fff;border-bottom-color:#fff;top:7px;width:8px;height:11px}.custom-checkbox.orangen [type=checkbox]:checked+label:before{background-color:#f37934;border-color:#f37934}.custom-checkbox.orangen [type=checkbox]:checked+label:after{border-right-color:#fff;border-bottom-color:#fff}.custom-checkbox.right label{padding-left:0;padding-right:25px}.custom-checkbox.right label:before{left:auto;right:0}.custom-checkbox.right [type=checkbox]:checked+label:after{left:auto;right:10px}.custom-radio label{font-size:14px}.custom-radio [type=radio]:checked,.custom-radio [type=radio]:not(:checked){position:absolute;left:-9999px;visibility:hidden}.custom-radio [type=radio]:checked+label,.custom-radio [type=radio]:not(:checked)+label{position:relative;padding-left:30px;cursor:pointer;display:inline-block;height:25px;line-height:25px;transition:.28s ease;-webkit-user-select:none;-moz-user-select:none;-khtml-user-select:none;-ms-user-select:none;margin-bottom:0}.custom-radio [type=radio]:not(:checked)+label:before{border-radius:50%;border:2px solid #464646}.custom-radio [type=radio]+label:after,.custom-radio [type=radio]+label:before{content:"";position:absolute;left:0;top:1px;margin:4px;width:16px;height:16px;z-index:0;transition:.28s ease}.custom-radio [type=radio]:not(:checked)+label:after{border-radius:50%;border:2px solid #464646;z-index:-1;transform:scale(0)}.custom-radio [type=radio]:checked+label:before{border-radius:50%;border:2px solid #cf2127}.custom-radio [type=radio]:checked+label:after{border-radius:50%;border:2px solid #cf2127;background-color:#cf2127;z-index:0;transform:scale(.5)}.custom-radio.right [type=radio]:checked+label,.custom-radio.right [type=radio]:not(:checked)+label{padding-left:0;padding-right:30px}.custom-radio.right [type=radio]+label:after,.custom-radio.right [type=radio]+label:before{left:auto;right:0}.custom-radio.blue [type=radio]:checked+label:after{background-color:#0288d1;border-color:#0288d1}.custom-radio.blue [type=radio]:checked+label:before{border-color:#0288d1}.custom-radio.orangen [type=radio]:checked+label:after{background-color:#f37934;border-color:#f37934}.custom-radio.orangen [type=radio]:checked+label:before{border-color:#f37934}.custom-radio.check-green [type=radio]:checked~label:before,.custom-radio.check-green [type=radio]~label:before{background-color:transparent;border:0}.custom-radio.check-green [type=radio]+label:after{border-radius:0;background-color:transparent;transition:none}.custom-radio.check-green [type=radio]:checked+label:after{position:absolute;width:13px;height:20px;border-top:4px solid transparent;border-left:4px solid transparent;border-right:4px solid #43a047;border-bottom:4px solid #43a047;transform:rotate(40deg) scale(1);-webkit-backface-visibility:hidden;transform-origin:100% 100%;border-radius:0 5px 2px 5px}.custom-radio.check-green [type=radio]:checked+label:before{border-color:#0288d1}.custom-control{position:relative;display:block;min-height:1.5rem;padding-left:1.5rem}.custom-control-inline{display:-ms-inline-flexbox;display:inline-flex;margin-right:1rem}.custom-control-input{position:absolute;z-index:-1;opacity:0}.custom-control-input:checked~.custom-control-label:before{color:#fff;background-color:#0288d1}.custom-control-input:focus~.custom-control-label:before{box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(2,136,209,.25)}.custom-control-input:active~.custom-control-label:before{color:#fff;background-color:#88d4fe}.custom-control-input:disabled~.custom-control-label{color:#959595}.custom-control-input:disabled~.custom-control-label:before{background-color:#f2f2f2}.custom-control-label{position:relative;margin-bottom:0}.custom-control-label:before{pointer-events:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-color:#ebebeb}.custom-control-label:after,.custom-control-label:before{position:absolute;top:.25rem;left:-1.5rem;display:block;width:1rem;height:1rem;content:""}.custom-control-label:after{background-repeat:no-repeat;background-position:50%;background-size:50% 50%}.custom-checkbox .custom-control-label:before{border-radius:3px}.custom-checkbox .custom-control-input:checked~.custom-control-label:before{background-color:#0288d1}.custom-checkbox .custom-control-input:checked~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 8 8'%3E%3Cpath fill='%23fff' d='M6.564.75l-3.59 3.612-1.538-1.55L0 4.26 2.974 7.25 8 2.193z'/%3E%3C/svg%3E")}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label:before{background-color:#0288d1}.custom-checkbox .custom-control-input:indeterminate~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 4'%3E%3Cpath stroke='%23fff' d='M0 2h4'/%3E%3C/svg%3E")}.custom-checkbox .custom-control-input:disabled:checked~.custom-control-label:before{background-color:rgba(2,136,209,.5)}.custom-checkbox .custom-control-input:disabled:indeterminate~.custom-control-label:before{background-color:rgba(2,136,209,.5)}.custom-radio .custom-control-label:before{border-radius:50%}.custom-radio .custom-control-input:checked~.custom-control-label:before{background-color:#0288d1}.custom-radio .custom-control-input:checked~.custom-control-label:after{background-image:url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3E%3Ccircle r='3' fill='%23fff'/%3E%3C/svg%3E")}.custom-radio .custom-control-input:disabled:checked~.custom-control-label:before{background-color:rgba(2,136,209,.5)}.custom-select{display:inline-block;width:100%;height:calc(1.7725rem + 2px);padding:.375rem 1.75rem .375rem .75rem;line-height:1em;color:#6d6f71;vertical-align:middle;background:#fff url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23464646' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E") no-repeat right .75rem center;background-size:8px 10px;border:1px solid #d7d7d7;border-radius:3px;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-select:focus{border-color:#959595;outline:0;box-shadow:inset 0 1px 2px rgba(0,0,0,.075),0 0 5px hsla(0,0%,58%,.5)}.custom-select:focus::-ms-value{color:#6d6f71;background-color:#fff}.custom-select[multiple],.custom-select[size]:not([size="1"]){height:auto;padding-right:.75rem;background-image:none}.custom-select:disabled{color:#959595;background-color:#f2f2f2}.custom-select::-ms-expand{opacity:0}.custom-select-sm{height:calc(1.7995rem + 2px);font-size:75%}.custom-select-lg,.custom-select-sm{padding-top:.375rem;padding-bottom:.375rem}.custom-select-lg{height:calc(2.175rem + 2px);font-size:125%}.custom-file{display:inline-block;margin-bottom:0}.custom-file,.custom-file-input{position:relative;width:100%;height:calc(1.7725rem + 2px)}.custom-file-input{z-index:2;margin:0;opacity:0}.custom-file-input:focus~.custom-file-label{border-color:#959595;box-shadow:0 0 0 .2rem rgba(2,136,209,.25)}.custom-file-input:focus~.custom-file-label:after{border-color:#959595}.custom-file-input:lang(en)~.custom-file-label:after{content:"Browse"}.custom-file-label{left:0;z-index:1;height:calc(1.7725rem + 2px);background-color:#fff;border:1px solid #d7d7d7;border-radius:3px}.custom-file-label,.custom-file-label:after{position:absolute;top:0;right:0;padding:.23rem .6rem;line-height:1.5;color:#6d6f71}.custom-file-label:after{bottom:0;z-index:3;display:block;height:1.7725rem;content:"Browse";background-color:#f2f2f2;border-left:1px solid #d7d7d7;border-radius:0 3px 3px 0}.custom-file-image .label-custom{color:#000;font-size:14px;cursor:pointer;background-color:#ebebeb;text-transform:capitalize;padding:3px 18px 4px;border-radius:3px;margin-bottom:0;margin-right:10px}.custom-range{width:100%;padding-left:0;background-color:transparent;-webkit-appearance:none;-moz-appearance:none;appearance:none}.custom-range:focus{outline:none}.custom-range::-moz-focus-outer{border:0}.custom-range::-webkit-slider-thumb{width:1rem;height:1rem;margin-top:-.25rem;background-color:#0288d1;border:0;border-radius:1rem;-webkit-appearance:none;appearance:none}.custom-range::-webkit-slider-thumb:focus{outline:none;box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(2,136,209,.25)}.custom-range::-webkit-slider-thumb:active{background-color:#88d4fe}.custom-range::-webkit-slider-runnable-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#ebebeb;border-color:transparent;border-radius:1rem}.custom-range::-moz-range-thumb{width:1rem;height:1rem;background-color:#0288d1;border:0;border-radius:1rem;-moz-appearance:none;appearance:none}.custom-range::-moz-range-thumb:focus{outline:none;box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(2,136,209,.25)}.custom-range::-moz-range-thumb:active{background-color:#88d4fe}.custom-range::-moz-range-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:#ebebeb;border-color:transparent;border-radius:1rem}.custom-range::-ms-thumb{width:1rem;height:1rem;background-color:#0288d1;border:0;border-radius:1rem;appearance:none}.custom-range::-ms-thumb:focus{outline:none;box-shadow:0 0 0 1px #f2f2f2,0 0 0 .2rem rgba(2,136,209,.25)}.custom-range::-ms-thumb:active{background-color:#88d4fe}.custom-range::-ms-track{width:100%;height:.5rem;color:transparent;cursor:pointer;background-color:transparent;border-color:transparent;border-width:.5rem}.custom-range::-ms-fill-lower,.custom-range::-ms-fill-upper{background-color:#ebebeb;border-radius:1rem}.custom-range::-ms-fill-upper{margin-right:15px}.input-group{position:relative;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-align:stretch;align-items:stretch;width:100%}.input-group>.custom-file,.input-group>.custom-select,.input-group>.form-control{position:relative;-ms-flex:1 1 auto;flex:1 1 auto;width:1%;margin-bottom:0}.input-group>.custom-file+.custom-file,.input-group>.custom-file+.custom-select,.input-group>.custom-file+.form-control,.input-group>.custom-select+.custom-file,.input-group>.custom-select+.custom-select,.input-group>.custom-select+.form-control,.input-group>.form-control+.custom-file,.input-group>.form-control+.custom-select,.input-group>.form-control+.form-control{margin-left:-1px}.input-group>.custom-file .custom-file-input:focus~.custom-file-label,.input-group>.custom-select:focus,.input-group>.form-control:focus{z-index:3}.input-group>.custom-select:not(:last-child),.input-group>.form-control:not(:last-child){border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-select:not(:first-child),.input-group>.form-control:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.input-group>.custom-file{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.input-group>.custom-file:not(:last-child) .custom-file-label,.input-group>.custom-file:not(:last-child) .custom-file-label:after{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.custom-file:not(:first-child) .custom-file-label{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-append,.input-group-prepend{display:-ms-flexbox;display:flex}.input-group-append .btn,.input-group-prepend .btn{position:relative;z-index:2}.input-group-append .btn+.btn,.input-group-append .btn+.input-group-text,.input-group-append .input-group-text+.btn,.input-group-append .input-group-text+.input-group-text,.input-group-prepend .btn+.btn,.input-group-prepend .btn+.input-group-text,.input-group-prepend .input-group-text+.btn,.input-group-prepend .input-group-text+.input-group-text{margin-left:-1px}.input-group-prepend{margin-right:-1px}.input-group-append{margin-left:-1px}.input-group-text{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:.23rem .6rem;margin-bottom:0;font-size:.875rem;font-weight:400;line-height:1.5;color:#6d6f71;text-align:center;white-space:nowrap;background-color:#f2f2f2;border:1px solid #d7d7d7;border-radius:3px}.input-group-text input[type=checkbox],.input-group-text input[type=radio]{margin-top:0}.input-group>.input-group-append:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group>.input-group-append:last-child>.input-group-text:not(:last-child),.input-group>.input-group-append:not(:last-child)>.btn,.input-group>.input-group-append:not(:last-child)>.input-group-text,.input-group>.input-group-prepend>.btn,.input-group>.input-group-prepend>.input-group-text{border-top-right-radius:0;border-bottom-right-radius:0}.input-group>.input-group-append>.btn,.input-group>.input-group-append>.input-group-text,.input-group>.input-group-prepend:first-child>.btn:not(:first-child),.input-group>.input-group-prepend:first-child>.input-group-text:not(:first-child),.input-group>.input-group-prepend:not(:first-child)>.btn,.input-group>.input-group-prepend:not(:first-child)>.input-group-text{border-top-left-radius:0;border-bottom-left-radius:0}.input-field{position:relative;margin-top:15px;margin-bottom:20px}.input-field input{border-radius:0;border:0;border-bottom:1px solid;padding-left:0;height:45px}.input-field input:focus{box-shadow:0 1px 0 0 #cf2127;border-color:#cf2127}.input-field input:focus+label{color:#cf2127}.input-field label{font-size:12px;color:#959595;position:absolute;top:-12px;left:11px;cursor:text;margin-bottom:0}.btn-group,.btn-group-vertical{position:relative;display:-ms-inline-flexbox;display:inline-flex;vertical-align:middle}.btn-group-vertical>.btn,.btn-group>.btn{position:relative;-ms-flex:0 1 auto;flex:0 1 auto}.btn-group-vertical>.btn.active,.btn-group-vertical>.btn:active,.btn-group-vertical>.btn:focus,.btn-group-vertical>.btn:hover,.btn-group>.btn.active,.btn-group>.btn:active,.btn-group>.btn:focus,.btn-group>.btn:hover{z-index:1}.btn-group-vertical .btn+.btn,.btn-group-vertical .btn+.btn-group,.btn-group-vertical .btn-group+.btn,.btn-group-vertical .btn-group+.btn-group,.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-pack:start;justify-content:flex-start}.btn-toolbar .input-group{width:auto}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn-group:not(:last-child)>.btn,.btn-group>.btn:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:not(:first-child)>.btn,.btn-group>.btn:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.dropdown-toggle-split{padding-right:.45rem;padding-left:.45rem}.dropdown-toggle-split:after,.dropright .dropdown-toggle-split:after,.dropup .dropdown-toggle-split:after{margin-left:0}.dropleft .dropdown-toggle-split:before{margin-right:0}.btn-group-sm>.btn+.dropdown-toggle-split,.btn-sm+.dropdown-toggle-split{padding-right:.525rem;padding-left:.525rem}.btn-group-lg>.btn+.dropdown-toggle-split,.btn-lg+.dropdown-toggle-split{padding-right:.75rem;padding-left:.75rem}.btn-group-vertical{-ms-flex-direction:column;flex-direction:column;-ms-flex-align:start;align-items:flex-start;-ms-flex-pack:center;justify-content:center}.btn-group-vertical .btn,.btn-group-vertical .btn-group{width:100%}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn-group:not(:last-child)>.btn,.btn-group-vertical>.btn:not(:last-child):not(.dropdown-toggle){border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:not(:first-child)>.btn,.btn-group-vertical>.btn:not(:first-child){border-top-left-radius:0;border-top-right-radius:0}.btn-group-toggle>.btn,.btn-group-toggle>.btn-group>.btn{margin-bottom:0}.btn-group-toggle>.btn-group>.btn input[type=checkbox],.btn-group-toggle>.btn-group>.btn input[type=radio],.btn-group-toggle>.btn input[type=checkbox],.btn-group-toggle>.btn input[type=radio]{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.btn{color:#fff;background-color:#0288d1;display:inline-block;font-weight:400;text-align:center;white-space:nowrap;vertical-align:middle;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;border:1px solid #0288d1;border-radius:6px;padding:.23rem .6rem;font-size:.875rem;line-height:1.5;border-radius:3px;transition:color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out}@media screen and (prefers-reduced-motion:reduce){.btn{transition:none}}.btn:focus,.btn:hover{text-decoration:none}.btn.focus,.btn:focus{outline:0}.btn.disabled,.btn:disabled{opacity:.9}.btn:not(:disabled):not(.disabled){cursor:pointer}.btn:not(:disabled):not(.disabled).active,.btn:not(:disabled):not(.disabled):active{background-image:none}a.btn.disabled,fieldset:disabled a.btn{pointer-events:none}.btn-primary{color:#fff;background-color:#0288d1;border-color:#0288d1}.btn-primary:hover{color:#fff;background-color:#026fab;border-color:#02679e}.btn-primary.focus,.btn-primary:focus{box-shadow:0 0 0 .2rem rgba(2,136,209,.5)}.btn-primary.disabled,.btn-primary:disabled{color:#fff;background-color:#0288d1;border-color:#0288d1}.btn-primary:not(:disabled):not(.disabled).active,.btn-primary:not(:disabled):not(.disabled):active,.show>.btn-primary.dropdown-toggle{color:#fff;background-color:#02679e;border-color:#015f92}.btn-primary:not(:disabled):not(.disabled).active:focus,.btn-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(2,136,209,.5)}.btn-secondary{color:#fff;background-color:#959595;border-color:#959595}.btn-secondary:hover{color:#fff;background-color:#828282;border-color:#7c7c7c}.btn-secondary.focus,.btn-secondary:focus{box-shadow:0 0 0 .2rem hsla(0,0%,58%,.5)}.btn-secondary.disabled,.btn-secondary:disabled{color:#fff;background-color:#959595;border-color:#959595}.btn-secondary:not(:disabled):not(.disabled).active,.btn-secondary:not(:disabled):not(.disabled):active,.show>.btn-secondary.dropdown-toggle{color:#fff;background-color:#7c7c7c;border-color:#757575}.btn-secondary:not(:disabled):not(.disabled).active:focus,.btn-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem hsla(0,0%,58%,.5)}.btn-success{color:#252525;background-color:#6cc942;border-color:#6cc942}.btn-success:hover{color:#fff;background-color:#5ab233;border-color:#55a830}.btn-success.focus,.btn-success:focus{box-shadow:0 0 0 .2rem rgba(108,201,66,.5)}.btn-success.disabled,.btn-success:disabled{color:#252525;background-color:#6cc942;border-color:#6cc942}.btn-success:not(:disabled):not(.disabled).active,.btn-success:not(:disabled):not(.disabled):active,.show>.btn-success.dropdown-toggle{color:#fff;background-color:#55a830;border-color:#509e2d}.btn-success:not(:disabled):not(.disabled).active:focus,.btn-success:not(:disabled):not(.disabled):active:focus,.show>.btn-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,201,66,.5)}.btn-info{color:#252525;background-color:#0ccaff;border-color:#0ccaff}.btn-info:hover{color:#fff;background-color:#00b3e5;border-color:#00a9d8}.btn-info.focus,.btn-info:focus{box-shadow:0 0 0 .2rem rgba(12,202,255,.5)}.btn-info.disabled,.btn-info:disabled{color:#252525;background-color:#0ccaff;border-color:#0ccaff}.btn-info:not(:disabled):not(.disabled).active,.btn-info:not(:disabled):not(.disabled):active,.show>.btn-info.dropdown-toggle{color:#fff;background-color:#00a9d8;border-color:#009fcb}.btn-info:not(:disabled):not(.disabled).active:focus,.btn-info:not(:disabled):not(.disabled):active:focus,.show>.btn-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(12,202,255,.5)}.btn-warning{color:#252525;background-color:#ffc107;border-color:#ffc107}.btn-warning:hover{color:#252525;background-color:#e0a800;border-color:#d39e00}.btn-warning.focus,.btn-warning:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-warning.disabled,.btn-warning:disabled{color:#252525;background-color:#ffc107;border-color:#ffc107}.btn-warning:not(:disabled):not(.disabled).active,.btn-warning:not(:disabled):not(.disabled):active,.show>.btn-warning.dropdown-toggle{color:#252525;background-color:#d39e00;border-color:#c69500}.btn-warning:not(:disabled):not(.disabled).active:focus,.btn-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-danger{color:#fff;background-color:red;border-color:red}.btn-danger:hover{color:#fff;background-color:#d90000;border-color:#c00}.btn-danger.focus,.btn-danger:focus{box-shadow:0 0 0 .2rem rgba(255,0,0,.5)}.btn-danger.disabled,.btn-danger:disabled{color:#fff;background-color:red;border-color:red}.btn-danger:not(:disabled):not(.disabled).active,.btn-danger:not(:disabled):not(.disabled):active,.show>.btn-danger.dropdown-toggle{color:#fff;background-color:#c00;border-color:#bf0000}.btn-danger:not(:disabled):not(.disabled).active:focus,.btn-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,0,0,.5)}.btn-light{color:#252525;background-color:#ebebeb;border-color:#ebebeb}.btn-light:hover{color:#252525;background-color:#d8d8d8;border-color:#d2d2d2}.btn-light.focus,.btn-light:focus{box-shadow:0 0 0 .2rem hsla(0,0%,92%,.5)}.btn-light.disabled,.btn-light:disabled{color:#252525;background-color:#ebebeb;border-color:#ebebeb}.btn-light:not(:disabled):not(.disabled).active,.btn-light:not(:disabled):not(.disabled):active,.show>.btn-light.dropdown-toggle{color:#252525;background-color:#d2d2d2;border-color:#cbcbcb}.btn-light:not(:disabled):not(.disabled).active:focus,.btn-light:not(:disabled):not(.disabled):active:focus,.show>.btn-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem hsla(0,0%,92%,.5)}.btn-dark{color:#fff;background-color:#464646;border-color:#464646}.btn-dark:hover{color:#fff;background-color:#333;border-color:#2d2d2d}.btn-dark.focus,.btn-dark:focus{box-shadow:0 0 0 .2rem rgba(70,70,70,.5)}.btn-dark.disabled,.btn-dark:disabled{color:#fff;background-color:#464646;border-color:#464646}.btn-dark:not(:disabled):not(.disabled).active,.btn-dark:not(:disabled):not(.disabled):active,.show>.btn-dark.dropdown-toggle{color:#fff;background-color:#2d2d2d;border-color:#262626}.btn-dark:not(:disabled):not(.disabled).active:focus,.btn-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(70,70,70,.5)}.btn-rebranding-primary{color:#fff;background-color:#ee4d2d;border-color:#ee4d2d}.btn-rebranding-primary:hover{color:#fff;background-color:#e23512;border-color:#d73211}.btn-rebranding-primary.focus,.btn-rebranding-primary:focus{box-shadow:0 0 0 .2rem rgba(238,77,45,.5)}.btn-rebranding-primary.disabled,.btn-rebranding-primary:disabled{color:#fff;background-color:#ee4d2d;border-color:#ee4d2d}.btn-rebranding-primary:not(:disabled):not(.disabled).active,.btn-rebranding-primary:not(:disabled):not(.disabled):active,.show>.btn-rebranding-primary.dropdown-toggle{color:#fff;background-color:#d73211;border-color:#cb2f10}.btn-rebranding-primary:not(:disabled):not(.disabled).active:focus,.btn-rebranding-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-rebranding-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(238,77,45,.5)}.btn-outline-primary{color:#0288d1;background-color:transparent;background-image:none;border-color:#0288d1}.btn-outline-primary:hover{color:#fff;background-color:#0288d1;border-color:#0288d1}.btn-outline-primary.focus,.btn-outline-primary:focus{box-shadow:0 0 0 .2rem rgba(2,136,209,.5)}.btn-outline-primary.disabled,.btn-outline-primary:disabled{color:#0288d1;background-color:transparent}.btn-outline-primary:not(:disabled):not(.disabled).active,.btn-outline-primary:not(:disabled):not(.disabled):active,.show>.btn-outline-primary.dropdown-toggle{color:#fff;background-color:#0288d1;border-color:#0288d1}.btn-outline-primary:not(:disabled):not(.disabled).active:focus,.btn-outline-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(2,136,209,.5)}.btn-outline-secondary{color:#959595;background-color:transparent;background-image:none;border-color:#959595}.btn-outline-secondary:hover{color:#fff;background-color:#959595;border-color:#959595}.btn-outline-secondary.focus,.btn-outline-secondary:focus{box-shadow:0 0 0 .2rem hsla(0,0%,58%,.5)}.btn-outline-secondary.disabled,.btn-outline-secondary:disabled{color:#959595;background-color:transparent}.btn-outline-secondary:not(:disabled):not(.disabled).active,.btn-outline-secondary:not(:disabled):not(.disabled):active,.show>.btn-outline-secondary.dropdown-toggle{color:#fff;background-color:#959595;border-color:#959595}.btn-outline-secondary:not(:disabled):not(.disabled).active:focus,.btn-outline-secondary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-secondary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem hsla(0,0%,58%,.5)}.btn-outline-success{color:#6cc942;background-color:transparent;background-image:none;border-color:#6cc942}.btn-outline-success:hover{color:#252525;background-color:#6cc942;border-color:#6cc942}.btn-outline-success.focus,.btn-outline-success:focus{box-shadow:0 0 0 .2rem rgba(108,201,66,.5)}.btn-outline-success.disabled,.btn-outline-success:disabled{color:#6cc942;background-color:transparent}.btn-outline-success:not(:disabled):not(.disabled).active,.btn-outline-success:not(:disabled):not(.disabled):active,.show>.btn-outline-success.dropdown-toggle{color:#252525;background-color:#6cc942;border-color:#6cc942}.btn-outline-success:not(:disabled):not(.disabled).active:focus,.btn-outline-success:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-success.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(108,201,66,.5)}.btn-outline-info{color:#0ccaff;background-color:transparent;background-image:none;border-color:#0ccaff}.btn-outline-info:hover{color:#252525;background-color:#0ccaff;border-color:#0ccaff}.btn-outline-info.focus,.btn-outline-info:focus{box-shadow:0 0 0 .2rem rgba(12,202,255,.5)}.btn-outline-info.disabled,.btn-outline-info:disabled{color:#0ccaff;background-color:transparent}.btn-outline-info:not(:disabled):not(.disabled).active,.btn-outline-info:not(:disabled):not(.disabled):active,.show>.btn-outline-info.dropdown-toggle{color:#252525;background-color:#0ccaff;border-color:#0ccaff}.btn-outline-info:not(:disabled):not(.disabled).active:focus,.btn-outline-info:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-info.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(12,202,255,.5)}.btn-outline-warning{color:#ffc107;background-color:transparent;background-image:none;border-color:#ffc107}.btn-outline-warning:hover{color:#252525;background-color:#ffc107;border-color:#ffc107}.btn-outline-warning.focus,.btn-outline-warning:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-outline-warning.disabled,.btn-outline-warning:disabled{color:#ffc107;background-color:transparent}.btn-outline-warning:not(:disabled):not(.disabled).active,.btn-outline-warning:not(:disabled):not(.disabled):active,.show>.btn-outline-warning.dropdown-toggle{color:#252525;background-color:#ffc107;border-color:#ffc107}.btn-outline-warning:not(:disabled):not(.disabled).active:focus,.btn-outline-warning:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-warning.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,193,7,.5)}.btn-outline-danger{color:red;background-color:transparent;background-image:none;border-color:red}.btn-outline-danger:hover{color:#fff;background-color:red;border-color:red}.btn-outline-danger.focus,.btn-outline-danger:focus{box-shadow:0 0 0 .2rem rgba(255,0,0,.5)}.btn-outline-danger.disabled,.btn-outline-danger:disabled{color:red;background-color:transparent}.btn-outline-danger:not(:disabled):not(.disabled).active,.btn-outline-danger:not(:disabled):not(.disabled):active,.show>.btn-outline-danger.dropdown-toggle{color:#fff;background-color:red;border-color:red}.btn-outline-danger:not(:disabled):not(.disabled).active:focus,.btn-outline-danger:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-danger.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(255,0,0,.5)}.btn-outline-light{color:#ebebeb;background-color:transparent;background-image:none;border-color:#ebebeb}.btn-outline-light:hover{color:#252525;background-color:#ebebeb;border-color:#ebebeb}.btn-outline-light.focus,.btn-outline-light:focus{box-shadow:0 0 0 .2rem hsla(0,0%,92%,.5)}.btn-outline-light.disabled,.btn-outline-light:disabled{color:#ebebeb;background-color:transparent}.btn-outline-light:not(:disabled):not(.disabled).active,.btn-outline-light:not(:disabled):not(.disabled):active,.show>.btn-outline-light.dropdown-toggle{color:#252525;background-color:#ebebeb;border-color:#ebebeb}.btn-outline-light:not(:disabled):not(.disabled).active:focus,.btn-outline-light:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-light.dropdown-toggle:focus{box-shadow:0 0 0 .2rem hsla(0,0%,92%,.5)}.btn-outline-dark{color:#464646;background-color:transparent;background-image:none;border-color:#464646}.btn-outline-dark:hover{color:#fff;background-color:#464646;border-color:#464646}.btn-outline-dark.focus,.btn-outline-dark:focus{box-shadow:0 0 0 .2rem rgba(70,70,70,.5)}.btn-outline-dark.disabled,.btn-outline-dark:disabled{color:#464646;background-color:transparent}.btn-outline-dark:not(:disabled):not(.disabled).active,.btn-outline-dark:not(:disabled):not(.disabled):active,.show>.btn-outline-dark.dropdown-toggle{color:#fff;background-color:#464646;border-color:#464646}.btn-outline-dark:not(:disabled):not(.disabled).active:focus,.btn-outline-dark:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-dark.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(70,70,70,.5)}.btn-outline-rebranding-primary{color:#ee4d2d;background-color:transparent;background-image:none;border-color:#ee4d2d}.btn-outline-rebranding-primary:hover{color:#fff;background-color:#ee4d2d;border-color:#ee4d2d}.btn-outline-rebranding-primary.focus,.btn-outline-rebranding-primary:focus{box-shadow:0 0 0 .2rem rgba(238,77,45,.5)}.btn-outline-rebranding-primary.disabled,.btn-outline-rebranding-primary:disabled{color:#ee4d2d;background-color:transparent}.btn-outline-rebranding-primary:not(:disabled):not(.disabled).active,.btn-outline-rebranding-primary:not(:disabled):not(.disabled):active,.show>.btn-outline-rebranding-primary.dropdown-toggle{color:#fff;background-color:#ee4d2d;border-color:#ee4d2d}.btn-outline-rebranding-primary:not(:disabled):not(.disabled).active:focus,.btn-outline-rebranding-primary:not(:disabled):not(.disabled):active:focus,.show>.btn-outline-rebranding-primary.dropdown-toggle:focus{box-shadow:0 0 0 .2rem rgba(238,77,45,.5)}.btn-link{font-weight:400;color:#0288d1;background-color:transparent}.btn-link:hover{color:#015785;text-decoration:none;background-color:transparent;border-color:transparent}.btn-link.focus,.btn-link:focus{text-decoration:none;border-color:transparent;box-shadow:none}.btn-link.disabled,.btn-link:disabled{color:#959595;pointer-events:none}.btn-group-lg>.btn,.btn-lg{padding:.3rem 1rem;font-size:1.05rem;line-height:1.5;border-radius:.3rem}.btn-group-sm>.btn,.btn-sm{padding:.29rem .7rem;font-size:.813rem;line-height:1.5;border-radius:.2rem}.btn-block{display:block;width:100%}input[type=button].btn-block,input[type=reset].btn-block,input[type=submit].btn-block{width:100%}.btn-down-app{color:#fff;font-weight:700;background-color:#ee4d2d;border-color:#ee4d2d;padding:7px 9px 7px 10px;border-radius:6px}.btn-down-app .fab{font-size:16px;font-weight:400;margin-left:9px}.btn-none-bg{color:#0288d1;background-color:transparent;transition:.1s ease}.btn-none-bg:hover{color:#fff;background-color:#0288d1}.btn-none{color:#0288d1;background-color:transparent;border:0}.btn-search{display:inline-block;background-color:#0288d1}.btn-chat{display:inline-block;background-color:#007aff;background-image:url(/app/assets/img/chat2x.png?27af48d4e855f418757f7029b668ccc7);background-position:16px 3px;background-size:18px;background-repeat:no-repeat}.btn-chat:active{background-image:url(/app/assets/img/chat2x.png?27af48d4e855f418757f7029b668ccc7)!important}.btn-delete-tag{line-height:10px;font-size:12px;cursor:pointer;position:absolute;top:-6px;right:-7px;color:#f2f2f2;background-color:#6d6f71;border-radius:50%;text-align:center;width:12px;height:12px}.btn-over{font-size:12px;padding:2px 10px;background-color:#959595}.btn-adding,.btn-over{text-align:center;color:#fff;display:inline-block;border-radius:4px}.btn-adding{font-size:20px;cursor:pointer;font-weight:700;line-height:20px;width:22px;height:22px;background-color:#ee4d2d}.btn-adding.disable{background-color:#6d6f71}.btn-adding:hover{background-color:#e37f68}.btn-sub{font-size:20px;color:#fff;cursor:pointer;font-weight:700;text-align:center;line-height:22px;width:22px;height:22px;border-radius:4px;background-color:#959595;display:inline-block}.btn-sub.disable,.btn-sub:hover{background-color:#6d6f71}.btn-reset{font-size:11px;cursor:pointer;color:#cf2127;line-height:20px;display:inline-block;padding:0 7px;background-color:#fff;border-radius:2px;border:1px solid #cf2127}.btn-reset:hover{background-color:#cf2127;color:#fff}.btn-order-group{font-size:11px;color:#fff;cursor:pointer;line-height:22px;display:inline-block;padding:0 7px;background-color:#263e82;border-radius:2px}.btn-order-group:hover{background-color:#5d6d9a}.btn-condition{position:absolute;top:30px;right:20px;font-size:11px;color:#fff;cursor:pointer;line-height:22px;display:inline-block;padding:0 7px;background-color:#0288d1;border-radius:2px;border:0}.btn-condition:hover{background-color:#5d6d9a}.btn-red{background-color:#ee4d2d;color:#fff;border-color:#ee4d2d}.btn-red:hover{color:#fff;background-color:#e37f68;border-color:#e37f68}.btn-gray{background-color:#959595;border-color:#959595;color:#fff}.btn-gray-550{background-color:#c2c2c2;border-color:#c2c2c2;color:#fff}.btn-orangen{background-color:#f37934;border-color:#f37934;color:#fff}.btn-orangen:hover{background-color:#ec6b21;border-color:#ec6b21;color:#fff}.btn-green{background-color:#329900;border-color:#329900;color:#fff}.btn-cyan-dark{background-color:#07a99b;border-color:#07a99b;color:#fff}.btn-blue5{background-color:#2061ae;border-color:#2061ae;color:#fff}.btn-cancel{background-color:#ebebeb;border-color:#ebebeb;color:#cf2127}.btn-blue-4{background-color:#4073a7;border-color:#4073a7;color:#fff}.btn-done{background-color:#ebebeb;color:#000;border-color:#ebebeb}.btn-done:hover{color:#000;background-color:#d7d7d7}.btn-continue{font-size:14px;font-weight:400;color:#fff;display:block;padding:3px 25px;background-color:#0288d1;cursor:pointer;transition:all .2s ease;position:absolute;top:5px;right:10px;border-radius:3px}.btn-continue:hover{background-color:#187caa}.btn-view-more{font-size:18px;color:#fff;min-width:342px;height:41px;font-weight:600;background-color:#f37934;border-color:#f37934}.dropdown,.dropleft,.dropright,.dropup{position:relative}.dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid;border-right:.3em solid transparent;border-bottom:0;border-left:.3em solid transparent}.dropdown-toggle:empty:after{margin-left:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:10rem;padding:.5rem 0;margin:.125rem 0 0;font-size:.875rem;color:#464646;text-align:left;list-style:none;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.15);border-radius:3px}.dropdown-menu-right{right:0;left:auto}.dropup .dropdown-menu{top:auto;bottom:100%;margin-top:0;margin-bottom:.125rem}.dropup .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:0;border-right:.3em solid transparent;border-bottom:.3em solid;border-left:.3em solid transparent}.dropup .dropdown-toggle:empty:after{margin-left:0}.dropright .dropdown-menu{top:0;right:auto;left:100%;margin-top:0;margin-left:.125rem}.dropright .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:0;border-bottom:.3em solid transparent;border-left:.3em solid}.dropright .dropdown-toggle:empty:after{margin-left:0}.dropright .dropdown-toggle:after{vertical-align:0}.dropleft .dropdown-menu{top:0;right:100%;left:auto;margin-top:0;margin-right:.125rem}.dropleft .dropdown-toggle:after{display:inline-block;width:0;height:0;margin-left:.255em;vertical-align:.255em;content:"";display:none}.dropleft .dropdown-toggle:before{display:inline-block;width:0;height:0;margin-right:.255em;vertical-align:.255em;content:"";border-top:.3em solid transparent;border-right:.3em solid;border-bottom:.3em solid transparent}.dropleft .dropdown-toggle:empty:after{margin-left:0}.dropleft .dropdown-toggle:before{vertical-align:0}.dropdown-menu[x-placement^=bottom],.dropdown-menu[x-placement^=left],.dropdown-menu[x-placement^=right],.dropdown-menu[x-placement^=top]{right:auto;bottom:auto}.dropdown-divider{height:0;margin:.5rem 0;overflow:hidden;border-top:1px solid #f2f2f2}.dropdown-item{display:block;width:100%;padding:.25rem 1.5rem;clear:both;font-weight:400;color:#252525;text-align:inherit;white-space:nowrap;background-color:transparent;border:0}.dropdown-item:focus,.dropdown-item:hover{color:#181818;text-decoration:none;background-color:#f5f5f5}.dropdown-item.active,.dropdown-item:active{color:#fff;text-decoration:none;background-color:#0288d1}.dropdown-item.disabled,.dropdown-item:disabled{color:#959595;background-color:transparent}.dropdown-menu.show{display:block}.dropdown-header{display:block;padding:.5rem 1.5rem;margin-bottom:0;font-size:.813rem;color:#959595;white-space:nowrap}.dropdown-item-text{display:block;padding:.25rem 1.5rem;color:#252525}.pagination{text-align:center;margin-top:30px;max-height:30px;overflow:hidden;list-style:none}.pagination li{display:inline-block}.pagination li:first-child a:hover,.pagination li:last-child a:hover{background-color:transparent}.pagination li.active a{background-color:#cf2127;color:#fff}.pagination a{font-size:13px;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;width:40px;height:30px;text-align:center;line-height:30px;color:#252525;display:inline-block;margin:0 5px;position:relative;top:-1px;cursor:pointer;transition:.2s}.pagination a:hover{background-color:#cf2127;color:#fff;text-decoration:none}.pagination .icon{vertical-align:middle}.page-control{display:inline-block;cursor:pointer;height:30px;vertical-align:text-top}.modal,.modal-open{overflow:hidden}.modal{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1050;display:none;outline:0}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal .close{color:#fff;cursor:pointer;text-shadow:none;font-size:0;line-height:14px;position:absolute;top:-22px;left:auto;right:0;padding:2px 7px 9px;z-index:99;font-weight:400;opacity:1;background-position:-401px -335px}.modal .close:hover{color:#fff}.modal .find-local{font-size:14px;color:#0288d1;cursor:pointer;border:0;background-color:transparent;position:absolute;bottom:12px;right:0}.modal .find-local:focus{outline:none}.modal .find-local .fas{background-color:transparent;position:static;font-size:15px}.modal .find-local+input{padding-right:145px}.modal-dialog.modal-noti{width:750px;max-width:750px}.modal-dialog{position:relative;width:auto;margin:.5rem;pointer-events:none}.modal.fade .modal-dialog{transition:transform .3s ease-out;transform:translateY(-25%)}@media screen and (prefers-reduced-motion:reduce){.modal.fade .modal-dialog{transition:none}}.modal.show .modal-dialog{transform:translate(0);margin-top:5%}.modal.show .modal-dialog.modal-dialog-centered{margin-top:0;padding-top:2%}.modal-dialog-centered{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;min-height:calc(100% - 1rem)}.modal-content{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;width:100%;pointer-events:auto;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem;outline:0}.modal-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;background-color:#000}.modal-backdrop.fade{opacity:0}.modal-backdrop.show{opacity:.7}.modal-backdrop.under-modal{z-index:-1}.modal-backdrop.show~.modal-backdrop.show{display:none}.modal-header{display:-ms-flexbox;display:flex;-ms-flex-align:start;align-items:flex-start;-ms-flex-pack:justify;justify-content:space-between;padding:10px 15px;border-bottom:1px solid #d7d7d7;border-top-left-radius:.3rem;border-top-right-radius:.3rem}.modal-header .close{padding:1rem;margin:-1rem -1rem -1rem auto}.modal-header>.row{width:100%}.modal-title{margin-bottom:0;line-height:1.5}.modal-body{color:#464646;position:relative;-ms-flex:1 1 auto;flex:1 1 auto;padding:10px 15px}.modal-footer{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:10px 15px}.modal-footer>:not(:first-child){margin-left:.25rem}.modal-footer>:not(:last-child){margin-right:.25rem}.modal-footer.content-right{-ms-flex-pack:end;justify-content:flex-end}.modal-footer.content-center{-ms-flex-pack:center;justify-content:center}.modal-footer .btn-share{color:#fff;background-color:#cfcfcf;border:1px solid #cfcfcf;margin-left:10px;min-width:135px}.modal-footer .btn-share:active,.modal-footer .btn-share:focus,.modal-footer .btn-share:visited{border-color:#3199f2}.modal-footer .btn-share:active .copied,.modal-footer .btn-share:focus .copied,.modal-footer .btn-share:visited .copied{display:block}.modal-footer .btn-share .fas{margin-right:8px}.modal-footer .btn-share .copied{font-size:10px;color:#989898;position:absolute;top:50%;left:100%;margin-left:10px;transform:translateY(-50%);display:none}.modal-footer .align-right{margin:auto 0 auto auto}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:576px){.modal-dialog{max-width:500px;margin:1.75rem auto}.modal-dialog-centered{min-height:calc(100% - 3.5rem)}.modal-sm{max-width:300px}}@media (min-width:992px){.modal-lg{max-width:1000px}}.main-header .modal.modal-search.show:after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;background-color:#000;opacity:.8;z-index:-1;height:100%}.modal-search .modal-dialog{width:70%;max-width:1140px}.modal-search .modal-content{background-color:transparent;border:0}.modal-search-form{text-align:center;background-image:url(/app/assets/img/bg-search.png?40df121cbb04a250ef2bd237a1e621b1);background-position:top;background-repeat:no-repeat;padding-top:140px}.modal-search-form .now-idea-searching{margin:auto;width:940px;text-align:left;right:0}.modal-search-form .sub-title{color:#fff;font-size:16px;text-align:center}.modal-search-form .search-input{font-size:24px;color:#fff;text-align:center;width:100%;margin-top:10px;border:0;border-bottom:2px solid #6d6f71;background-color:transparent;transition:all .2s}.modal-search-form .search-input:focus{outline:none;border-bottom-color:#ebebeb}.charge-service .modal-header{color:#0288d1;text-align:center;font-size:18px;border-bottom:0;display:block}.charge-service .type-deli{font-size:16px;color:#329900;position:relative;padding-left:15px;margin-bottom:0}.charge-service .type-deli:after{content:"";position:absolute;top:9px;left:0;width:8px;height:8px;background-color:#329900;border-radius:50%}.charge-service .note-detail-restaurant{font-size:15px;margin-bottom:0;padding:5px 0 5px 15px}.modal-alert .modal-header{background-color:#f2f2f2;display:block}.modal-alert .modal-body{background-position:60px bottom;background-repeat:no-repeat;background-size:contain;padding:30px 30px 0;white-space:pre-wrap}.modal-share-order-group .modal-content{border-radius:7px}.modal-share-order-group .modal-header{background-color:#464646;color:#fff;font-weight:600;padding:10px}.modal-share-order-group .group-share-left{width:125px;float:left;text-align:center}.modal-share-order-group .group-share-left p{margin-top:5px;margin-bottom:0}.modal-share-order-group .group-share-content{padding-left:15px;overflow:hidden}.modal-share-order-group .group-share-content .group-share-title{font-size:16px;color:#464646;font-weight:400;margin:0 0 12px}.modal-share-order-group .group-share-content input{color:#6d6f71;padding:0 5px;height:30px;border:0;border-bottom:1px solid #9fa9aa;border-radius:3px;margin:0;width:100%}.modal-share-order-group .list-social{text-align:center;margin:25px 0 0;padding-left:0;list-style:none}.modal-share-order-group .list-social li{display:inline-block;margin:0 10px}.modal-share-order-group .list-social a{color:#fff;text-align:center;font-size:18px;line-height:40px;display:block;width:40px;height:40px;border-radius:50%;background-color:#959595}.modal-list-user-order .modal-dialog{width:1030px;max-width:1030px}.modal-list-user-order .modal-header{font-size:18px;color:#fff;text-transform:uppercase;-ms-flex-pack:center;justify-content:center;background-color:#6d6f71;padding:8px 0}.modal-list-user-order .modal-body{padding:0}.modal-list-user-order .order-control{background-color:#ebebeb;padding:10px 15px}.modal-list-user-order .detail-bill{padding:0 15px}.modal-list-user-order .detail-bill .header-bill{font-size:12px;color:#464646;font-weight:700;padding:0 10px}.modal-list-user-order .detail-bill .header-bill .row-bill{padding-top:10px;padding-bottom:10px}.modal-list-user-order .detail-bill .row-bill{border-bottom:1px solid #d7d7d7}.modal-list-user-order .detail-bill .body-bill{font-size:13px;min-height:300px;max-height:440px;width:100%;overflow:hidden;overflow-y:auto}.modal-list-user-order .detail-bill .body-bill .row-bill{padding-top:14px;padding-bottom:14px}.modal-list-user-order .detail-bill .avatar img{border-radius:50%;width:40px;height:40px}.modal-list-user-order .detail-bill .name{font-weight:700}.modal-list-user-order .col-user{-ms-flex:0 0 30%;flex:0 0 30%}.modal-list-user-order .col-status .fas{font-size:20px;text-align:center;width:25px;vertical-align:middle;margin-right:4px}.modal-list-user-order .col-status .fa-check-circle{color:#6cc942}.modal-list-user-order .col-status .fa-times-circle{color:#cf2127}.modal-list-user-order .col-user-control .ico-statusking{color:#fff;font-size:25px;vertical-align:top;display:inline-block;width:25px;height:25px;border-radius:50%;margin:0 8px;background-color:transparent;border:0;padding:0}.modal-list-user-order .col-user-control .ico-statusking .fas{vertical-align:top}.modal-list-user-order .col-user-control .ico-statusking-finish{color:#329900}.modal-list-user-order .col-user-control .ico-statusking-cancel{color:#6d6f71}.modal-list-user-order .col-user-control .ico-statusking-remind{background-color:#f37934;font-size:18px;text-align:center;line-height:30px}.modal-list-user-order .col-user-control .ico-statusking-remind .far{border-radius:50%;vertical-align:text-top}.modal-list-user-order .modal-footer .btn{font-size:13px;text-transform:uppercase;padding-left:30px;padding-right:30px;border-radius:3px}.modal-order{z-index:1049}.modal-order .modal-dialog{width:100%;max-width:100%}.modal-order .modal-content{margin:auto}.modal-order .modal-content.edit-info-order,.modal-order .modal-content.modal-get-local,.modal-order .modal-content.modal-order-detail{width:885px}.modal-order .title-popup-order{font-size:16px;font-weight:700;color:#000;margin:0;padding:7px 10px;cursor:pointer;position:relative}.modal-order .modal-order-detail{font-size:13px}.modal-order .modal-order-detail .modal-header{font-size:16px;font-weight:700;background-color:#ebebeb;color:#000;padding:7px 10px;position:relative;border:0;border-radius:5px 5px 0 0}.modal-order .modal-order-detail .modal-body{padding:0}.modal-order .modal-order-detail .order-left{width:43%;float:left;position:relative}.modal-order .modal-order-detail .order-left:after{content:"";position:absolute;top:0;bottom:0;right:-10px;background-color:#d7d7d7;width:10px}.modal-order .modal-order-detail .map-order{height:330px;border-bottom:5px solid #d7d7d7}.modal-order .modal-order-detail .nav-delivery{background-color:#ebebeb;padding:0 0 0 5px;border-bottom:1px solid #d7d7d7}.modal-order .modal-order-detail .list-item{background-color:#ebebeb;color:#000;border:1px solid #d7d7d7;border-bottom:0;position:relative;overflow:hidden;border-radius:4px 4px 0 0;display:inline-block;margin-bottom:-6px}.modal-order .modal-order-detail .item-nav{float:left;padding:2px 10px;cursor:pointer}.modal-order .modal-order-detail .item-nav.active{background-color:#464646;color:#fff;cursor:default;font-weight:700}.modal-order .modal-order-detail .order-right{font-size:14px;float:left;width:57%;border-left:10px solid #d7d7d7;height:100%}.modal-order .modal-order-detail .order-right .more-order{color:#0288d1;padding:7px 10px;cursor:pointer}.modal-order .modal-order-detail .order-right .fa-question-circle{color:#9fa9aa}.modal-order .modal-order-detail .modal-footer a{color:#fff;background-color:#0288d1}.modal-order .direction-content{padding-left:10px;border:1px solid #d7d7d7;border-top:0}.modal-order .direction-content .direction-from,.modal-order .direction-content .direction-to{padding:5px 0;position:relative}.modal-order .direction-content .direction-from:after,.modal-order .direction-content .direction-to:after{content:"";width:12px;height:12px;border-radius:50%;background-color:#cf2127;margin:auto;position:absolute;top:9px;left:-19px}.modal-order .direction-content .direction-from:before{content:"";position:absolute;bottom:0;width:1px;background-color:#d7d7d7;left:-14px;top:16px;height:50px}.modal-order .direction-content .direction-to:after{background-color:#6cc942}.modal-order .direction-content .direction-name{font-size:13px;font-weight:700;line-height:inherit;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;max-width:96%}.modal-order .direction-content .direction-address{font-size:12px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.modal-order .direction-content .direction-time{border:1px solid #464646;border-radius:12px;display:inline-block;padding:2px 3px;background-color:#fbf9d8}.modal-order .direction-content .direction-time .fa{vertical-align:middle;margin-bottom:2px}.modal-order .change-info{font-size:14px;color:#0288d1;padding:10px;position:relative;cursor:pointer}.modal-order .direction-info{padding:5px 10px 5px 23px;overflow:hidden}.modal-order .btn-continue:hover{color:#fff;text-decoration:none}.modal-order .btn-continue .fas{margin-left:5px}.modal-order .icon-arrow-thin{font-size:22px;border-color:#959595;position:absolute;top:17px;right:10px}.modal-order .pickup-content .info-res{border-bottom:1px solid #ebebeb;padding-top:7px;padding-bottom:7px}.modal-order .pickup-content .name{position:relative;padding-left:34px;font-weight:700;margin-bottom:3px}.modal-order .pickup-content .name:after{content:"";position:absolute;top:5px;left:10px;width:12px;height:12px;border-radius:50%;background-color:#cf2127}.modal-order .pickup-content .address{color:#6d6f71;font-size:12px;padding-left:10px}.modal-order .pickup-content .info-user{padding:5px 10px;border-bottom:1px solid #ebebeb}.modal-order .pickup-content .info-user .fa{margin-right:2px;vertical-align:middle}.modal-order .order-list{max-height:92px;overflow-y:auto}.modal-order .order-list .order-item{color:#252525;position:relative;padding:4px 0}.modal-order .order-list .order-item:after{content:"";position:absolute;bottom:0;left:10px;right:10px;height:1px;background-color:#ebebeb}.modal-order .order-list .order-item-number{font-size:12px;text-align:center;color:#fff;position:absolute;top:7px;left:10px;width:15px;height:15px;background-color:#0288d1;line-height:14px;border-radius:4px;padding-top:1px}.modal-order .order-list .order-item-info{padding-left:30px;padding-right:65px}.modal-order .order-list .order-item-name{font-size:14px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}.modal-order .order-list .order-item-note{font-size:12px;color:#525252}.modal-order .order-list .order-item-price{font-size:14px;position:absolute;top:6px;right:10px}.modal-order .info-order{border-top:7px solid #d7d7d7;padding:4px 10px}.modal-order .discount-code{background-color:#fbf9d8;padding:7px 25px 7px 10px}.modal-order .discount-code .input-code{font-size:12px;text-align:center;color:#cf2127;font-weight:700;width:88px;height:22px;background-color:#fff;border:1px solid #d7d7d7;margin:0 10px 0 40px;text-transform:uppercase}.modal-order .discount-code .input-code:focus{outline:none;border-bottom:1px solid #cf2127}.modal-order .discount-code .input-code::-webkit-input-placeholder{opacity:.6}.modal-order .discount-code .input-code::-ms-input-placeholder{opacity:.6}.modal-order .discount-code .input-code::placeholder{opacity:.6}.modal-order .discount-code button{font-size:12px;color:#fff;cursor:pointer;text-align:center;border-radius:3px;border:0;background-color:#6cc942;height:22px}.modal-order .discount-code .icon-arrow-thin{top:7px;right:-5px}.modal-order .discount-code .txt-blue{font-size:13px;cursor:pointer}.modal-order .note-order{padding:7px 10px 0;position:relative}.modal-order .note-order .fee{opacity:0;transition:opacity .2s ease}.modal-order .note-order input[type=checkbox]:checked~.fee{opacity:1}.modal-order .note-order .vat-number{font-size:12px;color:#187caa;cursor:pointer;padding-right:20px}.modal-order .note-order .icon-arrow-thin{top:7px}.modal-order .payment-methods{cursor:pointer;background-color:#fbf9d8;padding:7px 25px 7px 10px;position:relative}.modal-order .payment-methods .icon-arrow-thin{top:6px;right:-5px}.modal-order .order-note{padding:7px 10px 0;position:relative}.modal-order .order-note textarea{font-size:15px;min-height:inherit;overflow-y:hidden;resize:none;padding:0 25px 0 0;height:30px;width:100%;max-width:100%;border:0;border-bottom:1px solid #ebebeb;margin:0;transition:all .2s;height:24px}.modal-order .order-note textarea::-webkit-input-placeholder{opacity:.6}.modal-order .order-note textarea::-ms-input-placeholder{opacity:.6}.modal-order .order-note textarea::placeholder{opacity:.6}.modal-order .order-note textarea:focus{outline:none;border-bottom-color:#cf2127}.modal-order .not-vat{color:#959595;padding:10px}.modal-order .not-vat .icon{display:inline-block;margin-right:5px;vertical-align:middle}.modal-order .modal-footer{text-align:center;clear:both;position:relative;background-color:#ebebeb;padding:7px;border-radius:0 0 5px 5px}.modal-order .modal-footer a{font-size:16px;font-weight:700;display:block;padding:10px 0;cursor:pointer;transition:all .2s ease;width:100%;border-radius:5px}.modal-order .modal-footer a:hover{text-decoration:none;background-color:#187caa}.modal-order .modal-footer .total-price{position:absolute;top:17px;right:20px;font-weight:400}.modal-order .edit-info-order .title-popup-order{font-size:15px;color:#252525;font-weight:700;background-color:#ebebeb;border:0;padding:14px 20px;border-radius:5px 5px 0 0}.modal-order .edit-info-order .list-address-order{padding:10px 21px;min-height:370px}.modal-order .edit-info-order .list-address-order .title{padding-bottom:7px}.modal-order .edit-info-order .list-address-order.show-edit-address .list-address{max-height:180px}.modal-order .edit-info-order .list-address{overflow-y:auto;max-height:320px}.modal-order .edit-info-order .title{font-weight:700;padding-bottom:10px;position:relative}.modal-order .edit-info-order .add-address{font-weight:400;position:absolute;top:0;right:0;color:#0288d1;cursor:pointer}.modal-order .edit-info-order .time-order{padding:10px 21px;border-bottom:8px solid #ebebeb}.modal-order .edit-info-order .modal-footer{padding-left:10px;padding-right:10px}.modal-order .edit-info-order .modal-footer .btn{width:100%}.modal-order .edit-info-order .view-more{color:#0288d1;padding-left:28px;font-size:13px;cursor:pointer}.modal-order .item-address-order{position:relative;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;max-width:100%;padding-bottom:10px;margin-bottom:7px}.modal-order .item-address-order:after{content:"";position:absolute;bottom:0;left:30px;height:1px;right:0;background-color:#ebebeb}.modal-order .item-address-order .custom-radio label{padding-left:38px;height:auto}.modal-order .item-address-order .custom-radio label:after,.modal-order .item-address-order .custom-radio label:before{top:11px;width:18px;height:18px;left:-2px}.modal-order .item-address-order .custom-radio .info-user{margin-bottom:-4px}.modal-order .custom-radio label{max-width:100%}.modal-order .custom-radio .address{text-overflow:ellipsis;white-space:nowrap;overflow:hidden;display:block;margin-bottom:-4px}.modal-order .custom-radio .info-user{display:block}.modal-order .edit-address{position:absolute;bottom:4px;right:0;color:#0288d1;cursor:pointer;font-size:13px;padding:3px}.modal-order .book-time-order{position:relative;padding-bottom:20px;margin-top:-3px}.modal-order .book-time-order .datepicker{font-size:16px;font-weight:700;text-align:center;cursor:pointer;width:49%;border:1px solid #d7d7d7;padding:12px 5px}.modal-order .book-time-order .datepicker:focus{outline:none}.modal-order .book-time-order .delivery-time{text-align-last:center;font-size:16px;font-weight:700;text-align:center;width:49%;float:right;border:1px solid #d7d7d7;background-color:#fff;padding:12px 5px}.modal-order .modal-footer .btn{height:44px;font-size:16px;font-weight:700}.modal-order .block-add-address{padding:0 10px}.modal-order .block-add-address .input-group .fas{color:#fff;font-size:12px;position:absolute;bottom:12px;left:0;background-color:#959595;width:22px;text-align:center;height:22px;border-radius:50%;line-height:22px}.modal-order .block-add-address .input-group input{padding-left:30px;padding-right:145px;border-color:#d7d7d7}.modal-order .block-add-address .find-local .fas{position:static;font-size:15px;background-color:transparent}.modal-order .block-add-address input{width:100%;font-size:15px;padding:0;height:45px;border:0;border-bottom:1px solid #6d6f71}.modal-order .block-add-address input:focus{outline:none}.modal-order .block-add-address input.requite{border-bottom:1px solid #cf2127}.modal-order .block-add-address .col{margin-bottom:15px}.modal-order .modal-content.order-detail{width:500px}.modal-order .modal-content.order-detail .title-popup-order{font-size:18px}.modal-order .modal-content.order-detail .now-order-card-group{max-height:435px;overflow-y:auto}.modal-order .modal-content.order-detail .now-order-card-group .order-card-user{font-size:13px;padding:5px 15px;background-color:#fbf9d8}.modal-order .modal-content.order-detail .now-order-card-group .order-card-user .avatar img{width:36px}.modal-order .modal-content.order-detail .now-order-card-group .order-card-user .user-name{font-size:14px}.modal-order .modal-content.order-detail .now-order-card-group .order-card-item{padding:5px 10px 5px 40px;position:relative}.modal-order .modal-content.order-detail .now-order-card-group .order-card-item .name-order{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;max-width:100%;font-size:15px;font-weight:700}.modal-order .modal-content.order-detail .now-order-card-group .order-card-item .note-topping{font-size:12px}.modal-order .modal-content.order-detail .now-order-card-group .order-card-total{font-size:14px;color:#cf2127;position:absolute;top:6px;left:20px}.modal-order .modal-content.order-detail .modal-footer .btn{width:230px}.modal-order .modal-content.invoice{width:500px;min-height:600px;padding-bottom:64px}.modal-order .modal-content.invoice .title-info{color:#3f3f3f;font-size:13px;font-weight:700;text-transform:uppercase;background-color:#f9f9f9;padding:12px 10px 9px}.modal-order .modal-content.invoice .choose-vat{padding:10px;max-height:236px;overflow-y:auto;border-bottom:1px solid #f9f9f9}.modal-order .modal-content.invoice .choose-vat .title{font-size:16px;padding-bottom:10px}.modal-order .modal-content.invoice .add-new-vat{color:#0188d1;cursor:pointer;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:justify;justify-content:space-between;padding:9px 0 9px 15px;position:relative;font-size:13px}.modal-order .modal-content.invoice .add-new-vat .icon-now-plus{font-size:8px;color:#fff;text-align:center;background-color:#0091ff;border-radius:50%;width:16px;height:16px;display:inline-block;line-height:16px;margin-right:10px}.modal-order .modal-content.invoice .add-new-vat .icon-arrow-thin{border-color:#e4e4e4}.modal-order .modal-content.invoice .custom-radio label{color:#cf2127}.modal-order .modal-content.invoice .address{display:block;font-size:12px;color:#959595;padding-left:30px}.modal-order .modal-content.invoice .vat-item{position:relative}.modal-order .modal-content.invoice .add-vat .title{color:#3f3f3f;font-size:13px;font-weight:700;text-transform:uppercase;background-color:#f9f9f9;padding:12px 10px 9px;margin-bottom:15px}.modal-order .modal-content.invoice .add-vat .input-group{padding:10px 10px 12px;margin-bottom:4px}.modal-order .modal-content.invoice .add-vat input{color:#000;font-size:14px;width:100%;border:0;border-bottom:1px solid #d2d2d2}.modal-order .modal-content.invoice .add-vat input:focus{outline:none}.modal-order .modal-content.invoice .add-vat label{font-size:12px;color:#9d9d9d;pointer-events:none;margin-bottom:0;position:absolute;top:-8px;left:10px;transition:all .2s}.modal-order .modal-content.invoice .title{font-size:16px;padding-bottom:10px}.modal-order .modal-content.invoice .note-vat{text-align:center;background-color:#f5f5f5;border-top:1px dotted #959595;border-bottom:1px dotted #959595}.modal-order .modal-content.invoice .modal-footer{position:absolute;bottom:0;left:0;width:100%}.modal-order .modal-content.invoice .modal-footer .btn{width:100%}.modal-order .modal-content.method-payment{width:885px}.modal-order .modal-content.method-payment .title-popup-order{font-weight:700;font-size:18px;border-bottom:10px solid #ebebeb}.modal-order .modal-content.method-payment .no-money{color:#cf2127;font-style:italic}.modal-order .modal-content.method-payment .redeem-balance{padding:10px;padding-bottom:0;margin-bottom:0}.modal-order .modal-content.method-payment .redeem-balance li{padding:5px 0}.modal-order .modal-content.method-payment .modal-footer .btn{width:100%}.modal-order .modal-content.method-payment .confirm-password{padding:10px 0;position:relative}.modal-order .modal-content.method-payment .confirm-password .input-confirm{width:100%;border:0;border-bottom:1px solid #959595}.modal-order .modal-content.method-payment .confirm-password .input-confirm:focus{outline:none;border-color:#cf2127}.modal-order .modal-content.method-payment .confirm-password .cap-lock{font-size:12px;position:absolute;bottom:-10px;left:0}.modal-order .modal-content.method-payment .confirm-password .cap-lock .fas{font-size:12px;color:#cf2127}.modal-order .list-method-payment{padding:10px;min-height:477px;max-height:477px;overflow-y:auto}.modal-order .list-method-payment .item-method-payment{padding:5px 0;position:relative}.modal-order .list-method-payment .item-method-payment .custom-radio label{font-size:15px}.modal-order .list-method-payment .balance{font-weight:700;color:#329900;font-size:15px;position:absolute;top:6px;right:0}.modal-order .list-method-payment .cards-content{padding-left:30px}.modal-order .list-method-payment .cards-content .card-item,.modal-order .list-method-payment .cards-content .list-card{padding:5px 0}.modal-order .modal-content.order-complete{width:500px;max-width:500px}.modal-order .modal-content.order-complete .title-popup-order{text-align:center;font-size:20px;padding-top:0}.modal-order .modal-content.order-complete .modal-footer{background-color:#fff}.modal-order .modal-content.order-complete .modal-footer .btn{width:100%}.modal-box-image .modal-dialog{width:530px}.modal-box-image .modal-body{padding:0;position:relative}.modal-box-image .modal-content{border-radius:0}.modal-box-image .imgbox-close{cursor:pointer;background-image:url(/app/assets/img/imgBox-controls.png?26156c32573f430fc4454fb551ac67f2);background-repeat:no-repeat;background-position:top;position:absolute;top:0;right:5px;display:block;width:38px;height:19px;text-indent:-9999px;z-index:2}.modal-box-image .imgbox-close:hover{background-position:bottom}.modal-box-image .imgbox-current{font-size:13px;position:absolute;top:-20px;right:0;color:#d7d7d7}.modal-box-image .imgbox-previous{cursor:pointer;position:absolute;top:50%;left:0;margin-top:-32px;background:url(/app/assets/img/imgBox-controls.png?26156c32573f430fc4454fb551ac67f2) no-repeat 0 0;width:28px;height:65px;text-indent:-9999px;z-index:2}.modal-box-image .imgbox-previous:hover{background-position:0 100%}.modal-box-image .imgbox-next{cursor:pointer;position:absolute;top:50%;right:0;margin-top:-32px;background:url(/app/assets/img/imgBox-controls.png?26156c32573f430fc4454fb551ac67f2) no-repeat 100% 0;width:28px;height:65px;text-indent:-9999px;z-index:2}.modal-box-image .imgbox-next:hover{background-position:100% 100%}.modal-box-image .imgbox-content{position:relative}.modal-box-image .imgbox-content img{max-width:100%;height:auto;display:block;width:100%;max-height:530px}.modal-box-image .imgbox-caption{color:#fff;position:absolute;top:auto;bottom:0;left:0;width:100%;box-sizing:border-box;background-color:rgba(0,0,0,.8);padding:10px}.modal-box-image .imgbox-food-name{font-size:16px;font-weight:400;margin-bottom:3px}.modal-box-image .imgbox-total{font-size:11px}.modal-box-image .imgbox-old-price{font-size:13px;color:#959595}.modal-box-image .imgbox-current-price{font-size:16px}.modal-box-image .modal-footer .btn{font-size:16px;width:50%}.modal-topping .modal-dialog{width:850px;max-width:850px}.modal-topping .modal-body{max-height:250px;overflow-y:auto}.modal-topping .modal-header{padding-left:20px;padding-right:20px;border:0;position:relative}.modal-topping .modal-header:after{content:"";position:absolute;bottom:0;left:20px;right:20px;height:1px;background-color:#ebebeb}.modal-topping .topping-dish-image img{width:80px;height:80px}.modal-topping .topping-dish-name{font-size:20px;font-weight:700}.modal-topping .topping-dish-desc{font-size:15px;color:#959595;margin:10px 0}.modal-topping .topping-dish-price{font-size:15px}.modal-topping .modal-body{padding-left:20px;padding-right:20px}.modal-topping .topping-category-item{padding-top:10px;padding-bottom:10px;border-bottom:1px solid #ebebeb}.modal-topping .topping-name{font-size:15px;font-weight:700;margin-bottom:10px}.modal-topping .topping-note{font-size:14px;color:#959595;font-weight:400}.modal-topping .topping-item .col-6{padding-top:5px;padding-bottom:5px}.modal-topping .custom-checkbox label{font-size:15px}.modal-topping .custom-checkbox label:before{width:20px;height:20px;border-radius:2px}.modal-topping .topping-item-price{text-align:right;font-size:13px;color:#6d6f71;padding-left:15px}.modal-topping .topping-add-sub{text-align:right}.modal-topping .topping-add-sub input[type=text]{width:40px;height:25px;text-align:center;margin:0 5px;background:#fff;color:#464646}.modal-topping .topping-add-sub input[type=text]:focus{outline:none}.modal-topping .topping-add-sub .btn-adding,.modal-topping .topping-add-sub .btn-sub{width:25px;height:25px;line-height:23px}.modal-topping .modal-footer{display:block;background-color:#f9f9f9;padding:20px}.modal-topping .modal-footer .btn{font-size:16px;min-width:260px}.modal-topping .modal-footer .topping-add-sub{text-align:left}.modal-sorry .other-shop{background-color:#f9f9f9;overflow:hidden;margin:-60px -15px 0}.modal-sorry .title{font-size:15px;padding:20px 15px}.modal-sorry .now-other-restaurant{padding:0 15px;max-height:255px;overflow-y:auto}.modal-header.modal-header-transparent{background:transparent;position:absolute;width:100%;bottom:100%;color:#fff;border:none;text-align:center}.modal-change-address{z-index:1049}.modal-change-address .modal-body{padding-top:30px}.modal-change-address .custom-select{height:40px;padding:5px 5px 5px 7px;margin-top:15px}.modal-tip-paynow .modal-header{color:#fff;font-size:18px;text-transform:uppercase;text-align:center;padding:8px 0;background-color:rgba(0,0,0,.5);margin:0;display:block}.modal-tip-paynow .modal-body{max-height:525px;overflow:hidden;overflow-y:auto}.modal-pay-method .title-payment{font-size:16px;font-weight:700}.modal-pay-method .list-money{overflow:hidden;border:1px solid #d7d7d7;border-bottom:0;border-right:0;border-radius:2px;list-style:none;padding-left:0;margin:15px 0}.modal-pay-method .list-money .item{width:33.33%;width:33.33333%;float:left}.modal-pay-method .list-money .item.active a{color:#fff;background-color:#329900}.modal-pay-method .list-money .link{font-size:14px;color:#329900;text-align:center;display:block;transition:all .3s ease;-webkit-transition:all .3s ease;border-right:1px solid #d7d7d7;border-bottom:1px solid #d7d7d7;padding:9px}.modal-pay-method .list-money .link:hover{color:#fff;background-color:#329900}.modal-pay-method .list-payment{margin:15px 0}.modal-pay-method .list-payment .custom-radio{padding-bottom:8px}.modal-pay-method .form-group{position:relative;margin-top:5px}.modal-pay-method .form-group input{width:100%;border:0;border-bottom:1px solid #959595;height:45px;padding-right:25px}.modal-pay-method .form-group input:focus{border-bottom:1px solid #cf2127;box-shadow:0 1px 0 0 #cf2127;outline:none}.modal-pay-method .value{font-size:15px;line-height:3em;color:#d7d7d7;position:absolute;bottom:0;right:0}.modal-pay-method .modal-footer .btn{padding-left:30px;padding-right:30px;height:36px}.modal-new-app .modal-dialog{width:680px;max-width:680px}.modal-new-app .modal-content{padding:0;display:block}.modal-new-app .img-now{float:left;width:283px;position:relative;height:241px;padding-top:20px;padding-left:20px}.modal-new-app .img-now img{position:absolute;bottom:0;left:26px;width:221px}.modal-new-app .info-now{overflow:hidden;padding-top:31px;padding-left:20px;padding-bottom:6px}.modal-new-app .title{font-size:36px;font-weight:lighter;margin-bottom:0}.modal-new-app .desc{font-size:15px;margin-top:9px;margin-bottom:9px}.modal-new-app .update-version{font-size:14px;color:#848789;margin:12px 0 4px}.modal-new-app .down-apps{margin-bottom:15px}.modal-new-app .down-apps img{width:100px}.modal-new-app .down-apps a{display:inline-block;margin-right:20px}.modal-new-app .box-now-merchant{background-color:#d7d7d7;padding-bottom:15px;clear:both}.modal-new-app .img-merchant{overflow:hidden;width:300px;float:left;padding-top:39px;padding-left:37px}.modal-new-app .img-merchant a{display:block}.modal-new-app .info-merchant{padding-top:19px}.modal-new-app .info-merchant .title{font-size:34px;color:#244e79;font-weight:700;margin-bottom:3px}.modal-new-app .btn-merchant{color:#244e79;border:1px solid #244e79;text-transform:none;background-color:#fff;font-size:13px;padding:8px 15px;border-radius:5px;box-shadow:none}.modal-new-app .btn-merchant:hover{background-color:#244e79;color:#fff}.modal-verify-phone .modal-content{padding:20px 30px 30px}.modal-verify-phone .form-control{padding:8px 5px}.modal-verify-phone .modal-footer .btn{font-size:16px;font-weight:700;padding:8px 0}.modal-cancel-reason .modal-header{color:#fff;font-size:18px;text-transform:uppercase;text-align:center;padding:4px 0;background-color:#6d6f71;margin:0;-ms-flex-pack:center;justify-content:center;border:0}.modal-cancel-reason .order-id{font-size:14px;text-align:right;color:#cf2127;background-color:#f2f2f2;padding:7px 15px;margin-bottom:10px}.modal-cancel-reason .title-reason{font-size:16px;font-weight:700}.modal-cancel-reason .list-reason{max-height:400px;overflow-y:auto}.modal-cancel-reason .list-reason .item-reason{padding:12px 5px;border-bottom:1px solid #d7d7d7}.modal-cancel-reason .custom-checkbox label{font-size:15px}.modal-cancel-reason .select-local .icon{position:absolute;top:10px;left:10px;z-index:1}.modal-cancel-reason .select-local select{border:1px solid #d7d7d7;border-radius:3px;background-color:#fff;position:relative;padding:8px 0 8px 39px}.modal-cancel-reason .icon-arrow-thin{padding:5px;border-color:#959595}.modal-cancel-reason .check-code{padding-left:65px;padding-right:65px;margin-bottom:15px}.modal-cancel-reason .check-code .col-2{padding-left:5px;padding-right:5px}.modal-cancel-reason .check-code .form-control{text-align:center}.modal-cancel-reason .modal-footer+.modal-footer{padding-top:0}.modal-get-local .modal-dialog{width:883px}.modal-get-local .btn-back{font-size:16px;color:#fff;font-weight:700;cursor:pointer;position:absolute;top:-30px;left:3px;z-index:1}.modal-get-local .btn-back .fas{color:#fff}.modal-get-local .modal-header{font-size:16px;color:#464646;font-weight:700;background-color:#ebebeb;border:0;padding-left:18px;padding-top:11px;border-radius:6px 6px 0 0;overflow:hidden}.modal-get-local .modal-body{padding:0;border-radius:0 0 6px 6px;overflow:hidden}.modal-get-local .list-local .fas{font-size:16px;color:#959595}.modal-get-local .suggest-local .close{top:-70px}.modal-get-local .suggest-local .location-items{overflow-y:scroll;max-height:284px}.modal-get-local .suggest-local .icon-thumbtack{zoom:.5}.modal-get-local .find-map{padding:18px 20px 18px 31px;cursor:pointer}.modal-get-local .find-map .icon-arrow-thin{border-color:#c2c2c2}.modal-get-local .search-local{padding:16px 20px 0}.modal-get-local .primary-local{background-color:#fff;padding:6px 0;border:1px solid #d7d7d7;border-radius:4px}.modal-get-local .primary-local .fas{color:#c2c2c2;margin-right:10px}.modal-get-local .primary-local .icon-location{margin-right:30px;zoom:.5;margin-top:12px;cursor:pointer}.modal-get-local .primary-local .icon-search-gray{zoom:.5;margin:11px 23px 0 18px}.modal-get-local .primary-local .icon-close-gray{margin-right:15px;margin-top:6px;cursor:pointer}.modal-get-local .primary-local input{font-size:14px;color:#252525;border:0;width:100%}.modal-get-local .primary-local input:focus{outline:none}.modal-get-local .primary-local ::-webkit-input-placeholder{font-weight:400}.modal-get-local .primary-local ::-ms-input-placeholder{font-weight:400}.modal-get-local .primary-local ::placeholder{font-weight:400}.modal-get-local .item-local{cursor:pointer;border-bottom:1px solid #ebebeb}.modal-get-local .item-local:hover>.row{background-color:#f9f9f9}.modal-get-local .item-local>.row{padding:9px 11px 8px;margin:0}.modal-get-local .sub-item-local{padding-left:57px}.modal-get-local .sub-item-local .fa-map-marker{font-size:10px;color:#cf2127;position:relative;top:-2px;left:0;margin-right:13px}.modal-get-local .sub-item-local .note-more{color:#959595}.modal-get-local .sub-item-local .sub-item{border-top:1px solid #ebebeb;padding:6px 0}.modal-get-local .sub-item-local .sub-item:hover{background-color:#f9f9f9}.modal-get-local .choose-local{min-height:550px;border-radius:0 0 5px 5px;position:relative;margin-top:16px}.modal-get-local .choose-local .map-local{width:100%;height:100%;position:absolute}.modal-get-local .modal-footer{position:absolute;bottom:10px;left:10px;right:10px;padding:0}.modal-get-local .modal-footer .btn{font-size:16px;font-weight:700;text-transform:capitalize;padding:12px 0;border-radius:6px}.modal-verify-phone-number .modal-dialog{max-width:770px}.modal-verify-phone-number .modal-body{padding-top:25px;padding-left:35px}.modal-verify-phone-number .btn-logout{font-size:15px;color:#c2c2c2;position:absolute;bottom:100%;right:0;background-color:transparent;border:0;padding:0;margin-bottom:9px;cursor:pointer}.modal-verify-phone-number .btn-logout .icon-power-off{zoom:.5;margin-left:10px;margin-bottom:6px;vertical-align:bottom}.modal-verify-phone-number .list-verify-phone{margin-top:15px;margin-bottom:15px;padding-left:30px;padding-right:15px;position:relative;border-left:1px solid #d7d7d7;min-height:161px}.modal-verify-phone-number .list-verify-phone input{font-size:15px;border:0;background-color:transparent;width:100%}.modal-verify-phone-number .list-verify-phone input[type=number]::-webkit-inner-spin-button,.modal-verify-phone-number .list-verify-phone input[type=number]::-webkit-outer-spin-button{-webkit-appearance:none;margin:0}.modal-verify-phone-number .list-verify-phone input[type=number]{-moz-appearance:textfield}.modal-verify-phone-number .list-verify-phone input:focus-within{outline:none}.modal-verify-phone-number .list-verify-phone .list-phone-scroll{position:relative;overflow-y:auto;max-height:125px}.modal-verify-phone-number .list-verify-phone .list-phone-scroll .btn-submit{font-size:15px;margin-top:10px;border:1px solid #ededed;color:#fff;background-color:#0288d1;padding:5px 40px;border-radius:5px;cursor:pointer;min-width:200px;width:100%}.modal-verify-phone-number .list-verify-phone .list-phone-scroll .btn-submit:focus{outline:none}.modal-verify-phone-number .list-verify-phone .list-phone-scroll .btn-submit .fas{font-size:10px;color:#fff;margin-left:2px}.modal-verify-phone-number .list-verify-phone .item{font-size:15px;cursor:pointer;background-color:#ebebeb;border-radius:5px;padding:7px 20px 7px 28px;margin-bottom:5px}.modal-verify-phone-number .list-verify-phone .input-phone ::-webkit-input-placeholder{color:#0288d1}.modal-verify-phone-number .list-verify-phone .input-phone ::-ms-input-placeholder{color:#0288d1}.modal-verify-phone-number .list-verify-phone .input-phone ::placeholder{color:#0288d1}.modal-verify-phone-number .list-verify-phone .input-phone .fas{color:#0288d1}.modal-verify-phone-number .list-verify-phone .item:nth-child(4){margin-bottom:10px}.modal-verify-phone-number .list-verify-phone .fas{font-size:15px;color:#c2c2c2}.modal-customer-feeback .modal-dialog{max-width:540px}.modal-customer-feeback .close{top:13px}.modal-customer-feeback .modal-content{background-color:transparent;padding:0;border:0}.modal-customer-feeback .modal-header{text-align:center;-ms-flex-pack:center;justify-content:center;font-size:1.25rem;font-weight:700;color:#fff;background-color:transparent;padding:6px 0}.modal-customer-feeback .modal-body{background-color:#f9f9f9;padding:0}.modal-customer-feeback .modal-footer{padding:0}.modal-customer-feeback .modal-footer .btn{font-size:16px;padding:12px 0}.modal-customer-feeback .modal-footer .btn:hover{background-color:#329900}.modal-customer-feeback .review-section{background-color:#fff;margin-bottom:10px;padding:20px 10px 10px;text-align:center}.modal-customer-feeback .review-section .text{font-size:12px;color:#252525;margin-bottom:10px}.modal-customer-feeback .review-section .image{width:60px;height:60px;border-radius:50%;margin:0 auto 5px}.modal-customer-feeback .review-section .shipper-name{font-size:12px;font-weight:600;margin-bottom:15px}.modal-customer-feeback .review-section .rating-star-container{margin-bottom:15px}.modal-customer-feeback .review-section .rating-star-container .icon-star{font-size:22px;margin:0 7px;color:#e6ecf0;cursor:pointer}.modal-customer-feeback .review-section .rating-star-container .icon-star.active{color:#ffb500}.modal-customer-feeback .review-section .rating-star-container .icon-star.disabled{cursor:no-drop}.modal-customer-feeback .feedback-section{padding:20px 10px;background:#fff;margin-bottom:15px}.modal-customer-feeback .feedback-section .feedback-item{border:1px solid #d7d7d7;padding:4px 12px;color:#d7d7d7;border-radius:5px;margin-right:10px;margin-bottom:5px;display:inline-block;cursor:pointer}.modal-customer-feeback .feedback-section .feedback-item.active{background:#ffb500;color:#fff;border-color:#ffb500}.modal-customer-feeback .feedback-section .feedback-item.disabled{cursor:no-drop}.modal-customer-feeback .tip-section{padding:20px 10px;background:#fff;margin-bottom:15px}.modal-customer-feeback .tip-section .tip-item{border:1px solid #d7d7d7;padding:4px 12px;border-radius:5px;margin-right:10px;margin-bottom:5px;display:inline-block;cursor:pointer}.modal-customer-feeback .tip-section .tip-item.active{background:#ffb500;color:#fff;border-color:#ffb500}.modal-customer-feeback .tip-section .tip-item.disabled{cursor:no-drop}.modal-customer-feeback .tip-section .tip-submit-section{padding:0;padding-top:10px}.modal-customer-feeback .tip-section .tip-message{text-align:center;font-weight:600;margin-bottom:0}.modal-customer-feeback .submit-section{padding:10px;display:-ms-flexbox;display:flex}.modal-customer-feeback .submit-section .btn-cancel{width:100%;margin-right:10px;border:1px solid #0288d1;background:#fff;color:#0288d1;transition:opacity .2s}.modal-customer-feeback .submit-section .btn-cancel:hover{opacity:.8}.modal-customer-feeback .submit-section .btn-submit{width:100%;padding:10px;background:#0288d1}.modal-customer-feeback .submit-section .btn-submit:disabled{background:#d8d8d8;border-color:#d8d8d8}.modal-customer-feeback .choose-review{text-align:center;border-top:1px solid #ebebeb;display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;padding:20px 0;position:relative}.modal-customer-feeback .choose-review .item{font-size:.813rem;text-transform:uppercase;cursor:pointer;border:1px solid;margin:0 15px;padding:4px 0;min-width:110px;border-radius:16px}.modal-customer-feeback .choose-review .item .far{margin-right:7px;font-size:20px;vertical-align:top}.modal-customer-feeback .choose-review .item.active:after,.modal-customer-feeback .choose-review .item.active:before{content:" ";position:absolute;top:100%;left:0;border:solid transparent;height:0;width:0;pointer-events:none;margin-top:1px;z-index:1;transform:translateY(-100%)}.modal-customer-feeback .choose-review .item.active:before{border-color:transparent;border-bottom-color:#ebebeb;border-width:9px;margin-left:-9px}.modal-customer-feeback .choose-review .item.active:after{border-color:transparent;border-bottom-color:#fff;border-width:7px;margin-left:-7px}.modal-customer-feeback .choose-review .item.active.happy:after,.modal-customer-feeback .choose-review .item.active.happy:before{left:22%}.modal-customer-feeback .choose-review .item.active.normal:after,.modal-customer-feeback .choose-review .item.active.normal:before{left:50%}.modal-customer-feeback .choose-review .item.active.sad:after,.modal-customer-feeback .choose-review .item.active.sad:before{left:79%}.modal-customer-feeback .choose-review .happy{color:#329900}.modal-customer-feeback .choose-review .happy.active{color:#fff;background-color:#329900;border-color:#329900}.modal-customer-feeback .choose-review .happy.active .far{font-weight:900}.modal-customer-feeback .choose-review .happy:hover{color:#fff;background-color:#329900;border-color:#329900}.modal-customer-feeback .choose-review .happy:hover .far{font-weight:900}.modal-customer-feeback .choose-review .normal{color:#9fa9aa}.modal-customer-feeback .choose-review .normal.active{color:#fff;background-color:#9fa9aa;border-color:#9fa9aa}.modal-customer-feeback .choose-review .normal.active .far{font-weight:900}.modal-customer-feeback .choose-review .normal:hover{color:#fff;background-color:#9fa9aa;border-color:#9fa9aa}.modal-customer-feeback .choose-review .normal:hover .far{font-weight:900}.modal-customer-feeback .choose-review .sad{color:#cf2127}.modal-customer-feeback .choose-review .sad.active{color:#fff;background-color:#cf2127;border-color:#cf2127}.modal-customer-feeback .choose-review .sad.active .far{font-weight:900}.modal-customer-feeback .choose-review .sad:hover{color:#fff;background-color:#cf2127;border-color:#cf2127}.modal-customer-feeback .choose-review .sad:hover .far{font-weight:900}.modal-customer-feeback .list-reason .slick-arrow{width:40px;height:50px;padding:0;background:#fff}.modal-customer-feeback .list-reason .slick-arrow:before{content:"";position:absolute;left:50%;top:50%;width:15px;height:15px;border-radius:50%;background:#959595;transform:translate(-50%,-50%)}.modal-customer-feeback .list-reason .slick-prev{left:-10px}.modal-customer-feeback .list-reason .slick-prev:after{content:"";border:solid #fff;border-width:0 2px 2px 0;display:inline-block;padding:2px;transform:rotate(135deg);margin-left:3px}.modal-customer-feeback .list-reason .slick-next{right:-10px}.modal-customer-feeback .list-reason .slick-next:after{content:"";border:solid #fff;border-width:0 2px 2px 0;display:inline-block;padding:2px;transform:rotate(-45deg);margin-right:2px}.modal-customer-feeback .choose-review.reason{padding:14px 10px;position:relative;display:block}.modal-customer-feeback .choose-review.reason .item{font-size:13px;color:#464646;text-transform:none;border-color:#464646;margin:0 4px;padding:4px 8px;min-width:inherit;display:inline-block;white-space:nowrap;width:inherit!important}.modal-customer-feeback .choose-review.reason .item.active,.modal-customer-feeback .choose-review.reason .item:hover{color:#fff;background-color:#cf2127;border-color:#cf2127}.modal-customer-feeback .now-list-restaurant-row .item-content{position:relative;padding:10px;display:block;border-bottom:0;cursor:default;overflow:hidden}.modal-customer-feeback .now-list-restaurant-row .item-content:hover{background-color:transparent}.modal-customer-feeback .now-list-restaurant-row .img-restaurant{width:60px;height:60px;float:left;border-radius:4px;overflow:hidden;margin-top:3px}.modal-customer-feeback .now-list-restaurant-row .info-restaurant{color:#252525;position:relative;overflow:hidden;padding-left:10px;padding-right:0;padding:12px 0 0 10px}.modal-customer-feeback .now-list-restaurant-row .info-restaurant .res-name{font-weight:700;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-size:16px}.modal-customer-feeback .now-list-restaurant-row .info-restaurant .address-res{font-size:14px;color:#959595;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.modal-customer-feeback .block-comment{background-color:#fff;border-radius:5px;padding:10px}.modal-customer-feeback .block-comment textarea{font-size:14px;background-color:transparent;border:0;padding:0;width:100%;max-width:100%;resize:none;min-height:60px}.modal-customer-feeback .block-comment textarea:focus{outline:none}.modal-customer-feeback .block-comment textarea:focus::-webkit-input-placeholder{color:transparent}.modal-customer-feeback .block-comment #image-selector{position:absolute;top:0;left:0;z-index:-99}.modal-customer-feeback .block-comment .upload-image{display:-ms-flexbox;display:flex;padding:10px 0;overflow:auto}.modal-customer-feeback .block-comment .item-upload{position:relative;height:70px;margin-right:10px}.modal-customer-feeback .block-comment .image-upload{width:40px;height:40px;position:relative;overflow:hidden;border-radius:8px}.modal-customer-feeback .block-comment .image-upload img{position:absolute;width:auto;height:100%;top:50%;left:50%;transform:translate(-50%,-50%)}.modal-customer-feeback .block-comment .icon-upload,.modal-customer-feeback .btn-up{cursor:pointer}.modal-customer-feeback .icon-close{position:absolute;top:-6px;right:-6px;cursor:pointer}.modal-customer-feeback .modal-content.disable .choose-review .item{color:#6d6f71;cursor:no-drop;background-color:#d7d7d7;border-color:#d7d7d7}.modal-customer-feeback .modal-content.disable .choose-review .item:hover .far{font-weight:400}.modal-customer-feeback .modal-content.disable .choose-review .happy.active{color:#fff;background-color:#329900;border-color:#329900}.modal-customer-feeback .modal-content.disable .choose-review .happy.active .far{font-weight:900}.modal-customer-feeback .modal-content.disable .choose-review .normal.active{color:#fff;background-color:#9fa9aa;border-color:#9fa9aa}.modal-customer-feeback .modal-content.disable .choose-review .normal.active .far{font-weight:900}.modal-customer-feeback .modal-content.disable .choose-review .sad.active{color:#fff;background-color:#cf2127;border-color:#cf2127}.modal-customer-feeback .modal-content.disable .choose-review .sad.active .far{font-weight:900}.modal-customer-feeback .modal-content.disable .reason .item.active{background-color:#cf2127;color:#fff}.modal-confirm-order .modal-header{-ms-flex-pack:center;justify-content:center;background-color:#f37934}.modal-confirm-order .modal-title{color:#fff;font-size:20px;font-weight:700}.modal-confirm-order .note-order{background-color:#dcdaa6;padding:10px;border:1px dashed #cf2127}.modal-confirm-order .modal-footer .btn{font-weight:700;min-width:125px;padding:8px}.modal-table-noti .modal-header{-ms-flex-pack:center;justify-content:center;background-color:#f37934}.modal-table-noti .modal-title{color:#fff;font-size:20px;font-weight:700}.modal-table-noti .modal-footer .btn{font-weight:700;min-width:125px;padding:8px}.modal-booking .modal-dialog{max-width:1200px}.modal-booking .modal-body{background-color:#f9f9f9;padding-top:25px;height:calc(100vh - 2.75rem);overflow-y:auto}.modal-booking.modal.show .modal-dialog{margin-top:1.75rem}.modal-booking .modal-confirm-order.show{background:rgba(0,0,0,.7)}.modal-offsuccess .modal-body{padding-top:25px;padding-bottom:25px}.modal-offsuccess .modal-body:after,.modal-offsuccess .modal-body:before{content:"";background:url(/app/assets/img/bg-border-popup.png?5257c6f4e2fe595d7340e9b43639ed1d) repeat-x;height:7px;position:absolute;top:0;left:0;width:100%}.modal-offsuccess .modal-body:before{top:auto;bottom:0}.modal-distance-limit .modal-dialog{max-width:420px}.modal-distance-limit .modal-dialog .modal-content{max-width:420px;text-align:center}.modal-distance-limit .modal-header{background-size:contain;height:40px}.modal-distance-limit .modal-footer{background-color:#e1e1e1}.modal-distance-limit .modal-footer .btn{font-size:13px;background:none;border:none;border-radius:0;color:#262626;width:50%}.modal-distance-limit .modal-footer .btn:nth-of-type(2){border-left:3px solid #ebebeb}.modal-phone-login_fail .modal-dialog{max-width:340px}.modal-phone-login_fail .modal-dialog .modal-body{padding:40px 35px;text-align:center}.modal-phone-login_fail .modal-dialog .modal-body .title{font-weight:700}.modal-phone-login_fail .modal-dialog .modal-body .desc{padding:12px 0;color:#878787}.modal-phone-login_fail .modal-dialog .modal-body .qr-container{padding:30px 0 20px}.modal-phone-login_fail .modal-dialog .modal-body .link-button{color:#0288d1;margin-left:5px}.modal-phone-login_fail .modal-dialog .modal-body .link-button:hover{color:#015785}@media screen and (max-width:1366px){.modal-order,.modal-order-promo-code{padding-top:30px}}.general-alert-modal .modal-dialog.modal-noti{width:500px;margin-top:25%}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-item{position:relative;display:none;-ms-flex-align:center;align-items:center;width:100%;transition:transform .6s ease;-webkit-backface-visibility:hidden;backface-visibility:hidden;perspective:1000px}@media screen and (prefers-reduced-motion:reduce){.carousel-item{transition:none}}.carousel-item-next,.carousel-item-prev,.carousel-item.active{display:block}.carousel-item-next,.carousel-item-prev{position:absolute;top:0}.carousel-item-next.carousel-item-left,.carousel-item-prev.carousel-item-right{transform:translateX(0)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.carousel-item-next.carousel-item-left,.carousel-item-prev.carousel-item-right{transform:translateZ(0)}}.active.carousel-item-right,.carousel-item-next{transform:translateX(100%)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.active.carousel-item-right,.carousel-item-next{transform:translate3d(100%,0,0)}}.active.carousel-item-left,.carousel-item-prev{transform:translateX(-100%)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.active.carousel-item-left,.carousel-item-prev{transform:translate3d(-100%,0,0)}}.carousel-fade .carousel-item{opacity:0;transition-duration:.6s;transition-property:opacity}.carousel-fade .carousel-item-next.carousel-item-left,.carousel-fade .carousel-item-prev.carousel-item-right,.carousel-fade .carousel-item.active{opacity:1}.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-right{opacity:0}.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-prev,.carousel-fade .carousel-item-next,.carousel-fade .carousel-item-prev,.carousel-fade .carousel-item.active{transform:translateX(0)}@supports ((-webkit-transform-style:preserve-3d) or (transform-style:preserve-3d)){.carousel-fade .active.carousel-item-left,.carousel-fade .active.carousel-item-prev,.carousel-fade .carousel-item-next,.carousel-fade .carousel-item-prev,.carousel-fade .carousel-item.active{transform:translateZ(0)}}.carousel-control-next,.carousel-control-prev{background-color:transparent;border:0}.carousel-control-next:focus,.carousel-control-prev:focus{outline:none}.carousel-control-next-icon,.carousel-control-prev-icon,.slick-arrow{cursor:pointer;width:25px;height:50px;background-image:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44);background-position:-17px -139px;background-size:unset;background-color:transparent;position:absolute;left:0;top:46%;transform:translateY(-50%);border:0;font-size:0;z-index:1;outline:none}.carousel-control-next-icon,.slick-next{background-position:-15px -203px;left:auto;right:0}.carousel-indicators{position:absolute;right:0;bottom:10px;left:0;z-index:15;display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;padding-left:0;margin-right:15%;margin-left:15%;list-style:none}.carousel-indicators li{position:relative;-ms-flex:0 1 auto;flex:0 1 auto;width:30px;height:3px;margin-right:3px;margin-left:3px;text-indent:-999px;cursor:pointer;background-color:hsla(0,0%,100%,.5)}.carousel-indicators li:before{top:-10px}.carousel-indicators li:after,.carousel-indicators li:before{position:absolute;left:0;display:inline-block;width:100%;height:10px;content:""}.carousel-indicators li:after{bottom:-10px}.carousel-indicators .active{background-color:#fff}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center}.slick-list,.slick-slider,.slick-track{position:relative;display:block}.slick-loading .slick-slide,.slick-loading .slick-track{visibility:hidden}.slick-slider{box-sizing:border-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-touch-callout:none;-khtml-user-select:none;-ms-touch-action:pan-y;touch-action:pan-y;-webkit-tap-highlight-color:transparent}.slick-list{overflow:hidden;margin:0;padding:0}.slick-list:focus{outline:0}.slick-list.dragging{cursor:pointer;cursor:hand}.slick-slider .slick-list,.slick-slider .slick-track{transform:translateZ(0)}.slick-track{top:0;left:0}.slick-track:after,.slick-track:before{display:table;content:""}.slick-track:after{clear:both}.slick-slide{display:none;float:left;height:100%;min-height:1px}[dir=rtl] .slick-slide{float:right}.slick-slide img{display:block}.slick-slide.slick-loading img{display:none}.slick-slide.dragging img{pointer-events:none}.slick-initialized .slick-slide{display:block;height:100px}.slick-initialized .slick-current{height:auto}.slick-vertical .slick-slide{display:block;height:auto;border:1px solid transparent}.slick-arrow.slick-disabled{display:none!important}[class*=tbnow-] .slick-slider .card{padding:0 10px}[class*=tbnow-] .slick-slider .slick-arrow{color:transparent;cursor:pointer;background:hsla(0,0%,100%,.8);width:30px;height:50px;position:absolute;top:50%;transform:translateY(-50%);border:0;z-index:1}[class*=tbnow-] .slick-slider .slick-arrow:after{content:"";border:solid #959595;border-width:0 3px 3px 0;display:inline-block;padding:5px;border-radius:1px;position:absolute;top:19px;left:9px}[class*=tbnow-] .slick-slider .slick-arrow:focus{outline:none}[class*=tbnow-] .slick-slider .slick-arrow:hover{background:#fff}[class*=tbnow-] .slick-slider .slick-next{border-radius:5px 0 0 5px}[class*=tbnow-] .slick-slider .slick-next:after{transform:rotate(-45deg)}[class*=tbnow-] .slick-slider .slick-prev{border-radius:0 5px 5px 0}[class*=tbnow-] .slick-slider .slick-prev:after{transform:rotate(135deg)}.carousel.carousel-slider .control-arrow,.carousel .control-arrow{transition:all .25s ease-in;opacity:.4;position:absolute;z-index:2;top:20px;background:0 0;border:0;font-size:32px;cursor:pointer}.carousel .control-arrow:hover{opacity:1}.carousel.carousel-slider .control-arrow:before,.carousel .control-arrow:before{margin:0 5px;display:inline-block;border-top:8px solid transparent;border-bottom:8px solid transparent;content:""}.carousel .control-disabled.control-arrow{opacity:0;cursor:inherit;display:none}.carousel .control-prev.control-arrow{left:0}.carousel .control-prev.control-arrow:before{border-right:8px solid #fff}.carousel .control-next.control-arrow{right:0}.carousel .control-next.control-arrow:before{border-left:8px solid #fff}.carousel{position:relative;width:100%}.carousel *{box-sizing:border-box}.carousel button{outline:0;border:0;background:0 0}.carousel img{width:100%;display:inline-block;pointer-events:none}.carousel .carousel{position:relative}.carousel .control-arrow{top:50%;margin-top:-13px;font-size:18px}.carousel .thumbs-wrapper{margin:20px;overflow:hidden}.carousel .thumbs{transition:all .15s ease-in;transform:translateZ(0);position:relative;list-style:none;white-space:nowrap}.carousel .thumb{transition:border .15s ease-in;display:inline-block;width:80px;margin-right:6px;white-space:nowrap;overflow:hidden;border:3px solid #fff;padding:2px}.carousel .thumb.selected,.carousel .thumb:hover{border:3px solid #333;padding:2px}.carousel .thumb img{vertical-align:top}.carousel.carousel-slider{position:relative;margin:0;overflow:hidden}.carousel.carousel-slider .control-arrow{top:0;color:#fff;font-size:26px;bottom:0;margin-top:0;padding:5px}.carousel.carousel-slider .control-arrow:hover{background:rgba(0,0,0,.2)}.carousel .slider-wrapper{overflow:hidden;margin:auto;width:100%;transition:height .15s ease-in}.carousel .slider-wrapper.axis-horizontal .slider{-ms-box-orient:horizontal;display:-ms-flexbox;display:-moz-flex;display:flex}.carousel .slider-wrapper.axis-horizontal .slider .slide{-ms-flex-direction:column;flex-direction:column;-ms-flex-flow:column;flex-flow:column}.carousel .slider-wrapper.axis-vertical{-ms-box-orient:horizontal;display:-ms-flexbox;display:-moz-flex;display:flex}.carousel .slider-wrapper.axis-vertical .slider{-ms-flex-direction:column;flex-direction:column}.carousel .slider{margin:0;padding:0;position:relative;list-style:none;width:100%}.carousel .slider.animated{transition:all .35s ease-in-out}.carousel .slide{min-width:100%;margin:0;position:relative;text-align:center;background:#000}.carousel .slide img{width:100%;vertical-align:top;border:0}.carousel .slide iframe{display:inline-block;width:calc(100% - 80px);margin:0 40px 40px;border:0}.carousel .slide .legend{transition:all .5s ease-in-out;position:absolute;bottom:40px;left:50%;margin-left:-45%;width:90%;border-radius:10px;background:#000;color:#fff;padding:10px;font-size:12px;text-align:center;opacity:.25;transition:opacity .35s ease-in-out}.carousel .control-dots{position:absolute;bottom:0;margin:10px 0;text-align:center;width:100%}@media (min-width:960px){.carousel .control-dots{bottom:0}}.carousel .control-dots .dot{transition:opacity .25s ease-in;opacity:.3;box-shadow:1px 1px 2px rgba(0,0,0,.9);background:#fff;border-radius:50%;width:8px;height:8px;cursor:pointer;display:inline-block;margin:0 8px}.carousel .control-dots .dot.selected,.carousel .control-dots .dot:hover{opacity:1}.carousel .carousel-status{position:absolute;top:0;right:0;padding:5px;font-size:10px;text-shadow:1px 1px 1px rgba(0,0,0,.9);color:#fff}.carousel:hover .slide .legend{opacity:1}.carousel .thumbs-wrapper{margin:15px}.carousel .thumbs{padding-left:0;margin-bottom:0;transition-timing-function:ease;transition-duration:.3s}.carousel .thumb{margin:0 5px;position:relative;width:70px;height:60px;cursor:pointer}.carousel .thumb,.carousel .thumb.selected,.carousel .thumb:hover{padding:0;border:0}.carousel .thumb.selected:after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;box-shadow:inset 0 0 0 2px #f37934;z-index:1;cursor:pointer}.carousel .thumb img{position:absolute;top:50%;left:50%;width:unset;max-height:100%;transform:translate(-50%,-50%)}.carousel .control-arrow{opacity:1;padding:0}.carousel .control-arrow:before{border:solid #959595;border-width:0 3px 3px 0;padding:6px;background:none;width:inherit;height:inherit;border-radius:2px;top:38%;opacity:1}.carousel .control-arrow.control-disabled{cursor:default;opacity:.5;display:block;pointer-events:none}.carousel .control-arrow.control-prev:before{border-right:3px solid #959595;transform:rotate(135deg)}.carousel .control-arrow.control-next:before{border-left:0;transform:rotate(-45deg)}.h1,.h2,.h3,.h4,.h5,.h6,h1,h2,h3,h4,h5,h6{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}.h1,h1{font-size:2.1875rem}.h2,h2{font-size:1.75rem}.h3,h3{font-size:1.53125rem}.h4,h4{font-size:1.3125rem}.h5,h5{font-size:1.09375rem}.h6,h6{font-size:.875rem}.lead{font-size:1.09375rem;font-weight:300}.display-1{font-size:6rem}.display-1,.display-2{font-weight:300;line-height:1.2}.display-2{font-size:5.5rem}.display-3{font-size:4.5rem}.display-3,.display-4{font-weight:300;line-height:1.2}.display-4{font-size:3.5rem}hr{margin-top:1rem;margin-bottom:1rem;border:0;border-top:1px solid rgba(0,0,0,.1)}.small,small{font-size:.75rem;font-weight:400}.mark,mark{padding:.2em;background-color:#fcf8e3}.list-inline,.list-unstyled{padding-left:0;list-style:none}.list-inline-item{display:inline-block}.list-inline-item:not(:last-child){margin-right:.5rem}.initialism{font-size:90%;text-transform:uppercase}.blockquote{margin-bottom:1rem;font-size:1.09375rem}.blockquote-footer{display:block;font-size:80%;color:#959595}.blockquote-footer:before{content:"\2014   \A0"}.tooltip{position:absolute;z-index:1070;display:block;margin:0;font-family:-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif;font-style:normal;font-weight:400;line-height:1.5;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.813rem;word-wrap:break-word;opacity:0}.tooltip.show{opacity:.9}.tooltip .arrow{position:absolute;display:block;width:.8rem;height:.4rem}.tooltip .arrow:before{position:absolute;content:"";border-color:transparent;border-style:solid}.bs-tooltip-auto[x-placement^=top],.bs-tooltip-top{padding:.4rem 0}.bs-tooltip-auto[x-placement^=top] .arrow,.bs-tooltip-top .arrow{bottom:0}.bs-tooltip-auto[x-placement^=top] .arrow:before,.bs-tooltip-top .arrow:before{top:0;border-width:.4rem .4rem 0;border-top-color:#000}.bs-tooltip-auto[x-placement^=right],.bs-tooltip-right{padding:0 .4rem}.bs-tooltip-auto[x-placement^=right] .arrow,.bs-tooltip-right .arrow{left:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=right] .arrow:before,.bs-tooltip-right .arrow:before{right:0;border-width:.4rem .4rem .4rem 0;border-right-color:#000}.bs-tooltip-auto[x-placement^=bottom],.bs-tooltip-bottom{padding:.4rem 0}.bs-tooltip-auto[x-placement^=bottom] .arrow,.bs-tooltip-bottom .arrow{top:0}.bs-tooltip-auto[x-placement^=bottom] .arrow:before,.bs-tooltip-bottom .arrow:before{bottom:0;border-width:0 .4rem .4rem;border-bottom-color:#000}.bs-tooltip-auto[x-placement^=left],.bs-tooltip-left{padding:0 .4rem}.bs-tooltip-auto[x-placement^=left] .arrow,.bs-tooltip-left .arrow{right:0;width:.4rem;height:.8rem}.bs-tooltip-auto[x-placement^=left] .arrow:before,.bs-tooltip-left .arrow:before{left:0;border-width:.4rem 0 .4rem .4rem;border-left-color:#000}.tooltip-inner{max-width:200px;padding:.25rem .5rem;color:#fff;text-align:center;background-color:#000;border-radius:3px}.now-loading{background-color:#000;height:100%;width:100%;position:fixed;z-index:9999;margin-top:0;top:0;left:0;opacity:.2}.now-loading .loading-center{width:100%;height:100%;position:relative}.now-loading .loading-center-absolute{position:absolute;left:50%;top:50%;height:60px;width:60px;margin-top:-30px;margin-left:-30px;animation:c 1s infinite}.now-loading .object{width:20px;height:20px;background-color:#fff;float:left;border-radius:50%;margin-right:20px;margin-bottom:20px}.now-loading .object:nth-child(2n+0){margin-right:0}.now-loading .object_one{animation:d 1s infinite}.now-loading .object_two{animation:e 1s infinite}.now-loading .object_three{animation:f 1s infinite}.now-loading .object_four{animation:g 1s infinite}.now-loading.now-loading-block{position:absolute}.card{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;min-width:0;word-wrap:break-word;border-radius:5px;margin-bottom:15px}.card>hr{margin-right:0;margin-left:0}.card>.list-group:first-child .list-group-item:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.card>.list-group:last-child .list-group-item:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.card .order-now:after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;background:rgba(0,0,0,.4);opacity:0;transition:all .1s}.card .order-now .btn-order{transform:translate(-50%,-50%) scale(0);transition:all .2s;z-index:2}.card .order-now:hover:after{opacity:1}.card .order-now:hover .btn-order{transform:translate(-50%,-50%) scale(1)}.card-body{font-size:14px;color:#252525;-ms-flex:1 1 auto;flex:1 1 auto;padding:0 15px;border:1px solid #ebebeb;border-top:0;border-radius:0 0 5px 5px}.card-body .rating{margin-top:-7px;margin-bottom:3px}.card-body .rating .stars>span{padding-right:4px}.card-title{margin-bottom:.75rem}.card-subtitle{margin-top:-.375rem}.card-subtitle,.card-text:last-child{margin-bottom:0}.card-link:hover{text-decoration:none}.card-link+.card-link{margin-left:1.25rem}.card-header{padding:.75rem 1.25rem;margin-bottom:0;background-color:rgba(0,0,0,.03);border-bottom:1px solid rgba(0,0,0,.125)}.card-header:first-child{border-radius:2px 2px 0 0}.card-header+.list-group .list-group-item:first-child{border-top:0}.card-footer{padding:.75rem 1.25rem;background-color:rgba(0,0,0,.03);border-top:1px solid rgba(0,0,0,.125)}.card-footer:last-child{border-radius:0 0 2px 2px}.card-header-tabs{margin-bottom:-.75rem;border-bottom:0}.card-header-pills,.card-header-tabs{margin-right:-.625rem;margin-left:-.625rem}.card-img-overlay{position:absolute;top:0;right:0;bottom:0;left:0;padding:1.25rem}.card-img{width:100%;position:relative;display:block}.card-img .icon-promo{font-size:16px;text-align:center;color:#fff;font-weight:700;position:absolute;top:-8px;left:0;padding-left:9px;padding-top:13px;z-index:2}.card-img .btn-order{font-size:18px;text-align:center;border-radius:5px;background-color:#f37934;width:120px;position:absolute;top:50%;left:50%;border-color:#f37934;padding:5px 0 6px}.card-img-top{width:100%;border-top-left-radius:2px;border-top-right-radius:2px}.card-img-bottom{width:100%;border-bottom-right-radius:2px;border-bottom-left-radius:2px}.card-deck{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.card-deck .card{margin-bottom:10px}@media (min-width:576px){.card-deck{-ms-flex-flow:row wrap;flex-flow:row wrap;margin-right:-10px;margin-left:-10px}.card-deck .card{display:-ms-flexbox;display:flex;-ms-flex:1 0;flex:1 0;-ms-flex-direction:column;flex-direction:column;margin-right:10px;margin-bottom:0;margin-left:10px}}.card-group{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.card-group>.card{margin-bottom:10px}@media (min-width:576px){.card-group{-ms-flex-flow:row wrap;flex-flow:row wrap}.card-group>.card{-ms-flex:1 0;flex:1 0;margin-bottom:0}.card-group>.card+.card{margin-left:0;border-left:0}.card-group>.card:first-child{border-top-right-radius:0;border-bottom-right-radius:0}.card-group>.card:first-child .card-header,.card-group>.card:first-child .card-img-top{border-top-right-radius:0}.card-group>.card:first-child .card-footer,.card-group>.card:first-child .card-img-bottom{border-bottom-right-radius:0}.card-group>.card:last-child{border-top-left-radius:0;border-bottom-left-radius:0}.card-group>.card:last-child .card-header,.card-group>.card:last-child .card-img-top{border-top-left-radius:0}.card-group>.card:last-child .card-footer,.card-group>.card:last-child .card-img-bottom{border-bottom-left-radius:0}.card-group>.card:only-child{border-radius:3px}.card-group>.card:only-child .card-header,.card-group>.card:only-child .card-img-top{border-top-left-radius:3px;border-top-right-radius:3px}.card-group>.card:only-child .card-footer,.card-group>.card:only-child .card-img-bottom{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.card-group>.card:not(:first-child):not(:last-child):not(:only-child),.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-footer,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-header,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-img-bottom,.card-group>.card:not(:first-child):not(:last-child):not(:only-child) .card-img-top{border-radius:0}}.card-columns .card{margin-bottom:.75rem}@media (min-width:576px){.card-columns{column-count:3;column-gap:1.25rem;orphans:1;widows:1}.card-columns .card{display:inline-block;width:100%}}.card-content{display:block;position:relative;border-radius:5px;background-color:#fff}.card-content:hover{text-decoration:none;box-shadow:0 0 rgba(0,0,0,.2),0 0 10px 0 rgba(0,0,0,.19)}.card-spec{font-size:16px;font-weight:700;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;border-bottom:1px solid #ebebeb;padding:8px 12px 9px;margin-left:-15px;margin-right:-15px;display:block}.card-spec,.card-spec:hover{color:#f37934}.card-spec+.card-name,.card-spec+.card-name+.card-address{margin-left:-5px;margin-right:-5px}.card-name{font-weight:700;padding:6px 0;font-size:14px}.card-address,.card-name{text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.card-address{font-size:12px;padding-bottom:6px}.card-info{position:relative;height:62px;border-top:1px solid #ebebeb}.card-promo{font-size:16px;font-weight:700;padding:9px 0 4px}.card-promo,.card-view-more{text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.card-view-more{font-size:12px;color:#959595}[class*=tbnow-] .card-img{width:280px;height:168px}[class*=tbnow-] .card-img img{width:100%;height:100%}.alert{position:relative;padding:.75rem 1.25rem;margin-bottom:1rem;border:1px solid transparent;border-radius:3px}.alert-heading{color:inherit}.alert-link{font-weight:700}.alert-dismissible{padding-right:3.8125rem}.alert-dismissible .close{position:absolute;top:0;right:0;padding:.75rem 1.25rem;color:inherit}.alert-primary{color:#01476d;background-color:#cce7f6;border-color:#b8def2}.alert-primary hr{border-top-color:#a2d4ee}.alert-primary .alert-link{color:#01263a}.alert-secondary{color:#4d4d4d;background-color:#eaeaea;border-color:#e1e1e1}.alert-secondary hr{border-top-color:#d4d4d4}.alert-secondary .alert-link{color:#343434}.alert-success{color:#386922;background-color:#e2f4d9;border-color:#d6f0ca}.alert-success hr{border-top-color:#c7eab6}.alert-success .alert-link{color:#234216}.alert-info{color:#066985;background-color:#cef4ff;border-color:#bbf0ff}.alert-info hr{border-top-color:#a2eaff}.alert-info .alert-link{color:#044254}.alert-warning{color:#856404;background-color:#fff3cd;border-color:#ffeeba}.alert-warning hr{border-top-color:#ffe8a1}.alert-warning .alert-link{color:#533f03}.alert-danger{color:#850000;background-color:#fcc;border-color:#ffb8b8}.alert-danger hr{border-top-color:#ff9f9f}.alert-danger .alert-link{color:#520000}.alert-light{color:#7a7a7a;background-color:#fbfbfb;border-color:#f9f9f9}.alert-light hr{border-top-color:#ececec}.alert-light .alert-link{color:#616161}.alert-dark{color:#242424;background-color:#dadada;border-color:#cbcbcb}.alert-dark hr{border-top-color:#bebebe}.alert-dark .alert-link{color:#0b0b0b}.alert-rebranding-primary{color:#7c2817;background-color:#fcdbd5;border-color:#facdc4}.alert-rebranding-primary hr{border-top-color:#f8b9ac}.alert-rebranding-primary .alert-link{color:#511a0f}.badge{display:inline-block;padding:.25em .4em;font-size:75%;font-weight:700;line-height:1;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:3px}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.badge-pill{padding-right:.6em;padding-left:.6em;border-radius:10rem}.badge-primary{color:#fff;background-color:#0288d1}.badge-primary[href]:focus,.badge-primary[href]:hover{color:#fff;text-decoration:none;background-color:#02679e}.badge-secondary{color:#fff;background-color:#959595}.badge-secondary[href]:focus,.badge-secondary[href]:hover{color:#fff;text-decoration:none;background-color:#7c7c7c}.badge-success{color:#252525;background-color:#6cc942}.badge-success[href]:focus,.badge-success[href]:hover{color:#252525;text-decoration:none;background-color:#55a830}.badge-info{color:#252525;background-color:#0ccaff}.badge-info[href]:focus,.badge-info[href]:hover{color:#252525;text-decoration:none;background-color:#00a9d8}.badge-warning{color:#252525;background-color:#ffc107}.badge-warning[href]:focus,.badge-warning[href]:hover{color:#252525;text-decoration:none;background-color:#d39e00}.badge-danger{color:#fff;background-color:red}.badge-danger[href]:focus,.badge-danger[href]:hover{color:#fff;text-decoration:none;background-color:#c00}.badge-light{color:#252525;background-color:#ebebeb}.badge-light[href]:focus,.badge-light[href]:hover{color:#252525;text-decoration:none;background-color:#d2d2d2}.badge-dark{color:#fff;background-color:#464646}.badge-dark[href]:focus,.badge-dark[href]:hover{color:#fff;text-decoration:none;background-color:#2d2d2d}.badge-rebranding-primary{color:#fff;background-color:#ee4d2d}.badge-rebranding-primary[href]:focus,.badge-rebranding-primary[href]:hover{color:#fff;text-decoration:none;background-color:#d73211}.accordion .card:not(:first-of-type):not(:last-of-type){border-bottom:0;border-radius:0}.accordion .card:not(:first-of-type) .card-header:first-child{border-radius:0}.accordion .card:first-of-type{border-bottom:0;border-bottom-right-radius:0;border-bottom-left-radius:0}.accordion .card:last-of-type{border-top-left-radius:0;border-top-right-radius:0}.close{float:right;font-size:1.3125rem;font-weight:700;line-height:1;color:#000;text-shadow:0 1px 0 #fff;opacity:.5}.close:focus,.close:hover{color:#000;text-decoration:none;opacity:.75}.close:not(:disabled):not(.disabled){cursor:pointer}button.close{padding:0;background-color:transparent;border:0;-webkit-appearance:none}.popover{top:0;left:0;z-index:1060;max-width:276px;font-family:-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,sans-serif;font-style:normal;font-weight:400;line-height:1.5;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.813rem;word-wrap:break-word;background-color:#fff;background-clip:padding-box;border:1px solid rgba(0,0,0,.2);border-radius:.3rem}.popover,.popover .arrow{position:absolute;display:block}.popover .arrow{width:1rem;height:.5rem;margin:0 .3rem}.popover .arrow:after,.popover .arrow:before{position:absolute;display:block;content:"";border-color:transparent;border-style:solid}.bs-popover-auto[x-placement^=top],.bs-popover-top{margin-bottom:.5rem}.bs-popover-auto[x-placement^=top] .arrow,.bs-popover-top .arrow{bottom:calc((.5rem + 1px) * -1)}.bs-popover-auto[x-placement^=top] .arrow:after,.bs-popover-auto[x-placement^=top] .arrow:before,.bs-popover-top .arrow:after,.bs-popover-top .arrow:before{border-width:.5rem .5rem 0}.bs-popover-auto[x-placement^=top] .arrow:before,.bs-popover-top .arrow:before{bottom:0;border-top-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=top] .arrow:after,.bs-popover-top .arrow:after{bottom:1px;border-top-color:#fff}.bs-popover-auto[x-placement^=right],.bs-popover-right{margin-left:.5rem}.bs-popover-auto[x-placement^=right] .arrow,.bs-popover-right .arrow{left:calc((.5rem + 1px) * -1);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=right] .arrow:after,.bs-popover-auto[x-placement^=right] .arrow:before,.bs-popover-right .arrow:after,.bs-popover-right .arrow:before{border-width:.5rem .5rem .5rem 0}.bs-popover-auto[x-placement^=right] .arrow:before,.bs-popover-right .arrow:before{left:0;border-right-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=right] .arrow:after,.bs-popover-right .arrow:after{left:1px;border-right-color:#fff}.bs-popover-auto[x-placement^=bottom],.bs-popover-bottom{margin-top:.5rem}.bs-popover-auto[x-placement^=bottom] .arrow,.bs-popover-bottom .arrow{top:calc((.5rem + 1px) * -1)}.bs-popover-auto[x-placement^=bottom] .arrow:after,.bs-popover-auto[x-placement^=bottom] .arrow:before,.bs-popover-bottom .arrow:after,.bs-popover-bottom .arrow:before{border-width:0 .5rem .5rem}.bs-popover-auto[x-placement^=bottom] .arrow:before,.bs-popover-bottom .arrow:before{top:0;border-bottom-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=bottom] .arrow:after,.bs-popover-bottom .arrow:after{top:1px;border-bottom-color:#fff}.bs-popover-auto[x-placement^=bottom] .popover-header:before,.bs-popover-bottom .popover-header:before{position:absolute;top:0;left:50%;display:block;width:1rem;margin-left:-.5rem;content:"";border-bottom:1px solid #f7f7f7}.bs-popover-auto[x-placement^=left],.bs-popover-left{margin-right:.5rem}.bs-popover-auto[x-placement^=left] .arrow,.bs-popover-left .arrow{right:calc((.5rem + 1px) * -1);width:.5rem;height:1rem;margin:.3rem 0}.bs-popover-auto[x-placement^=left] .arrow:after,.bs-popover-auto[x-placement^=left] .arrow:before,.bs-popover-left .arrow:after,.bs-popover-left .arrow:before{border-width:.5rem 0 .5rem .5rem}.bs-popover-auto[x-placement^=left] .arrow:before,.bs-popover-left .arrow:before{right:0;border-left-color:rgba(0,0,0,.25)}.bs-popover-auto[x-placement^=left] .arrow:after,.bs-popover-left .arrow:after{right:1px;border-left-color:#fff}.popover-header{padding:.5rem .75rem;margin-bottom:0;font-size:.875rem;color:inherit;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-top-left-radius:calc(.3rem - 1px);border-top-right-radius:calc(.3rem - 1px)}.popover-header:empty{display:none}.popover-body{padding:.5rem .75rem;color:#464646}.relative{position:relative!important}.noti{color:#d7d7d7;text-align:center;cursor:pointer;line-height:10px;border:1px solid;border-radius:50%;width:15px;height:15px;display:inline-block;padding-left:1px;position:relative;top:-2px}.noti .fas{font-size:8px}.no-border{border:0!important}.link{cursor:pointer}.link:hover{color:#0288d1}.fade{transition:opacity .15s linear}@media screen and (prefers-reduced-motion:reduce){.fade{transition:none}}.fade:not(.show){opacity:0}.collapse:not(.show){display:none}.collapsing{position:relative;height:0;overflow:hidden;transition:height .35s ease}@media screen and (prefers-reduced-motion:reduce){.collapsing{transition:none}}[hidden]{display:none!important}.margin-05{margin-left:5px!important;margin-right:5px!important}.mar-right10{margin-right:10px!important}.mar-top10{margin-top:10px!important}.mar-bottom5{margin-bottom:5px!important}.padding-10{padding:10px}.padding-right-10{padding-right:10px}.topcontrol{position:fixed;right:0;bottom:0;width:40px;background:#c2c2c2;font-size:12px;z-index:999;transition:transform .4s;transform:translateY(100%)}.topcontrol.active{transform:translate(0)}.topcontrol .control-link{text-align:center;display:block;padding:5px 0;white-space:nowrap;position:relative}.topcontrol .control-link:after{content:"";position:absolute;left:0;bottom:0;width:100%;height:1px;background-color:#959595;opacity:.4}.topcontrol .control-link:last-child:after{height:0}.topcontrol .control-link:hover{background-color:#d7d7d7}.topcontrol .control-link:hover label{display:block}.topcontrol .control-link label{color:#464646;position:absolute;background:#ebebeb;top:0;right:100%;bottom:0;padding:10px;margin-bottom:0;display:none}.topcontrol .fab,.topcontrol .fas{font-size:22px;color:#464646}.carousel-control-next,.carousel-control-prev{position:absolute;top:0;bottom:0;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center;width:15%;text-align:center}.carousel-control-prev{cursor:pointer;left:0;width:40px}.carousel-control-next{cursor:pointer;width:40px;right:0}.carousel-control-next-icon,.carousel-control-prev-icon{width:25px;height:50px;background-image:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44);background-position:-17px -139px;background-size:unset;background-color:transparent;position:absolute;left:0;top:46%;transform:translateY(-50%)}.carousel-control-next-icon{background-position:-15px -203px;left:auto;right:0}.banner-full{text-align:center;background-repeat:no-repeat;background-position:50%;margin-bottom:0;background-size:cover;position:relative;overflow:hidden}.banner-full .banner-img{opacity:0;display:block;width:100%}.banner-full .main-content{position:absolute;top:0;bottom:0;left:50%;transform:translate(-50%)}.banner-full .main-content.center{display:table;margin:auto;transform:translate(-50%);width:auto;text-align:left}.banner-full .main-content.center .img-phone{width:auto;position:relative;bottom:-70px;margin-right:40px}.banner-full .main-content.center .banner-info{position:relative;top:0;left:0;transform:translate(0);display:table-cell;vertical-align:middle}.banner-full .img-phone{width:265px;position:absolute;bottom:-145px;left:0}.banner-full .banner-info{color:#fff;font-size:14px;text-align:left;width:425px;position:absolute;top:50%;left:300px;transform:translateY(-50%)}.banner-full .banner-info h2{font-size:22px}.banner-full .banner-info h2,.banner-full .banner-info p{margin-bottom:20px;margin-top:0}.banner-full .btn-apply{font-size:15px;text-align:center;color:#6d6f71;margin-top:15px;width:155px;background-color:#f9f9f9;box-shadow:none;border:0;position:relative;padding:0 25px 1px 0;height:37px;transition:all .2s ease}.banner-full .btn-apply .fas{font-size:12px;color:#6d6f71;border:1px solid;overflow:hidden;border-radius:50%;display:inline-block;width:16px;height:16px;line-height:15px;position:absolute;top:9px;right:10px}.rst-animate-tip{z-index:999;text-align:center;border-radius:50%;display:inline-block;width:20px}.bg-gray5{background-color:#d7d7d7!important}.bg-red{background-color:#cf2127!important}.zoomIn{animation-name:i;animation-duration:.5s;animation-fill-mode:both}.zoomOut{animation-name:j;animation-duration:1s;animation-fill-mode:both}.icon{display:inline-block;font-style:normal;font-variant:normal;text-rendering:auto;line-height:1}.icon-address,.icon-app-phone,.icon-app-store-big,.icon-app-store-lg,.icon-app-store-md,.icon-app-store-sm,.icon-benefit-air-conditioner,.icon-benefit-booking,.icon-benefit-bring-on,.icon-benefit-card,.icon-benefit-delivery,.icon-benefit-disabilities,.icon-benefit-football,.icon-benefit-heater,.icon-benefit-karaoke,.icon-benefit-member,.icon-benefit-music,.icon-benefit-parking,.icon-benefit-parking-free,.icon-benefit-playground,.icon-benefit-pool,.icon-benefit-room,.icon-benefit-seminor,.icon-benefit-smoking,.icon-benefit-sun,.icon-benefit-tennis,.icon-benefit-tip,.icon-benefit-vat,.icon-benefit-wifi,.icon-box,.icon-cash-payment,.icon-cc-payment,.icon-check-green,.icon-clock,.icon-close-gray,.icon-corporate,.icon-discount-airpay,.icon-discount-code,.icon-discount-first-order,.icon-discount-free-ship,.icon-discount-new,.icon-discount-order-group,.icon-discount-order-larger,.icon-gg-play-big,.icon-gg-play-lg,.icon-gg-play-md,.icon-gg-play-sm,.icon-ib-payment,.icon-jcb,.icon-lag-en,.icon-lag-th,.icon-lag-vn,.icon-local-map,.icon-location,.icon-master,.icon-merchant-airpay,.icon-merchant-lg,.icon-merchant-marketing,.icon-merchant-shipper,.icon-merchant-system,.icon-money,.icon-money-sm,.icon-now-payment,.icon-paging-next,.icon-paging-pre,.icon-parnership,.icon-phone,.icon-phone-verified,.icon-phone-white,.icon-pickup,.icon-power-off,.icon-preorder,.icon-price-tag,.icon-promo,.icon-promotion-now,.icon-restaurant,.icon-search,.icon-search-gray,.icon-search-orangen,.icon-sprite,.icon-tablenow,.icon-tablenow-footer,.icon-tb-blog,.icon-tb-dessert,.icon-tb-entertainment,.icon-tb-restaurant,.icon-thumbtack,.icon-time-gray,.icon-time-white,.icon-upload,.icon-user-history,.icon-user-logout,.icon-user-update,.icon-vatnot,.icon-verify-merchant,.icon-via-key,.icon-via-sms,.icon-visa,.modal .close{background-image:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44)}.icon-phone-white{background-position:-631px -10px;width:28px;height:28px}.icon-phone{background-position:-17px -45px;width:20px;height:20px}.icon-tablenow{background-position:-692px -53px;width:84px;height:26px}.icon-tablenow-footer{background-position:-337px -559px;width:114px;height:36px}.icon-time-white{background-position:-669px -10px;width:28px;height:28px}.icon-time-gray{background-position:-707px -10px;width:32px;height:32px}.icon-restaurant{background-position:-51px -326px;width:36px;height:50px}.icon-app-store-sm{background-position:-216px -526px;width:100px;height:32px}.icon-app-store-md{background-position:-216px -466px;width:135px;height:44px}.icon-app-store-lg{background-position:-216px -388px;width:191px;height:62px}.icon-app-store-big{background-position:-422px -387px;width:219px;height:68px}.icon-gg-play-sm{background-position:-10px -526px;width:100px;height:32px}.icon-gg-play-md{background-position:-10px -466px;width:135px;height:44px}.icon-gg-play-lg{background-position:-10px -388px;width:191px;height:62px}.icon-gg-play-big{background-position:-367px -466px;width:219px;height:68px}.icon-quality-merchant{margin-right:2px;width:17px;height:17px}.icon-quality-merchant,.icon-quality-merchant-medi{background-image:url(/app/assets/img/partner2x.png?c0e5f47a050265e19076c2a23ce0544e);background-size:cover}.icon-quality-merchant-medi{width:27px;height:27px}.icon-lag-vn{width:20px;height:20px;background-position:-54px -12px}.icon-lag-en{width:20px;height:20px;background-position:-54px -40px}.icon-lag-th{width:20px;height:20px;background-position:-54px -73px}.icon-search{width:25px;height:25px;background-position:-14px -15px}.icon-search-orangen{width:15px;height:15px;background-position:-783px -10px}.icon-search-dark{width:24px;height:24px;background-image:url(/app/assets/img/search-dark.svg?d823a303f13589fc674bf1d5f00677ad);background-size:cover}.icon-search-gray{width:28px;height:28px;background-position:-428px -335px}.icon-close-gray{width:14px;height:14px;background-position:-482px -335px}.icon-tb-restaurant{background-position:-779px -169px;width:80px;height:80px}.icon-tb-entertainment{background-position:-696px -221px;width:80px;height:80px}.icon-tb-dessert{background-position:-779px -79px;width:80px;height:80px}.icon-tb-blog{background-position:-576px -175px;width:45px;height:45px}.icon-promo{background-position:-631px -52px;width:51px;height:53px}.icon-local-map{width:42px;height:48px;background-position:-338px -279px;position:absolute;left:50%;top:50%;transform:translate3d(-50%,-50%,0);marginTop:-25px}.icon-merchant{width:38px;height:38px;background-image:url(/app/assets/img/merchant.svg?8847ac9477503decbfec9525325c2781);background-color:#ee4d2d;background-position:52% 50%;background-size:50% 50%;background-repeat:no-repeat;border-radius:50%}.icon-merchant-lg{width:80px;height:80px;background-position:-276px -15px}.icon-verify-merchant{width:120px;height:44px;background-position:-10px -272px}.icon-corporate{width:38px;height:38px;background-position:-54px -113px}.icon-user-history{background-position:-100px -79px;background-color:#6cc942}.icon-user-history,.icon-user-update{width:38px;height:38px;border-radius:50%}.icon-user-update{background-position:-100px -116px;background-color:#e2963b}.icon-user-logout{width:38px;height:38px;background-position:-100px -156px;background-color:#6d6f71;border-radius:50%}.icon-paging-pre{width:18px;height:18px;background-position:-196px -60px}.icon-paging-next{width:18px;height:18px;background-position:-196px -93px}.icon-discount-order-larger{width:40px;height:40px;background-position:-190px -272px}.icon-discount-first-order{width:40px;height:40px;background-position:-534px -327px}.icon-discount-airpay{width:40px;height:40px;background-position:-534px -276px}.icon-discount-free-ship{width:40px;height:40px;background-position:-193px -162px}.icon-discount-new{width:40px;height:40px;background-position:-190px -327px}.icon-discount-code{width:40px;height:40px;background-position:-190px -217px}.icon-discount-order-group{width:40px;height:40px;background-position:-651px -333px}.icon-pickup{width:14px;height:14px;background-position:-16px -328px}.icon-vatnot{width:20px;height:20px;background-position:-15px -358px}.icon-arrow-thin{border:solid #252525;border-width:0 2px 2px 0;display:inline-block;padding:3px}.icon-arrow-thin.right{transform:rotate(-45deg)}.icon-arrow-thin.left{transform:rotate(135deg)}.icon-arrow-thin.up{transform:rotate(-135deg)}.icon-arrow-thin.down{transform:rotate(45deg);-webkit-transform:rotate(45deg)}.icon-cash-payment{width:20px;height:20px;background-position:-245px -48px}.icon-now-payment{width:20px;height:20px;background-position:-247px -116px}.icon-cc-payment{width:20px;height:20px;background-position:-246px -82px}.icon-airpay-payment{width:20px;height:20px;background-image:url(/app/assets/img/logoShopeePay.svg?3ad4c41668953624fe33b10e76992527);background-size:cover}.icon-ib-payment{width:20px;height:20px;background-position:-246px -15px}.icon-via-sms{width:14px;height:14px;background-position:-245px -219px}.icon-via-key{width:15px;height:15px;background-position:-245px -190px}.icon-parnership{width:27px;height:27px;background-position:-246px -244px}.icon-box{width:100px;height:102px;background-position:-118px -574px}.icon-app-phone{width:100px;height:102px;background-position:-10px -574px}.icon-money{width:100px;height:102px;background-position:-226px -574px}.icon-money-sm{width:30px;height:30px;background-position:-145px -80px}.icon-price-tag{width:32px;height:32px;background-position:-111px -205px}.icon-merchant-marketing{width:66px;height:66px;background-position:-388px -89px}.icon-merchant-shipper{width:66px;height:66px;background-position:-389px -234px}.icon-merchant-system{width:66px;height:66px;background-position:-378px -165px}.icon-merchant-airpay{width:66px;height:66px;background-position:-382px -15px}.icon-list-deal{position:relative;display:inline-block;width:7px;height:7px}.icon-list-deal .square{width:3px;height:3px;background-color:#0288d1;position:absolute}.icon-list-deal .square:first-child{top:0;left:0}.icon-list-deal .square:nth-child(2){top:0;right:0}.icon-list-deal .square:nth-child(3){left:0;bottom:0}.icon-list-deal .square:nth-child(4){right:0;bottom:0}.icon-jcb{width:85px;height:65px;background-position:-478px -13px}.icon-master{width:85px;height:65px;background-position:-478px -96px}.icon-visa{width:85px;height:65px;background-position:-478px -166px}.icon-power-off{width:28px;height:32px;background-position:-482px -236px}.icon-thumbtack{width:18px;height:28px;background-position:-535px -236px}.icon-location{width:28px;height:28px;background-position:-482px -289px}.icon-phone-verified{width:82px;height:89px;background-position:-244px -278px}.icon-upload{width:41px;height:40px;background-position:-337px -335px}.icon-clock{width:17px;height:21px;background-position:-504px -358px}.icon-address{width:17px;height:21px;background-position:-357px -243px}.icon-promotion-now{width:137px;height:49px;background-position:-631px -115px}.icon-close{color:#fff;text-align:center;line-height:12px;width:16px;height:16px;background-color:#000;border-radius:50%;border:1px solid #fff;font-size:11px;padding-left:1px}.icon-benefit-sun{width:24px;height:24px;background-position:-274px -102px}.icon-benefit-football{width:24px;height:24px;background-position:-302px -126px}.icon-benefit-parking{width:24px;height:24px;background-position:-324px -99px}.icon-benefit-booking{width:24px;height:24px;background-position:-350px -100px}.icon-benefit-delivery{width:24px;height:24px;background-position:-275px -124px}.icon-benefit-parking-free{width:24px;height:24px;background-position:-300px -127px}.icon-benefit-pool{width:24px;height:24px;background-position:-324px -127px}.icon-benefit-seminor{width:24px;height:24px;background-position:-351px -125px}.icon-benefit-smoking{width:24px;height:24px;background-position:-274px -152px}.icon-benefit-karaoke{width:24px;height:24px;background-position:-295px -156px}.icon-benefit-heater{width:24px;height:24px;background-position:-324px -153px}.icon-benefit-air-conditioner{width:24px;height:24px;background-position:-350px -152px}.icon-benefit-bring-on{width:24px;height:24px;background-position:-273px -183px}.icon-benefit-disabilities{width:24px;height:24px;background-position:-298px -185px}.icon-benefit-music{width:24px;height:24px;background-position:-325px -184px}.icon-benefit-room{width:24px;height:24px;background-position:-350px -182px}.icon-benefit-tennis{width:24px;height:24px;background-position:-273px -213px}.icon-benefit-member{width:24px;height:24px;background-position:-298px -210px}.icon-benefit-tip{width:24px;height:24px;background-position:-325px -212px}.icon-benefit-card{width:24px;height:24px;background-position:-353px -209px}.icon-benefit-playground{width:24px;height:24px;background-position:-276px -239px}.icon-benefit-wifi{width:24px;height:24px;background-position:-305px -238px}.icon-benefit-vat{width:24px;height:24px;background-position:-329px -240px}.icon-preorder{width:100px;height:90px;background-position:-585px -234px}.icon-check-green{width:30px;height:30px;background-position:-701px -333px}.icon-check{border:solid #252525;border-width:0 2px 2px 0;display:inline-block;padding:3px;transform:rotate(45deg)}.icon-check-circle-green{background-color:#15cc5e;border-radius:50%;width:60px;height:60px;position:relative;z-index:3}.icon-check-circle-green:before{content:"";border:solid #fff;border-width:0 2px 2px 0;position:absolute;z-index:3;padding:8px;transform:rotate(45deg) translate(-119%,-31%);top:50%;height:35px;left:50%}.icon-cancel{width:60px;height:60px;position:relative;z-index:2;background-color:#d75a4a;border-radius:50%}.icon-cancel:after,.icon-cancel:before{content:" ";position:absolute;left:50%;top:50%;height:36px;width:2px;background-color:#fff;margin-top:-18px}.icon-cancel:before{transform:rotate(45deg)}.icon-cancel:after{transform:rotate(-45deg)}@font-face{font-family:Now;src:url(/app/assets/font/now.eot?a3fbd34cc6e2738f96b951fd28c1d5af);src:url(/app/assets/font/now.eot?a3fbd34cc6e2738f96b951fd28c1d5af#iefix) format("embedded-opentype"),url(/app/assets/font/now.ttf?735d32c2c6ff9c01ebbdf854f9ddc083) format("truetype"),url(/app/assets/font/now.woff?4cf7d910603ae5d9b118a686ff9ace0b) format("woff"),url(/app/assets/img/now.svg?9dfad64de332e76f6764810b98437b92#Now) format("svg");font-weight:400;font-style:normal}[class*=" icon-now-"],[class^=icon-now-]{font-family:Now!important;speak:none;font-style:normal;font-weight:400;font-variant:normal;text-transform:none;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.icon-now-promo-code-o:before{content:"\E90C"}.icon-now-promo-code:before{content:"\E90A"}.icon-now-cash-back:before{content:"\E901"}.icon-now-free-ship:before{content:"\E902"}.icon-now-Item-discount:before{content:"\E903"}.icon-now-angle-down:before{content:"g"}.icon-now-angle-left:before{content:"h"}.icon-now-angle-right:before{content:"i"}.icon-now-angle-up:before{content:"j"}.icon-now-close:before{content:"o"}.icon-now-bed:before{content:"l"}.icon-now-bell:before{content:"m"}.icon-now-bell-o:before{content:"n"}.icon-now-cart:before{content:"r"}.icon-now-card:before{content:"s"}.icon-now-photo-add:before{content:">"}.icon-now-camera-alt:before{content:"t"}.icon-now-camera:before{content:"u"}.icon-now-calendar:before{content:"v"}.icon-now-bookmark-o:before{content:"w"}.icon-now-bookmark-check:before{content:"x"}.icon-now-bookmark2-o:before{content:"y"}.icon-now-bookmark:before{content:"z"}.icon-now-bookmark2:before{content:"A"}.icon-now-coin:before{content:"B"}.icon-now-comment:before{content:"C"}.icon-now-comment-alt:before{content:"D"}.icon-now-comments:before{content:"E"}.icon-now-coupon-circle:before{content:"F"}.icon-now-delete:before{content:"G"}.icon-now-momo:before{content:"\E909"}.icon-now-airpay:before{content:"\E900"}.icon-now-tablenow-circle:before{content:"\E000"}.icon-now-tablenow:before{content:"\E001"}.icon-now-delivery:before{content:"H"}.icon-now-delivery-circle:before{content:"I"}.icon-now-foody:before{content:"R"}.icon-now-foody-circle:before{content:"Q"}.icon-now-facebook:before{content:"W"}.icon-now-messenger:before{content:","}.icon-now-android:before{content:"f"}.icon-now-apple:before{content:"k"}.icon-now-google:before{content:"\E013"}.icon-now-send-mail:before{content:"\E009"}.icon-now-email:before{content:"J"}.icon-now-envelope:before{content:"K"}.icon-now-error:before{content:"L"}.icon-now-eye:before{content:"M"}.icon-now-eye-hide:before{content:"N"}.icon-now-gps:before{content:"O"}.icon-now-gallery:before{content:"P"}.icon-now-copy-o:before{content:"\E014"}.icon-now-copy:before{content:"\E90B"}.icon-now-food-tool:before{content:"S"}.icon-now-food:before{content:"T"}.icon-now-filter:before{content:"U"}.icon-now-fdc:before{content:"V"}.icon-now-hashtag:before{content:"1"}.icon-now-heart:before{content:"2"}.icon-now-heart-o:before{content:"3"}.icon-now-history:before{content:"4"}.icon-now-home:before{content:"5"}.icon-now-home-o:before{content:"6"}.icon-now-info-alt:before{content:"7"}.icon-now-label:before{content:"8"}.icon-now-link:before{content:"9"}.icon-now-loading:before{content:"!"}.icon-now-map:before{content:"/"}.icon-now-map-alt:before{content:"."}.icon-now-location-arrow:before{content:'"'}.icon-now-add-location:before{content:"a"}.icon-now-location-pin:before{content:"#"}.icon-now-location-pin-o:before{content:"$"}.icon-now-check-in:before{content:"q"}.icon-now-write:before{content:"b"}.icon-now-pencil:before{content:"%"}.icon-now-paper-plane:before{content:"&"}.icon-now-new-window:before{content:"'"}.icon-now-mountain:before{content:"("}.icon-now-money:before{content:"*"}.icon-now-more-button:before{content:")"}.icon-now-plus:before{content:"["}.icon-now-minus:before{content:"+"}.icon-now-long-arrow-right:before{content:":"}.icon-now-arrow-top:before{content:"\E904"}.icon-now-frame:before{content:"\E905"}.icon-now-menu:before{content:"-"}.icon-now-lock:before{content:";"}.icon-now-phone:before{content:"<"}.icon-now-agenda:before{content:"d"}.icon-now-viber:before{content:"\E00F"}.icon-now-phone-old:before{content:"="}.icon-now-pick-up:before{content:"?"}.icon-now-plane:before{content:"@"}.icon-now-power-off:before{content:"]"}.icon-now-price-tag:before{content:"^"}.icon-now-receipt:before{content:"_"}.icon-now-first-order:before{content:"\E906"}.icon-now-receipt-o:before{content:"`"}.icon-now-reply:before{content:"{"}.icon-now-search:before{content:"|"}.icon-now-self-order-circle:before{content:"\E00A"}.icon-now-self-order:before{content:"}"}.icon-now-thumbs-up:before{content:"~"}.icon-now-tag:before{content:"\\"}.icon-now-star-o:before{content:"\E002"}.icon-now-star-h:before{content:"\E003"}.icon-now-star:before{content:"\E004"}.icon-now-share-alt:before{content:"\E005"}.icon-now-settings-2:before{content:"\E007"}.icon-now-settings:before{content:"\E008"}.icon-now-checked:before{content:"p"}.icon-now-tick:before{content:"\E00B"}.icon-now-clock:before{content:"\E016"}.icon-now-time:before{content:"\E00C"}.icon-now-face-sad:before{content:"X"}.icon-now-face-kiss:before{content:"0"}.icon-now-face-normal:before{content:"Y"}.icon-now-face-happiness:before{content:"Z"}.icon-now-user:before{content:"\E00D"}.icon-now-add-user:before{content:"c"}.icon-now-NewUser:before{content:"\E907"}.icon-now-user-o:before{content:"\E00E"}.icon-now-GroupOrderDiscount:before{content:"\E908"}.icon-now-video:before{content:"\E010"}.icon-now-wifi-no:before{content:"\E011"}.icon-now-world:before{content:"\E012"}.icon-now-momo{font-size:20px;color:#ae2070}.icon-discount{height:40px;width:40px;border-radius:5px;text-align:center;padding-top:12px;color:#fff;background-color:#5b87c5}.svg-icon{height:20px;width:20px;display:inline-block;fill:currentColor;vertical-align:middle}.svg-icon-15{width:15px;height:15px}.svg-weather-cold{background-image:url(/app/assets/img/svg-weather-cold.svg?15f60807b78fe5f3d27e54e0c08dd98e)}.svg-weather-cold,.svg-weather-hot{vertical-align:text-bottom!important}.svg-weather-hot{background-image:url(/app/assets/img/svg-weather-hot.svg?50ddf3b5d303652c206094bcf45f9cd3)}.svg-weather-storm{background-image:url(/app/assets/img/svg-weather-storm.svg?12640d8ad060892c10842934c9586e14);vertical-align:text-bottom!important}.svg-weather-heavy-rain{background-image:url(/app/assets/img/svg-weather-heavy-rain.svg?f792c76777f9afa89b44abb06fa5fa56);vertical-align:text-bottom!important}.txt-bold{font-weight:700!important}.text-semibold{font-weight:600}.txt-black{color:#000!important}.txt-white{color:#fff!important}.txt-blue{color:#0288d1!important}.txt-red,.txt-red-dark{color:#ee4d2d!important}.txt-green{color:#329900!important}.txt-yellow{color:#ffc107!important}.txt-cyan{color:#0ccaff!important}.txt-cyan2{color:#00a2d3!important}.txt-cyan-dark{color:#07a99b!important}.txt-orangen{color:#f37934!important}.txt-gray-6{color:#959595!important}.txt-gray-7{color:#6d6f71!important}.txt-gray-8{color:#464646!important}.txt-gray-9{color:#252525!important}.txt-center{text-align:center!important}.txt-right{text-align:right!important}.txt-elipsis{text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.font70{font-size:4.375rem!important}.font45{font-size:2.813rem!important}.font44{font-size:2.75rem!important}.font42{font-size:42px;font-size:2.625rem}.font36{font-size:2.25rem!important}.font35{font-size:2.188rem!important}.font30{font-size:1.875rem!important}.font26{font-size:1.625rem!important}.font24{font-size:1.5rem!important}.font22{font-size:1.375rem!important}.font20{font-size:20px!important}.font18{font-size:1.125rem!important}.font17{font-size:17px!important}.font16{font-size:1rem!important}.font13{font-size:.813rem!important}.font12{font-size:.75rem!important}.font11{font-size:.688rem!important}@keyframes a{0%{transform:rotate(0deg)}to{transform:rotate(1turn)}}@keyframes b{0%{background-position:-350px 0}to{background-position:400px 0}}@keyframes c{to{transform:rotate(1turn)}}@keyframes d{50%{transform:translate(20px,20px)}}@keyframes e{50%{transform:translate(-20px,20px)}}@keyframes f{50%{transform:translate(20px,-20px)}}@keyframes g{50%{transform:translate(-20px,-20px)}}@keyframes h{to{border-width:0}}@keyframes i{0%{opacity:0;transform:scale3d(.3,.3,.3)}30%{opacity:0}70%{opacity:1}}@keyframes j{0%{opacity:1}50%{opacity:0;transform:scale3d(.3,.3,.3)}to{opacity:0}}.now-list-restaurant{border-radius:6px;margin-bottom:20px;position:relative}.now-list-restaurant.res-col-4 .item-restaurant{width:25%}.now-list-restaurant.res-col-4 .img-restaurant{height:175px}.now-list-restaurant.res-col-4 .box-loading{width:25%}.now-list-restaurant .list-restaurant{margin:0 -10px;position:relative}.now-list-restaurant .list-restaurant:after{display:block;clear:both;content:""}.now-list-restaurant .list-restaurant.row-3{padding-bottom:20px}.now-list-restaurant .item-restaurant{width:20%;padding:10px;float:left}.now-list-restaurant .item-restaurant .tag-preferred{text-transform:none;position:absolute;background:#f13233;color:#fff;bottom:5px;left:7px;z-index:1;padding:3px 5px}.now-list-restaurant .item-restaurant .tag-preferred i{padding-left:2px;padding-right:5px}.now-list-restaurant .item-restaurant:first-child{padding-left:12px}.now-list-restaurant .item-content{cursor:pointer;border-radius:6px;background-color:#fff;position:relative;display:block}.now-list-restaurant .item-content:hover{transition:box-shadow .25s;box-shadow:0 2px 2px 0 rgba(0,0,0,.2),0 4px 15px 0 rgba(0,0,0,.19);text-decoration:none}.now-list-restaurant .info-restaurant{border:1px solid #d7d7d7;border-radius:0 0 6px 6px;height:84px}.now-list-restaurant .info-restaurant .name-res{font-size:14px;font-weight:700;color:#252525;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;margin-bottom:1px;padding-top:5px}.now-list-restaurant .info-restaurant .icon-quality-merchant{vertical-align:bottom}.now-list-restaurant .info-restaurant .address-res{font-size:12px;color:#959595;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.now-list-restaurant .content-promotion{font-size:13px;color:#187caa;font-weight:700;padding:8px 8px 5px;margin:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.now-list-restaurant .content-promotion .fas{color:#cf2127}.now-list-restaurant .kind-restaurant{font-size:12px;color:#959595;text-transform:uppercase;padding:8px 8px 6px;margin-bottom:0;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.now-list-restaurant .img-restaurant{position:relative;border-radius:6px 6px 0 0;overflow:hidden;height:137px;background:#eaeaea}.now-list-restaurant .img-restaurant img{width:auto;height:100%;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%)}.now-list-restaurant .info-basic-res{padding:5px 8px;border-bottom:1px solid #ebebeb}.now-list-restaurant .carousel-control-prev{left:10px}.now-list-restaurant .carousel-control-next{right:9px}.now-list-restaurant-row{background-color:#fff;padding-bottom:10px}.now-list-restaurant-row .item-content{position:relative;display:block}.now-list-restaurant-row .item-content:hover{box-shadow:none}.now-list-restaurant-row .item-restaurant{width:100%}.now-list-restaurant-row .img-restaurant{width:142px;height:90px;border-radius:4px}.now-list-restaurant-row .info-restaurant{height:inherit;border:0;padding-left:15px}.now-list-restaurant-row .info-restaurant .icon-quality-merchant{vertical-align:middle;margin-top:-3px}.now-list-restaurant-row .info-restaurant .name-res{font-size:16px;padding-top:0;margin-top:-3px}.now-list-restaurant-row .info-restaurant .address-res{font-size:14px}.now-list-restaurant-row .item-res-distant{color:#9fa9aa;font-size:14px}.now-list-restaurant-row .item-res-info{font-size:14px;color:#000;position:relative}.now-list-restaurant-row .item-res-info .col-time{position:absolute;top:0;right:0}.now-list-restaurant-row .item-res-info .col-time .far{color:#9fa9aa}.now-list-restaurant-row .item-res-info .icon{zoom:.5;-moz-transform:scale(.5);-moz-transform-origin:0 0;margin-right:10px;vertical-align:sub}@supports (-moz-appearance:none){.now-list-restaurant-row .item-res-info{height:20px}.now-list-restaurant-row .item-res-info .icon{margin-right:-10px;-moz-transform-origin:0 5px;vertical-align:-moz-middle-with-baseline}}.now-list-restaurant-row .carousel-control-prev{left:-32px}.now-list-restaurant-row .carousel-control-next{right:-32px}.now-list-restaurant-row .kind-restaurant{padding:5px 8px 0 0}.opentime-status{position:absolute;top:-2px;left:-2px;z-index:1}.opentime-status:after{content:"";position:absolute;top:-1px;left:-1px;right:-1px;bottom:-1px;background-color:#fff;border-radius:50%;z-index:1}.opentime-status .stt{border-radius:50%;cursor:pointer;width:15px;height:15px;display:block;position:relative;z-index:2}.opentime-status .online{background-color:#6cc942;color:#329900}.opentime-status .offline{background-color:#6d6f71;color:#6d6f71}.opentime-status .busy{background-color:#cf2127;color:#cf2127}.item-restaurant-row .item-restaurant-img img{width:60px}.item-restaurant-row .item-restaurant-name{color:#464646;font-size:16px;cursor:pointer;line-height:1.3em;font-weight:700;margin-bottom:0}.item-restaurant-row .item-restaurant-desc{font-size:13px;color:#464646;display:block;padding-top:5px;line-height:1.6em}.item-restaurant-row .item-restaurant-total{font-size:11px;color:#9fa9aa}.item-restaurant-row .item-restaurant-total .txt-bold{color:#464646}.item-restaurant-row .old-price{font-size:13px;text-decoration:line-through;color:#6d6f71}.item-restaurant-row .current-price{font-size:16px;font-weight:700;color:#0288d1}.unit{font-weight:400;position:relative;top:-9px;font-size:10px;right:0}.now-order-card-group .order-card-user{color:#464646;background-color:#ebebeb;padding:4px 15px}.now-order-card-group .order-card-user .col-auto{padding:0}.now-order-card-group .order-card-user .avatar img{width:30px;border-radius:50%}.now-order-card-group .order-card-user .user-name{color:#6d6f71;font-weight:700;text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.now-order-card-group .order-card-item{padding:6px 10px;border-bottom:1px solid #ebebeb}.now-order-card-group .order-card-item button:disabled{opacity:.6;cursor:no-drop}.now-order-card-group .order-card-item .fa-plus-square{color:#329900;border:0;background:transparent;padding:0}.now-order-card-group .order-card-item .fa-minus-square{color:#464646;border:0;background:transparent;padding:0}.now-order-card-group .order-card-item .name-order{font-size:13px;font-weight:700;color:#464646}.now-order-card-group .order-card-item .note-topping{font-size:11px;color:#6d6f71}.now-order-card-group .order-card-item .note-order input{font-size:12px;border:0;padding:0;width:210px}.now-order-card-group .order-card-item .note-order input:focus{outline:none}.now-order-card-group .order-card-item .note-order ::-webkit-input-placeholder{opacity:.6}.now-order-card-group .order-card-item .note-order ::-ms-input-placeholder{opacity:.6}.now-order-card-group .order-card-item .note-order ::placeholder{opacity:.6}.now-order-card-group .order-card-item .price-order{font-size:13px;float:right}.now-order-card-group .order-card-item .old-price{text-decoration:line-through;font-size:13px;float:right}.now-order-card-group .order-card-price{font-size:15px;color:#263e82;display:block;clear:both;padding-top:4px}.now-loading-restaurant{z-index:2;display:none;overflow:hidden}.now-loading-restaurant .box-loading{width:20%;padding:8px;float:left;height:235px;background-color:#fff;margin-bottom:6px}.now-loading-restaurant [class*=box-line]{height:12px;width:400px;background:#d7d7d7;margin-bottom:13px;display:block;float:left}.now-loading-restaurant .box-thumbnail,.now-loading-restaurant [class*=box-line]{animation:b;animation-duration:1s;animation-timing-function:linear;animation-iteration-count:infinite;background:linear-gradient(90deg,#eee 8%,#ddd 18%,#eee 33%);background-size:800px auto}.now-loading-restaurant .box-thumbnail{height:137px;width:100%;float:left;display:block;margin-bottom:10px}.now-loading-restaurant .box-line-df{width:60%}.now-loading-restaurant .box-line-lgx{width:80%}.now-loading-restaurant .box-line-lg{width:50%}.now-other-restaurant .item-restaurant{padding:5px;float:left;width:50%}.now-other-restaurant .content-order{padding:12px;border-radius:4px;background-color:#fff;position:relative;display:block}.now-other-restaurant .content-order img{width:100%;display:block;height:181px}.now-other-restaurant .name-restaurant{position:absolute;bottom:12px;left:12px;right:12px;background-color:rgba(0,0,0,.5);padding:8px 5px;color:#fff}.now-incoming .incoming-item{margin-bottom:20px;height:270px;border-radius:6px;position:relative}.now-incoming .incoming-item:after{display:block;clear:both;content:""}.now-incoming .incoming-map{width:30%;height:100%;float:left;position:relative;background-color:#464646;border-radius:6px 0 0 6px;overflow:hidden}.now-incoming .incoming-content{width:70%;height:100%;float:left;position:relative;padding:10px;border-radius:0 6px 6px 0;background-color:#fff;-webkit-user-select:text;-moz-user-select:text;-ms-user-select:text;user-select:text}.now-incoming .incoming-summary{padding-left:76px}.now-incoming .incoming-summary .res-name{color:#464646;font-weight:700;text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.now-incoming .incoming-processing{padding-top:10px}.now-incoming .incoming-processing .incoming-steps{position:relative;padding-right:10px;overflow:hidden}.now-incoming .incoming-processing .step-item{position:relative;float:left;width:20%;text-align:center}.now-incoming .incoming-processing .step-item:after{content:"";height:4px;position:absolute;top:15px;left:0;right:0;background-color:#ebebeb;z-index:1}.now-incoming .incoming-processing .step-item:first-child:after{left:50%}.now-incoming .incoming-processing .step-item:last-child:after{right:50%}.now-incoming .incoming-processing .step-item.active .step-number{background-color:#329900}.now-incoming .incoming-processing .step-item.active .step-name{color:#252525;font-weight:700;white-space:nowrap}.now-incoming .incoming-processing .step-item.processing{background-color:transparent}.now-incoming .incoming-processing .step-item.processing .step-number{background-color:#b6f29b!important}.now-incoming .incoming-processing .step-item.processing .step-number:after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;border-radius:50%;background-color:#b6f29b}.now-incoming .incoming-processing .step-item.processing .step-number:before{content:"";animation:h 1s linear infinite normal;position:absolute;border:12px solid #329900;top:-3px;left:-3px;right:-3px;bottom:-3px;border-radius:50%;z-index:2}.now-incoming .incoming-processing .step-name{color:#959595;display:block;padding-top:34px}.now-incoming .incoming-processing .step-number{font-size:11px;color:#fff;text-align:center;line-height:18px;display:inline-block;background-color:#9fa9aa;border-radius:50%;overflow:hidden;z-index:3;position:absolute;top:5px;left:50%;transform:translate(-50%);width:22px;height:22px;border:2px solid #fff}.now-incoming .incoming-processing .incoming-step-content{font-size:12px;color:#252525;position:relative;background-color:#ebebeb;border-radius:6px;padding:10px 8px;margin-top:12px;margin-bottom:14px}.now-incoming .incoming-processing .incoming-step-content:after{content:"";width:0;height:0;border-left:5px solid transparent;border-right:5px solid transparent;border-bottom:7px solid #ebebeb;position:absolute;bottom:100%;left:9%}.now-incoming .incoming-processing .incoming-step-content.step2:after{left:29%}.now-incoming .incoming-processing .incoming-step-content.step3:after{left:48.5%}.now-incoming .incoming-processing .incoming-step-content.step4:after{left:68.2%}.now-incoming .incoming-processing .incoming-step-content.step5:after{left:88%}.now-incoming .incoming-contact .btn{font-size:12px;margin-right:14px}.now-incoming .btn-detail{font-size:12px;padding:3px 15px}.now-incoming .btn-chat{width:50px;height:26px;position:relative}.now-incoming .btn-chat .noti{position:absolute;top:0;right:0;width:16px;height:16px;border-radius:50%;border:3px solid #fff;background-color:#cf2127;margin-top:-8px;margin-right:-8px}.now-incoming .contact-phone{display:inline-block}.now-incoming .contact-phone .icon{vertical-align:bottom}.now-incoming .incoming-countdown{position:absolute;top:10px;left:10px;border:2px solid #0288d1;border-radius:50%}.now-incoming .incoming-countdown .circle-rotate{margin:0 auto;position:relative;width:56px;height:56px;background:transparent;animation:a 30s linear 0s infinite normal none}.now-incoming .incoming-countdown .circle{position:absolute;top:4px;left:3px;width:8px;height:8px;border-radius:50%;border:2px solid #fff;background:#0288d1}.now-incoming .incoming-countdown .incoming-time{color:#252525;font-weight:700;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);text-align:center}.now-incoming .incoming-countdown .incoming-time-type{text-transform:uppercase}.now-incoming.incoming-full{margin-bottom:35px}.now-incoming.incoming-full .incoming-content{padding-left:50px;padding-right:20px}.now-incoming.incoming-full .incoming-countdown{left:50px}.now-incoming.incoming-full .incoming-processing .step-number{font-size:14px;line-height:25px;width:30px;height:30px}.now-incoming.incoming-full .incoming-processing .step-item:after{top:31%}.now-incoming.incoming-full .incoming-processing .step-item.processing .step-number:before{border-width:17px}.now-incoming.incoming-full .incoming-processing .step-name{padding-top:40px}.now-loading-restaurant.tbnow-loading{width:100%}.now-loading-restaurant.tbnow-loading .box-thumbnail{height:166px}.now-loading-restaurant.tbnow-loading .box-loading{width:25%;height:292px}.align-baseline{vertical-align:baseline!important}.align-top{vertical-align:top!important}.align-middle{vertical-align:middle!important}.align-bottom{vertical-align:bottom!important}.align-text-bottom{vertical-align:text-bottom!important}.align-text-top{vertical-align:text-top!important}.bg-primary{background-color:#0288d1!important}a.bg-primary:focus,a.bg-primary:hover,button.bg-primary:focus,button.bg-primary:hover{background-color:#02679e!important}.bg-secondary{background-color:#959595!important}a.bg-secondary:focus,a.bg-secondary:hover,button.bg-secondary:focus,button.bg-secondary:hover{background-color:#7c7c7c!important}.bg-success{background-color:#6cc942!important}a.bg-success:focus,a.bg-success:hover,button.bg-success:focus,button.bg-success:hover{background-color:#55a830!important}.bg-info{background-color:#0ccaff!important}a.bg-info:focus,a.bg-info:hover,button.bg-info:focus,button.bg-info:hover{background-color:#00a9d8!important}.bg-warning{background-color:#ffc107!important}a.bg-warning:focus,a.bg-warning:hover,button.bg-warning:focus,button.bg-warning:hover{background-color:#d39e00!important}.bg-danger{background-color:red!important}a.bg-danger:focus,a.bg-danger:hover,button.bg-danger:focus,button.bg-danger:hover{background-color:#c00!important}.bg-light{background-color:#ebebeb!important}a.bg-light:focus,a.bg-light:hover,button.bg-light:focus,button.bg-light:hover{background-color:#d2d2d2!important}.bg-dark{background-color:#464646!important}a.bg-dark:focus,a.bg-dark:hover,button.bg-dark:focus,button.bg-dark:hover{background-color:#2d2d2d!important}.bg-rebranding-primary{background-color:#ee4d2d!important}a.bg-rebranding-primary:focus,a.bg-rebranding-primary:hover,button.bg-rebranding-primary:focus,button.bg-rebranding-primary:hover{background-color:#d73211!important}.bg-white{background-color:#fff!important}.bg-transparent{background-color:transparent!important}.border{border:1px solid #d7d7d7!important}.border-top{border-top:1px solid #d7d7d7!important}.border-right{border-right:1px solid #d7d7d7!important}.border-bottom{border-bottom:1px solid #d7d7d7!important}.border-left{border-left:1px solid #d7d7d7!important}.border-0{border:0!important}.border-top-0{border-top:0!important}.border-right-0{border-right:0!important}.border-bottom-0{border-bottom:0!important}.border-left-0{border-left:0!important}.border-primary{border-color:#0288d1!important}.border-secondary{border-color:#959595!important}.border-success{border-color:#6cc942!important}.border-info{border-color:#0ccaff!important}.border-warning{border-color:#ffc107!important}.border-danger{border-color:red!important}.border-light{border-color:#ebebeb!important}.border-dark{border-color:#464646!important}.border-rebranding-primary{border-color:#ee4d2d!important}.border-white{border-color:#fff!important}.rounded{border-radius:3px!important}.rounded-top{border-top-left-radius:3px!important}.rounded-right,.rounded-top{border-top-right-radius:3px!important}.rounded-bottom,.rounded-right{border-bottom-right-radius:3px!important}.rounded-bottom,.rounded-left{border-bottom-left-radius:3px!important}.rounded-left{border-top-left-radius:3px!important}.rounded-circle{border-radius:50%!important}.rounded-0{border-radius:0!important}.clearfix:after{display:block;clear:both;content:""}.d-none{display:none!important}.d-inline{display:inline!important}.d-inline-block{display:inline-block!important}.d-block{display:block!important}.d-table{display:table!important}.d-table-row{display:table-row!important}.d-table-cell{display:table-cell!important}.d-flex{display:-ms-flexbox!important;display:flex!important}.d-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}@media (min-width:576px){.d-sm-none{display:none!important}.d-sm-inline{display:inline!important}.d-sm-inline-block{display:inline-block!important}.d-sm-block{display:block!important}.d-sm-table{display:table!important}.d-sm-table-row{display:table-row!important}.d-sm-table-cell{display:table-cell!important}.d-sm-flex{display:-ms-flexbox!important;display:flex!important}.d-sm-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:768px){.d-md-none{display:none!important}.d-md-inline{display:inline!important}.d-md-inline-block{display:inline-block!important}.d-md-block{display:block!important}.d-md-table{display:table!important}.d-md-table-row{display:table-row!important}.d-md-table-cell{display:table-cell!important}.d-md-flex{display:-ms-flexbox!important;display:flex!important}.d-md-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:992px){.d-lg-none{display:none!important}.d-lg-inline{display:inline!important}.d-lg-inline-block{display:inline-block!important}.d-lg-block{display:block!important}.d-lg-table{display:table!important}.d-lg-table-row{display:table-row!important}.d-lg-table-cell{display:table-cell!important}.d-lg-flex{display:-ms-flexbox!important;display:flex!important}.d-lg-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media (min-width:1200px){.d-xl-none{display:none!important}.d-xl-inline{display:inline!important}.d-xl-inline-block{display:inline-block!important}.d-xl-block{display:block!important}.d-xl-table{display:table!important}.d-xl-table-row{display:table-row!important}.d-xl-table-cell{display:table-cell!important}.d-xl-flex{display:-ms-flexbox!important;display:flex!important}.d-xl-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}@media print{.d-print-none{display:none!important}.d-print-inline{display:inline!important}.d-print-inline-block{display:inline-block!important}.d-print-block{display:block!important}.d-print-table{display:table!important}.d-print-table-row{display:table-row!important}.d-print-table-cell{display:table-cell!important}.d-print-flex{display:-ms-flexbox!important;display:flex!important}.d-print-inline-flex{display:-ms-inline-flexbox!important;display:inline-flex!important}}.embed-responsive{position:relative;display:block;width:100%;padding:0;overflow:hidden;background:#f2f2f2}.embed-responsive:before{display:block;content:""}.embed-responsive .embed-responsive-item,.embed-responsive embed,.embed-responsive iframe,.embed-responsive object,.embed-responsive video{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive .embed-responsive-img{position:absolute;width:100%;top:0;z-index:1;left:0}.embed-responsive-21by9:before{padding-top:42.85714%}.embed-responsive-16by9:before{padding-top:56.25%}.embed-responsive-4by3:before{padding-top:75%}.embed-responsive-1by1:before{padding-top:100%}.embed-foody:before{padding-top:57.25%}.flex-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-center{-ms-flex-align:center!important;align-items:center!important}.align-items-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}@media (min-width:576px){.flex-sm-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-sm-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-sm-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-sm-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-sm-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-sm-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-sm-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-sm-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-sm-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-sm-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-sm-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-sm-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-sm-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-sm-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-sm-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-sm-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-sm-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-sm-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-sm-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-sm-center{-ms-flex-align:center!important;align-items:center!important}.align-items-sm-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-sm-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-sm-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-sm-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-sm-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-sm-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-sm-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-sm-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-sm-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-sm-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-sm-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-sm-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-sm-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-sm-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:768px){.flex-md-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-md-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-md-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-md-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-md-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-md-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-md-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-md-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-md-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-md-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-md-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-md-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-md-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-md-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-md-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-md-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-md-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-md-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-md-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-md-center{-ms-flex-align:center!important;align-items:center!important}.align-items-md-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-md-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-md-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-md-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-md-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-md-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-md-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-md-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-md-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-md-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-md-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-md-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-md-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-md-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:992px){.flex-lg-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-lg-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-lg-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-lg-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-lg-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-lg-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-lg-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-lg-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-lg-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-lg-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-lg-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-lg-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-lg-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-lg-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-lg-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-lg-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-lg-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-lg-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-lg-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-lg-center{-ms-flex-align:center!important;align-items:center!important}.align-items-lg-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-lg-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-lg-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-lg-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-lg-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-lg-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-lg-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-lg-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-lg-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-lg-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-lg-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-lg-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-lg-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-lg-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}@media (min-width:1200px){.flex-xl-row{-ms-flex-direction:row!important;flex-direction:row!important}.flex-xl-column{-ms-flex-direction:column!important;flex-direction:column!important}.flex-xl-row-reverse{-ms-flex-direction:row-reverse!important;flex-direction:row-reverse!important}.flex-xl-column-reverse{-ms-flex-direction:column-reverse!important;flex-direction:column-reverse!important}.flex-xl-wrap{-ms-flex-wrap:wrap!important;flex-wrap:wrap!important}.flex-xl-nowrap{-ms-flex-wrap:nowrap!important;flex-wrap:nowrap!important}.flex-xl-wrap-reverse{-ms-flex-wrap:wrap-reverse!important;flex-wrap:wrap-reverse!important}.flex-xl-fill{-ms-flex:1 1 auto!important;flex:1 1 auto!important}.flex-xl-grow-0{-ms-flex-positive:0!important;flex-grow:0!important}.flex-xl-grow-1{-ms-flex-positive:1!important;flex-grow:1!important}.flex-xl-shrink-0{-ms-flex-negative:0!important;flex-shrink:0!important}.flex-xl-shrink-1{-ms-flex-negative:1!important;flex-shrink:1!important}.justify-content-xl-start{-ms-flex-pack:start!important;justify-content:flex-start!important}.justify-content-xl-end{-ms-flex-pack:end!important;justify-content:flex-end!important}.justify-content-xl-center{-ms-flex-pack:center!important;justify-content:center!important}.justify-content-xl-between{-ms-flex-pack:justify!important;justify-content:space-between!important}.justify-content-xl-around{-ms-flex-pack:distribute!important;justify-content:space-around!important}.align-items-xl-start{-ms-flex-align:start!important;align-items:flex-start!important}.align-items-xl-end{-ms-flex-align:end!important;align-items:flex-end!important}.align-items-xl-center{-ms-flex-align:center!important;align-items:center!important}.align-items-xl-baseline{-ms-flex-align:baseline!important;align-items:baseline!important}.align-items-xl-stretch{-ms-flex-align:stretch!important;align-items:stretch!important}.align-content-xl-start{-ms-flex-line-pack:start!important;align-content:flex-start!important}.align-content-xl-end{-ms-flex-line-pack:end!important;align-content:flex-end!important}.align-content-xl-center{-ms-flex-line-pack:center!important;align-content:center!important}.align-content-xl-between{-ms-flex-line-pack:justify!important;align-content:space-between!important}.align-content-xl-around{-ms-flex-line-pack:distribute!important;align-content:space-around!important}.align-content-xl-stretch{-ms-flex-line-pack:stretch!important;align-content:stretch!important}.align-self-xl-auto{-ms-flex-item-align:auto!important;align-self:auto!important}.align-self-xl-start{-ms-flex-item-align:start!important;align-self:flex-start!important}.align-self-xl-end{-ms-flex-item-align:end!important;align-self:flex-end!important}.align-self-xl-center{-ms-flex-item-align:center!important;align-self:center!important}.align-self-xl-baseline{-ms-flex-item-align:baseline!important;align-self:baseline!important}.align-self-xl-stretch{-ms-flex-item-align:stretch!important;align-self:stretch!important}}.float-left{float:left!important}.float-right{float:right!important}.float-none{float:none!important}@media (min-width:576px){.float-sm-left{float:left!important}.float-sm-right{float:right!important}.float-sm-none{float:none!important}}@media (min-width:768px){.float-md-left{float:left!important}.float-md-right{float:right!important}.float-md-none{float:none!important}}@media (min-width:992px){.float-lg-left{float:left!important}.float-lg-right{float:right!important}.float-lg-none{float:none!important}}@media (min-width:1200px){.float-xl-left{float:left!important}.float-xl-right{float:right!important}.float-xl-none{float:none!important}}.position-static{position:static!important}.position-relative{position:relative!important}.position-absolute{position:absolute!important}.position-fixed{position:fixed!important}.position-sticky{position:-webkit-sticky!important;position:sticky!important}.fixed-top{top:0}.fixed-bottom,.fixed-top{position:fixed;right:0;left:0;z-index:1030}.fixed-bottom{bottom:0}@supports ((position:-webkit-sticky) or (position:sticky)){.sticky-top{position:-webkit-sticky;position:sticky;top:0;z-index:1020}}.sr-only{position:absolute;width:1px;height:1px;padding:0;overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;overflow:visible;clip:auto;white-space:normal}.shadow-sm{box-shadow:0 .125rem .25rem rgba(0,0,0,.075)!important}.shadow{box-shadow:0 .5rem 1rem rgba(0,0,0,.15)!important}.shadow-lg{box-shadow:0 1rem 3rem rgba(0,0,0,.175)!important}.shadow-none{box-shadow:none!important}.w-25{width:25%!important}.w-50{width:50%!important}.w-75{width:75%!important}.w-100{width:100%!important}.w-auto{width:auto!important}.h-25{height:25%!important}.h-50{height:50%!important}.h-75{height:75%!important}.h-100{height:100%!important}.h-auto{height:auto!important}.mw-100{max-width:100%!important}.mh-100{max-height:100%!important}.m-0{margin:0!important}.mt-0,.my-0{margin-top:0!important}.mr-0,.mx-0{margin-right:0!important}.mb-0,.my-0{margin-bottom:0!important}.ml-0,.mx-0{margin-left:0!important}.m-1{margin:.25rem!important}.mt-1,.my-1{margin-top:.25rem!important}.mr-1,.mx-1{margin-right:.25rem!important}.mb-1,.my-1{margin-bottom:.25rem!important}.ml-1,.mx-1{margin-left:.25rem!important}.m-2{margin:.5rem!important}.mt-2,.my-2{margin-top:.5rem!important}.mr-2,.mx-2{margin-right:.5rem!important}.mb-2,.my-2{margin-bottom:.5rem!important}.ml-2,.mx-2{margin-left:.5rem!important}.m-3{margin:1rem!important}.mt-3,.my-3{margin-top:1rem!important}.mr-3,.mx-3{margin-right:1rem!important}.mb-3,.my-3{margin-bottom:1rem!important}.ml-3,.mx-3{margin-left:1rem!important}.m-4{margin:1.5rem!important}.mt-4,.my-4{margin-top:1.5rem!important}.mr-4,.mx-4{margin-right:1.5rem!important}.mb-4,.my-4{margin-bottom:1.5rem!important}.ml-4,.mx-4{margin-left:1.5rem!important}.m-5{margin:3rem!important}.mt-5,.my-5{margin-top:3rem!important}.mr-5,.mx-5{margin-right:3rem!important}.mb-5,.my-5{margin-bottom:3rem!important}.ml-5,.mx-5{margin-left:3rem!important}.p-0{padding:0!important}.pt-0,.py-0{padding-top:0!important}.pr-0,.px-0{padding-right:0!important}.pb-0,.py-0{padding-bottom:0!important}.pl-0,.px-0{padding-left:0!important}.p-1{padding:.25rem!important}.pt-1,.py-1{padding-top:.25rem!important}.pr-1,.px-1{padding-right:.25rem!important}.pb-1,.py-1{padding-bottom:.25rem!important}.pl-1,.px-1{padding-left:.25rem!important}.p-2{padding:.5rem!important}.pt-2,.py-2{padding-top:.5rem!important}.pr-2,.px-2{padding-right:.5rem!important}.pb-2,.py-2{padding-bottom:.5rem!important}.pl-2,.px-2{padding-left:.5rem!important}.p-3{padding:1rem!important}.pt-3,.py-3{padding-top:1rem!important}.pr-3,.px-3{padding-right:1rem!important}.pb-3,.py-3{padding-bottom:1rem!important}.pl-3,.px-3{padding-left:1rem!important}.p-4{padding:1.5rem!important}.pt-4,.py-4{padding-top:1.5rem!important}.pr-4,.px-4{padding-right:1.5rem!important}.pb-4,.py-4{padding-bottom:1.5rem!important}.pl-4,.px-4{padding-left:1.5rem!important}.p-5{padding:3rem!important}.pt-5,.py-5{padding-top:3rem!important}.pr-5,.px-5{padding-right:3rem!important}.pb-5,.py-5{padding-bottom:3rem!important}.pl-5,.px-5{padding-left:3rem!important}.m-auto{margin:auto!important}.mt-auto,.my-auto{margin-top:auto!important}.mr-auto,.mx-auto{margin-right:auto!important}.mb-auto,.my-auto{margin-bottom:auto!important}.ml-auto,.mx-auto{margin-left:auto!important}@media (min-width:576px){.m-sm-0{margin:0!important}.mt-sm-0,.my-sm-0{margin-top:0!important}.mr-sm-0,.mx-sm-0{margin-right:0!important}.mb-sm-0,.my-sm-0{margin-bottom:0!important}.ml-sm-0,.mx-sm-0{margin-left:0!important}.m-sm-1{margin:.25rem!important}.mt-sm-1,.my-sm-1{margin-top:.25rem!important}.mr-sm-1,.mx-sm-1{margin-right:.25rem!important}.mb-sm-1,.my-sm-1{margin-bottom:.25rem!important}.ml-sm-1,.mx-sm-1{margin-left:.25rem!important}.m-sm-2{margin:.5rem!important}.mt-sm-2,.my-sm-2{margin-top:.5rem!important}.mr-sm-2,.mx-sm-2{margin-right:.5rem!important}.mb-sm-2,.my-sm-2{margin-bottom:.5rem!important}.ml-sm-2,.mx-sm-2{margin-left:.5rem!important}.m-sm-3{margin:1rem!important}.mt-sm-3,.my-sm-3{margin-top:1rem!important}.mr-sm-3,.mx-sm-3{margin-right:1rem!important}.mb-sm-3,.my-sm-3{margin-bottom:1rem!important}.ml-sm-3,.mx-sm-3{margin-left:1rem!important}.m-sm-4{margin:1.5rem!important}.mt-sm-4,.my-sm-4{margin-top:1.5rem!important}.mr-sm-4,.mx-sm-4{margin-right:1.5rem!important}.mb-sm-4,.my-sm-4{margin-bottom:1.5rem!important}.ml-sm-4,.mx-sm-4{margin-left:1.5rem!important}.m-sm-5{margin:3rem!important}.mt-sm-5,.my-sm-5{margin-top:3rem!important}.mr-sm-5,.mx-sm-5{margin-right:3rem!important}.mb-sm-5,.my-sm-5{margin-bottom:3rem!important}.ml-sm-5,.mx-sm-5{margin-left:3rem!important}.p-sm-0{padding:0!important}.pt-sm-0,.py-sm-0{padding-top:0!important}.pr-sm-0,.px-sm-0{padding-right:0!important}.pb-sm-0,.py-sm-0{padding-bottom:0!important}.pl-sm-0,.px-sm-0{padding-left:0!important}.p-sm-1{padding:.25rem!important}.pt-sm-1,.py-sm-1{padding-top:.25rem!important}.pr-sm-1,.px-sm-1{padding-right:.25rem!important}.pb-sm-1,.py-sm-1{padding-bottom:.25rem!important}.pl-sm-1,.px-sm-1{padding-left:.25rem!important}.p-sm-2{padding:.5rem!important}.pt-sm-2,.py-sm-2{padding-top:.5rem!important}.pr-sm-2,.px-sm-2{padding-right:.5rem!important}.pb-sm-2,.py-sm-2{padding-bottom:.5rem!important}.pl-sm-2,.px-sm-2{padding-left:.5rem!important}.p-sm-3{padding:1rem!important}.pt-sm-3,.py-sm-3{padding-top:1rem!important}.pr-sm-3,.px-sm-3{padding-right:1rem!important}.pb-sm-3,.py-sm-3{padding-bottom:1rem!important}.pl-sm-3,.px-sm-3{padding-left:1rem!important}.p-sm-4{padding:1.5rem!important}.pt-sm-4,.py-sm-4{padding-top:1.5rem!important}.pr-sm-4,.px-sm-4{padding-right:1.5rem!important}.pb-sm-4,.py-sm-4{padding-bottom:1.5rem!important}.pl-sm-4,.px-sm-4{padding-left:1.5rem!important}.p-sm-5{padding:3rem!important}.pt-sm-5,.py-sm-5{padding-top:3rem!important}.pr-sm-5,.px-sm-5{padding-right:3rem!important}.pb-sm-5,.py-sm-5{padding-bottom:3rem!important}.pl-sm-5,.px-sm-5{padding-left:3rem!important}.m-sm-auto{margin:auto!important}.mt-sm-auto,.my-sm-auto{margin-top:auto!important}.mr-sm-auto,.mx-sm-auto{margin-right:auto!important}.mb-sm-auto,.my-sm-auto{margin-bottom:auto!important}.ml-sm-auto,.mx-sm-auto{margin-left:auto!important}}@media (min-width:768px){.m-md-0{margin:0!important}.mt-md-0,.my-md-0{margin-top:0!important}.mr-md-0,.mx-md-0{margin-right:0!important}.mb-md-0,.my-md-0{margin-bottom:0!important}.ml-md-0,.mx-md-0{margin-left:0!important}.m-md-1{margin:.25rem!important}.mt-md-1,.my-md-1{margin-top:.25rem!important}.mr-md-1,.mx-md-1{margin-right:.25rem!important}.mb-md-1,.my-md-1{margin-bottom:.25rem!important}.ml-md-1,.mx-md-1{margin-left:.25rem!important}.m-md-2{margin:.5rem!important}.mt-md-2,.my-md-2{margin-top:.5rem!important}.mr-md-2,.mx-md-2{margin-right:.5rem!important}.mb-md-2,.my-md-2{margin-bottom:.5rem!important}.ml-md-2,.mx-md-2{margin-left:.5rem!important}.m-md-3{margin:1rem!important}.mt-md-3,.my-md-3{margin-top:1rem!important}.mr-md-3,.mx-md-3{margin-right:1rem!important}.mb-md-3,.my-md-3{margin-bottom:1rem!important}.ml-md-3,.mx-md-3{margin-left:1rem!important}.m-md-4{margin:1.5rem!important}.mt-md-4,.my-md-4{margin-top:1.5rem!important}.mr-md-4,.mx-md-4{margin-right:1.5rem!important}.mb-md-4,.my-md-4{margin-bottom:1.5rem!important}.ml-md-4,.mx-md-4{margin-left:1.5rem!important}.m-md-5{margin:3rem!important}.mt-md-5,.my-md-5{margin-top:3rem!important}.mr-md-5,.mx-md-5{margin-right:3rem!important}.mb-md-5,.my-md-5{margin-bottom:3rem!important}.ml-md-5,.mx-md-5{margin-left:3rem!important}.p-md-0{padding:0!important}.pt-md-0,.py-md-0{padding-top:0!important}.pr-md-0,.px-md-0{padding-right:0!important}.pb-md-0,.py-md-0{padding-bottom:0!important}.pl-md-0,.px-md-0{padding-left:0!important}.p-md-1{padding:.25rem!important}.pt-md-1,.py-md-1{padding-top:.25rem!important}.pr-md-1,.px-md-1{padding-right:.25rem!important}.pb-md-1,.py-md-1{padding-bottom:.25rem!important}.pl-md-1,.px-md-1{padding-left:.25rem!important}.p-md-2{padding:.5rem!important}.pt-md-2,.py-md-2{padding-top:.5rem!important}.pr-md-2,.px-md-2{padding-right:.5rem!important}.pb-md-2,.py-md-2{padding-bottom:.5rem!important}.pl-md-2,.px-md-2{padding-left:.5rem!important}.p-md-3{padding:1rem!important}.pt-md-3,.py-md-3{padding-top:1rem!important}.pr-md-3,.px-md-3{padding-right:1rem!important}.pb-md-3,.py-md-3{padding-bottom:1rem!important}.pl-md-3,.px-md-3{padding-left:1rem!important}.p-md-4{padding:1.5rem!important}.pt-md-4,.py-md-4{padding-top:1.5rem!important}.pr-md-4,.px-md-4{padding-right:1.5rem!important}.pb-md-4,.py-md-4{padding-bottom:1.5rem!important}.pl-md-4,.px-md-4{padding-left:1.5rem!important}.p-md-5{padding:3rem!important}.pt-md-5,.py-md-5{padding-top:3rem!important}.pr-md-5,.px-md-5{padding-right:3rem!important}.pb-md-5,.py-md-5{padding-bottom:3rem!important}.pl-md-5,.px-md-5{padding-left:3rem!important}.m-md-auto{margin:auto!important}.mt-md-auto,.my-md-auto{margin-top:auto!important}.mr-md-auto,.mx-md-auto{margin-right:auto!important}.mb-md-auto,.my-md-auto{margin-bottom:auto!important}.ml-md-auto,.mx-md-auto{margin-left:auto!important}}@media (min-width:992px){.m-lg-0{margin:0!important}.mt-lg-0,.my-lg-0{margin-top:0!important}.mr-lg-0,.mx-lg-0{margin-right:0!important}.mb-lg-0,.my-lg-0{margin-bottom:0!important}.ml-lg-0,.mx-lg-0{margin-left:0!important}.m-lg-1{margin:.25rem!important}.mt-lg-1,.my-lg-1{margin-top:.25rem!important}.mr-lg-1,.mx-lg-1{margin-right:.25rem!important}.mb-lg-1,.my-lg-1{margin-bottom:.25rem!important}.ml-lg-1,.mx-lg-1{margin-left:.25rem!important}.m-lg-2{margin:.5rem!important}.mt-lg-2,.my-lg-2{margin-top:.5rem!important}.mr-lg-2,.mx-lg-2{margin-right:.5rem!important}.mb-lg-2,.my-lg-2{margin-bottom:.5rem!important}.ml-lg-2,.mx-lg-2{margin-left:.5rem!important}.m-lg-3{margin:1rem!important}.mt-lg-3,.my-lg-3{margin-top:1rem!important}.mr-lg-3,.mx-lg-3{margin-right:1rem!important}.mb-lg-3,.my-lg-3{margin-bottom:1rem!important}.ml-lg-3,.mx-lg-3{margin-left:1rem!important}.m-lg-4{margin:1.5rem!important}.mt-lg-4,.my-lg-4{margin-top:1.5rem!important}.mr-lg-4,.mx-lg-4{margin-right:1.5rem!important}.mb-lg-4,.my-lg-4{margin-bottom:1.5rem!important}.ml-lg-4,.mx-lg-4{margin-left:1.5rem!important}.m-lg-5{margin:3rem!important}.mt-lg-5,.my-lg-5{margin-top:3rem!important}.mr-lg-5,.mx-lg-5{margin-right:3rem!important}.mb-lg-5,.my-lg-5{margin-bottom:3rem!important}.ml-lg-5,.mx-lg-5{margin-left:3rem!important}.p-lg-0{padding:0!important}.pt-lg-0,.py-lg-0{padding-top:0!important}.pr-lg-0,.px-lg-0{padding-right:0!important}.pb-lg-0,.py-lg-0{padding-bottom:0!important}.pl-lg-0,.px-lg-0{padding-left:0!important}.p-lg-1{padding:.25rem!important}.pt-lg-1,.py-lg-1{padding-top:.25rem!important}.pr-lg-1,.px-lg-1{padding-right:.25rem!important}.pb-lg-1,.py-lg-1{padding-bottom:.25rem!important}.pl-lg-1,.px-lg-1{padding-left:.25rem!important}.p-lg-2{padding:.5rem!important}.pt-lg-2,.py-lg-2{padding-top:.5rem!important}.pr-lg-2,.px-lg-2{padding-right:.5rem!important}.pb-lg-2,.py-lg-2{padding-bottom:.5rem!important}.pl-lg-2,.px-lg-2{padding-left:.5rem!important}.p-lg-3{padding:1rem!important}.pt-lg-3,.py-lg-3{padding-top:1rem!important}.pr-lg-3,.px-lg-3{padding-right:1rem!important}.pb-lg-3,.py-lg-3{padding-bottom:1rem!important}.pl-lg-3,.px-lg-3{padding-left:1rem!important}.p-lg-4{padding:1.5rem!important}.pt-lg-4,.py-lg-4{padding-top:1.5rem!important}.pr-lg-4,.px-lg-4{padding-right:1.5rem!important}.pb-lg-4,.py-lg-4{padding-bottom:1.5rem!important}.pl-lg-4,.px-lg-4{padding-left:1.5rem!important}.p-lg-5{padding:3rem!important}.pt-lg-5,.py-lg-5{padding-top:3rem!important}.pr-lg-5,.px-lg-5{padding-right:3rem!important}.pb-lg-5,.py-lg-5{padding-bottom:3rem!important}.pl-lg-5,.px-lg-5{padding-left:3rem!important}.m-lg-auto{margin:auto!important}.mt-lg-auto,.my-lg-auto{margin-top:auto!important}.mr-lg-auto,.mx-lg-auto{margin-right:auto!important}.mb-lg-auto,.my-lg-auto{margin-bottom:auto!important}.ml-lg-auto,.mx-lg-auto{margin-left:auto!important}}@media (min-width:1200px){.m-xl-0{margin:0!important}.mt-xl-0,.my-xl-0{margin-top:0!important}.mr-xl-0,.mx-xl-0{margin-right:0!important}.mb-xl-0,.my-xl-0{margin-bottom:0!important}.ml-xl-0,.mx-xl-0{margin-left:0!important}.m-xl-1{margin:.25rem!important}.mt-xl-1,.my-xl-1{margin-top:.25rem!important}.mr-xl-1,.mx-xl-1{margin-right:.25rem!important}.mb-xl-1,.my-xl-1{margin-bottom:.25rem!important}.ml-xl-1,.mx-xl-1{margin-left:.25rem!important}.m-xl-2{margin:.5rem!important}.mt-xl-2,.my-xl-2{margin-top:.5rem!important}.mr-xl-2,.mx-xl-2{margin-right:.5rem!important}.mb-xl-2,.my-xl-2{margin-bottom:.5rem!important}.ml-xl-2,.mx-xl-2{margin-left:.5rem!important}.m-xl-3{margin:1rem!important}.mt-xl-3,.my-xl-3{margin-top:1rem!important}.mr-xl-3,.mx-xl-3{margin-right:1rem!important}.mb-xl-3,.my-xl-3{margin-bottom:1rem!important}.ml-xl-3,.mx-xl-3{margin-left:1rem!important}.m-xl-4{margin:1.5rem!important}.mt-xl-4,.my-xl-4{margin-top:1.5rem!important}.mr-xl-4,.mx-xl-4{margin-right:1.5rem!important}.mb-xl-4,.my-xl-4{margin-bottom:1.5rem!important}.ml-xl-4,.mx-xl-4{margin-left:1.5rem!important}.m-xl-5{margin:3rem!important}.mt-xl-5,.my-xl-5{margin-top:3rem!important}.mr-xl-5,.mx-xl-5{margin-right:3rem!important}.mb-xl-5,.my-xl-5{margin-bottom:3rem!important}.ml-xl-5,.mx-xl-5{margin-left:3rem!important}.p-xl-0{padding:0!important}.pt-xl-0,.py-xl-0{padding-top:0!important}.pr-xl-0,.px-xl-0{padding-right:0!important}.pb-xl-0,.py-xl-0{padding-bottom:0!important}.pl-xl-0,.px-xl-0{padding-left:0!important}.p-xl-1{padding:.25rem!important}.pt-xl-1,.py-xl-1{padding-top:.25rem!important}.pr-xl-1,.px-xl-1{padding-right:.25rem!important}.pb-xl-1,.py-xl-1{padding-bottom:.25rem!important}.pl-xl-1,.px-xl-1{padding-left:.25rem!important}.p-xl-2{padding:.5rem!important}.pt-xl-2,.py-xl-2{padding-top:.5rem!important}.pr-xl-2,.px-xl-2{padding-right:.5rem!important}.pb-xl-2,.py-xl-2{padding-bottom:.5rem!important}.pl-xl-2,.px-xl-2{padding-left:.5rem!important}.p-xl-3{padding:1rem!important}.pt-xl-3,.py-xl-3{padding-top:1rem!important}.pr-xl-3,.px-xl-3{padding-right:1rem!important}.pb-xl-3,.py-xl-3{padding-bottom:1rem!important}.pl-xl-3,.px-xl-3{padding-left:1rem!important}.p-xl-4{padding:1.5rem!important}.pt-xl-4,.py-xl-4{padding-top:1.5rem!important}.pr-xl-4,.px-xl-4{padding-right:1.5rem!important}.pb-xl-4,.py-xl-4{padding-bottom:1.5rem!important}.pl-xl-4,.px-xl-4{padding-left:1.5rem!important}.p-xl-5{padding:3rem!important}.pt-xl-5,.py-xl-5{padding-top:3rem!important}.pr-xl-5,.px-xl-5{padding-right:3rem!important}.pb-xl-5,.py-xl-5{padding-bottom:3rem!important}.pl-xl-5,.px-xl-5{padding-left:3rem!important}.m-xl-auto{margin:auto!important}.mt-xl-auto,.my-xl-auto{margin-top:auto!important}.mr-xl-auto,.mx-xl-auto{margin-right:auto!important}.mb-xl-auto,.my-xl-auto{margin-bottom:auto!important}.ml-xl-auto,.mx-xl-auto{margin-left:auto!important}}.text-monospace{font-family:SFMono-Regular,Menlo,Monaco,Consolas,Liberation Mono,Courier New,monospace}.text-justify{text-align:justify!important}.text-nowrap{white-space:nowrap!important}.text-truncate{overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.text-left{text-align:left!important}.text-right{text-align:right!important}.text-center{text-align:center!important}@media (min-width:576px){.text-sm-left{text-align:left!important}.text-sm-right{text-align:right!important}.text-sm-center{text-align:center!important}}@media (min-width:768px){.text-md-left{text-align:left!important}.text-md-right{text-align:right!important}.text-md-center{text-align:center!important}}@media (min-width:992px){.text-lg-left{text-align:left!important}.text-lg-right{text-align:right!important}.text-lg-center{text-align:center!important}}@media (min-width:1200px){.text-xl-left{text-align:left!important}.text-xl-right{text-align:right!important}.text-xl-center{text-align:center!important}}.text-lowercase{text-transform:lowercase!important}.text-uppercase{text-transform:uppercase!important}.text-capitalize{text-transform:capitalize!important}.font-weight-light{font-weight:300!important}.font-weight-normal{font-weight:400!important}.font-weight-bold{font-weight:700!important}.font-italic{font-style:italic!important}.text-white{color:#fff!important}.text-primary{color:#0288d1!important}a.text-primary:focus,a.text-primary:hover{color:#02679e!important}.text-secondary{color:#959595!important}a.text-secondary:focus,a.text-secondary:hover{color:#7c7c7c!important}.text-success{color:#6cc942!important}a.text-success:focus,a.text-success:hover{color:#55a830!important}.text-info{color:#0ccaff!important}a.text-info:focus,a.text-info:hover{color:#00a9d8!important}.text-warning{color:#ffc107!important}a.text-warning:focus,a.text-warning:hover{color:#d39e00!important}.text-danger{color:red!important}a.text-danger:focus,a.text-danger:hover{color:#c00!important}.text-light{color:#ebebeb!important}a.text-light:focus,a.text-light:hover{color:#d2d2d2!important}.text-dark{color:#464646!important}a.text-dark:focus,a.text-dark:hover{color:#2d2d2d!important}.text-rebranding-primary{color:#ee4d2d!important}a.text-rebranding-primary:focus,a.text-rebranding-primary:hover{color:#d73211!important}.text-body{color:#464646!important}.text-muted{color:#959595!important}.text-black-50{color:rgba(0,0,0,.5)!important}.text-white-50{color:hsla(0,0%,100%,.5)!important}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.visible{visibility:visible!important}.invisible{visibility:hidden!important}.text-small{font-size:12px}.btn-width-long{padding-left:50px;padding-right:50px}.btn-share-order{padding-left:12px;padding-right:12px;position:absolute;right:10px}.btn-copy-order-code{cursor:pointer}.main-header .dropdown-item.active,.main-header .dropdown-item:active{color:inherit;background-color:transparent}.main-header .dropdown-menu{overflow:hidden}.main-header .dropdown-item{cursor:pointer}.main-header.overscroll .container-header{top:0;z-index:100}.main-header .language{position:fixed;top:21px;right:0}.main-header .language .dropdown-menu{left:auto;right:0}.main-header .language .dropdown-toggle:after{border-bottom-color:#959595;border-top-color:#959595;vertical-align:middle}.main-header .language .dropdown-toggle .icon{vertical-align:text-top}.main-header .language .dropdown-menu{margin:0;min-width:inherit;padding:0}.main-header .language .dropdown-item{padding:10px;vertical-align:top;display:-ms-flexbox;display:flex}.main-header .language .language-item{margin-left:7px}.main-header .language .dropdown-toggle{cursor:pointer}.container-header{position:fixed;top:0;left:0;right:0;z-index:99;background-color:#fff;height:70px}.container-header .icon-search-dark{cursor:pointer;margin-top:6px}.container-header .header-content{position:relative;margin:0;min-height:42px;height:100%}.container-header .logo-now{position:absolute;right:100%;cursor:pointer;margin-right:72px;padding-left:0}.container-header .logo-now img[alt=ShopeeFood]{height:30px}.container-header .select-local{cursor:pointer;background-color:#f0f0f0;border-radius:4px;position:relative;padding:0}.container-header .select-local .dropdown-toggle{color:#252525;border:0;padding:10px 27px 10px 19px;background-color:transparent;position:relative;z-index:1}.container-header .select-local .dropdown-toggle:after{position:absolute;top:50%;right:8px;margin-top:-2px;border-top-color:#acacac}.container-header .select-local .dropdown-item{border-bottom:1px solid #ebebeb;padding:5px 5px 5px 8px;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.container-header .select-local .dropdown-menu{min-width:200px;left:-2px}.container-header .select-local .count{float:right;color:#9fa9aa;font-size:12px}.container-header .header-icon-search a:focus{outline:none}.container-header .btn-login{padding:7px 12px;background-color:#fff;border-color:#ee4d2d;color:#ee4d2d}.container-header .btn-login:hover{border-color:#f17c65;color:#f17c65}.container-header .btn-down-app{position:absolute;left:100%;margin-left:10px}.container-header .user-acc .dropdown{cursor:pointer}.container-header .user-acc .dropdown-menu{left:auto;right:-12px}.container-header .user-acc .dropdown-toggle{display:-ms-flexbox;display:flex;position:relative}.container-header .user-acc .dropdown-toggle:after{border-top:solid rgba(0,0,0,.54);border-width:4px 4px 0;display:inline-block;position:absolute;top:18px;right:-12px}.container-header .user-acc .dropdown-item{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:10px 12px;border-bottom:1px solid #ebebeb}.container-header .user-acc .dropdown-item .icon{margin-right:10px}.container-header .user-acc .dropdown-item .text .sup{display:block;font-weight:700;margin-top:-7px}.container-header .user-acc .name{display:inline-block;line-height:40px;-ms-flex-align:center;align-items:center;color:#000;font-weight:700;float:left;padding-right:10px;max-width:100px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;margin-left:10px}.container-header .user-acc .img{float:left}.container-header .user-acc .img img{border:1px solid #d7d7d7;border-radius:50%;width:40px;height:40px}.container-header .dropdown-menu{padding:0}.container-header .dropdown-item{padding:.35em 1em}.container-header .icon-now-promo-code{color:#fff;width:38px;height:38px;border-radius:50%;background:#0288d1;font-size:38px}@media screen and (max-width:1700px){.container-header .logo-now{position:static}.container-header .btn-down-app{position:static;margin-left:5px;margin-right:5px}}.main-nav{padding-left:48px;padding-right:0;white-space:nowrap}.main-nav .nav-item{color:#252525;cursor:pointer;padding:10px 12px 21px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;border-bottom:4px solid transparent;font-size:14px}.main-nav .nav-item:hover{color:#ee4d2d;text-decoration:none}.main-nav .nav-item.active{color:#ee4d2d;font-weight:700;border-bottom-color:#ee4d2d}.main-nav .more-nav{display:inline-block}.main-nav .more-nav .btn-more-nav{display:-ms-inline-flexbox;display:inline-flex;-ms-flex-align:center;align-items:center;font-size:5px;cursor:pointer;color:#959595;vertical-align:middle;padding:0 0 0 16px}.main-nav .more-nav .btn-more-nav .more-item{display:inline-block;width:4px;height:4px;border-radius:100%;background-color:#c4c4c4;margin-right:3px}.main-nav .more-nav .dropdown-toggle:after{border:0}.main-nav .more-nav .dropdown-item{border-bottom:1px solid #ebebeb}.container-topbar{background:#252525;color:#fff;height:35px;margin-bottom:70px;position:static;top:0;left:0;right:0;z-index:100}.container-topbar .topbar{width:1170px;margin:0 auto}.container-topbar .item-nav{color:#fff;cursor:pointer;padding:8px 15px;display:block;float:left;position:relative}.container-topbar .item-nav.new:after{content:"";width:28px;height:12px;background-image:url(/app/assets/img/sb-new.gif?56ea3add82aaf427ac8a8f1d4626bd32);position:absolute;top:1px;right:-5px;border-radius:7px}.container-topbar .current{background-color:#fff;color:#000}.container-topbar .time-working{padding:6px 0 6px 15px}.modal-open .now-banner{right:17px}.modal-open .now-wrapper-chat{right:57px}.modal-open .container-header,.modal-open .topcontrol{right:17px}.main-footer{clear:both}.main-footer .container-inner{padding-top:32px;padding-bottom:25px;font-size:14px;overflow:hidden;clear:both}.main-footer .block-footer{width:241px;float:left;color:#959595}.main-footer .title-block{font-weight:700;color:#252525;margin-bottom:25px;font-size:16px}.main-footer .block-last{text-align:right;float:right;font-size:16px}.main-footer .block-last p{font-size:14px;margin-bottom:3px;margin-top:0}.main-footer .block-last .title-block{margin-bottom:25px;font-size:16px}.main-footer .block-last a{color:#08f}.main-footer .menu-footer{line-height:25px;margin-top:0;padding-left:0;list-style:none}.main-footer .menu-item{cursor:pointer;color:#959595}.main-footer .menu-item:hover{color:#0288d1}.main-footer .menu-item a{color:#08f}.main-footer .apps{width:122px;height:40px;display:grid;margin-bottom:25px}.main-footer .apps__app-store-vi{background-image:url(/app/assets/img/AppStore-vn.png?1afe809ef1884945ef4a05dacec7679e);background-size:cover}.main-footer .apps__play-store-vi{background-image:url(/app/assets/img/PlayStore-vn.png?a5bc23fd384a415654c9115efebb67db);background-size:cover}.main-footer .apps__huawei-gallery-vi{background-image:url(/app/assets/img/Huawei-gallery-vn.png?a17f5e9f3500255a52ec23de20dc115a);background-size:cover}.main-footer .apps__app-store-en{background-image:url(/app/assets/img/AppStore.png?0809eeff5b532eee70c53aa11c7c53f5);background-size:cover}.main-footer .apps__play-store-en{background-image:url(/app/assets/img/PlayStore.png?b66262e74c57f7665631f16d62da83ca);background-size:cover}.main-footer .apps__huawei-gallery-en{background-image:url(/app/assets/img/Huawei-gallery.png?ed74b8aa2c953c48a4a117b312ccea64);background-size:cover}.main-footer .title-app{font-size:13px;margin-bottom:14px}.main-footer .title-app .link{color:#0288d1}.main-footer .logo-footer{margin-top:14px;margin-bottom:17px}.main-footer .logo-footer img{max-width:100px}.main-footer .social-ico{margin-top:20px;padding-left:0}.main-footer .social-ico li{display:inline-block;padding:0 8px}.main-footer .social-ico .ico{font-size:16px;color:#fff;cursor:pointer;line-height:30px;display:inline-block;background-color:#959595;width:30px;height:30px;border-radius:50%;transition:all .2s linear;-webkit-transition:all .2s linear}.main-footer .social-ico .facebook:hover{background-color:#0288d1}.main-footer .social-ico .google:hover{background-color:#cf2127}.main-footer .social-ico .instagram:hover{background-color:#ba30a7}.main-footer .registered{width:177px;margin-top:1px;display:inline-block}.main-footer .registered img{width:100%}.form-material{border:0;background:no-repeat bottom,50% calc(100% - 1px);background-size:0 100%,100% 100%;border-radius:0;box-shadow:none;padding-left:0;padding-right:0;transition:background 0s ease-out;background-image:linear-gradient(0deg,#0288d1 2px,rgba(63,81,181,0) 0),linear-gradient(0deg,rgba(0,0,0,.1) 1px,transparent 0)}.form-material:focus{background-size:100% 100%,100% 100%;transition-duration:.3s}.form-group-material{margin-bottom:1.7rem}.block-section{padding:30px 0}.block-title{font-size:1.53125rem;font-weight:700}.filter-table{display:-ms-flexbox;display:flex;-ms-flex-flow:row nowrap;flex-flow:row nowrap;-ms-flex-pack:center;justify-content:center}.filter-table-item{-ms-flex:0 0 auto;flex:0 0 auto;width:auto;max-width:none;min-width:0;margin:0 15px}.filter-table-label{display:inline-block;margin-right:5px}.filter-table-input{display:inline-block;width:150px}.circle-status{width:10px;height:10px;border-radius:50%;background:#959595;display:inline-block}.circle-status.green{background:#6cc942}.circle-status.sm{width:8px;height:8px}.rating{font-size:18px;vertical-align:middle;display:-ms-flexbox;display:flex;-ms-flex-flow:row wrap;flex-flow:row wrap;-ms-flex-pack:start;justify-content:flex-start}.rating:after{display:block;clear:both;content:""}.rating .icon{display:block;margin:0 2px;color:#9fa9aa}.rating .fas.fa-star,.rating .fas.fa-star-half-alt{color:#ffc107}.rating.big{font-size:26px}.rating-inline{display:inline-block}.rating-total{font-size:17px;vertical-align:middle}.rating-total-info{font-size:14px;font-weight:700;display:inline-block;margin:0 10px}.avatar-circle{display:block;width:40px;height:40px;border-radius:50%;overflow:hidden;background:#ebebeb}.ps{overflow:hidden!important;overflow-anchor:none;-ms-overflow-style:none;touch-action:auto;-ms-touch-action:auto}.ps__rail-x{height:15px;bottom:0}.ps__rail-x,.ps__rail-y{display:none;opacity:0;transition:background-color .2s linear,opacity .2s linear;-webkit-transition:background-color .2s linear,opacity .2s linear;position:absolute}.ps__rail-y{width:15px;right:0}.ps--active-x>.ps__rail-x,.ps--active-y>.ps__rail-y{display:block;background-color:transparent}.ps--focus>.ps__rail-x,.ps--focus>.ps__rail-y,.ps--scrolling-x>.ps__rail-x,.ps--scrolling-y>.ps__rail-y,.ps:hover>.ps__rail-x,.ps:hover>.ps__rail-y{opacity:.6}.ps .ps__rail-x.ps--clicking,.ps .ps__rail-x:focus,.ps .ps__rail-x:hover,.ps .ps__rail-y.ps--clicking,.ps .ps__rail-y:focus,.ps .ps__rail-y:hover{background-color:#eee;opacity:.9}.ps__thumb-x{transition:background-color .2s linear,height .2s ease-in-out;-webkit-transition:background-color .2s linear,height .2s ease-in-out;height:6px;bottom:2px}.ps__thumb-x,.ps__thumb-y{background-color:#aaa;border-radius:6px;position:absolute}.ps__thumb-y{transition:background-color .2s linear,width .2s ease-in-out;-webkit-transition:background-color .2s linear,width .2s ease-in-out;width:6px;right:2px}.ps__rail-x.ps--clicking .ps__thumb-x,.ps__rail-x:focus>.ps__thumb-x,.ps__rail-x:hover>.ps__thumb-x{background-color:#999;height:11px}.ps__rail-y.ps--clicking .ps__thumb-y,.ps__rail-y:focus>.ps__thumb-y,.ps__rail-y:hover>.ps__thumb-y{background-color:#999;width:11px}@supports (-ms-overflow-style:none){.ps{overflow:auto!important}}@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active){.ps{overflow:auto!important}}.form-control.datepicker:disabled,.form-control.datepicker[readonly]{background-color:#fff;opacity:1}.flatpickr-current-month{font-size:16px!important}.flatpickr-calendar{background:transparent;opacity:0;display:none;text-align:center;visibility:hidden;padding:0;animation:none;direction:ltr;border:0;font-size:14px;line-height:24px;border-radius:5px;position:absolute;width:307.875px;box-sizing:border-box;-ms-touch-action:manipulation;touch-action:manipulation;box-shadow:0 3px 13px rgba(0,0,0,.08)}.flatpickr-calendar.inline,.flatpickr-calendar.open{opacity:1;max-height:640px;visibility:visible}.flatpickr-calendar.open{display:inline-block;z-index:99999}.flatpickr-calendar.animate.open{animation:k .3s cubic-bezier(.23,1,.32,1)}.flatpickr-calendar.inline{display:block;position:relative;top:2px}.flatpickr-calendar.static{position:absolute;top:calc(100% + 2px)}.flatpickr-calendar.static.open{z-index:999;display:block}.flatpickr-calendar.multiMonth .flatpickr-days .dayContainer:nth-child(n+1) .flatpickr-day.inRange:nth-child(7n+7){box-shadow:none!important}.flatpickr-calendar.multiMonth .flatpickr-days .dayContainer:nth-child(n+2) .flatpickr-day.inRange:nth-child(7n+1){box-shadow:-2px 0 0 #e6e6e6,5px 0 0 #e6e6e6}.flatpickr-calendar .hasTime .dayContainer,.flatpickr-calendar .hasWeeks .dayContainer{border-bottom:0;border-bottom-right-radius:0;border-bottom-left-radius:0}.flatpickr-calendar .hasWeeks .dayContainer{border-left:0}.flatpickr-calendar.showTimeInput.hasTime .flatpickr-time{height:40px;border-top:1px solid rgba(72,72,72,.2)}.flatpickr-calendar.showTimeInput.hasTime .flatpickr-innerContainer{border-bottom:0}.flatpickr-calendar.showTimeInput.hasTime .flatpickr-time{border:1px solid rgba(72,72,72,.2)}.flatpickr-calendar.noCalendar.hasTime .flatpickr-time{height:auto}.flatpickr-calendar:after,.flatpickr-calendar:before{position:absolute;display:block;pointer-events:none;border:solid transparent;content:"";height:0;width:0;left:22px}.flatpickr-calendar.rightMost:after,.flatpickr-calendar.rightMost:before{left:auto;right:22px}.flatpickr-calendar:before{border-width:5px;margin:0 -5px}.flatpickr-calendar:after{border-width:4px;margin:0 -4px}.flatpickr-calendar.arrowTop:after,.flatpickr-calendar.arrowTop:before{bottom:100%}.flatpickr-calendar.arrowTop:before{border-bottom-color:rgba(72,72,72,.2)}.flatpickr-calendar.arrowTop:after{border-bottom-color:#0288d1}.flatpickr-calendar.arrowBottom:after,.flatpickr-calendar.arrowBottom:before{top:100%}.flatpickr-calendar.arrowBottom:before{border-top-color:rgba(72,72,72,.2)}.flatpickr-calendar.arrowBottom:after{border-top-color:#0288d1}.flatpickr-calendar:focus{outline:0}.flatpickr-wrapper{position:relative;display:inline-block}.flatpickr-months{display:-ms-flexbox;display:flex}.flatpickr-months .flatpickr-month{border-radius:5px 5px 0 0;background:#ee4d2d;color:#fff;fill:#fff;height:28px;line-height:1;text-align:center;position:relative;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;overflow:hidden;-ms-flex:1;flex:1 1}.flatpickr-months .flatpickr-next-month,.flatpickr-months .flatpickr-prev-month{text-decoration:none;cursor:pointer;position:absolute;top:0;line-height:16px;height:28px;padding:10px;z-index:3;color:#fff;fill:#fff}.flatpickr-months .flatpickr-next-month.disabled,.flatpickr-months .flatpickr-prev-month.disabled{display:none}.flatpickr-months .flatpickr-next-month i,.flatpickr-months .flatpickr-prev-month i{position:relative}.flatpickr-months .flatpickr-next-month.flatpickr-prev-month,.flatpickr-months .flatpickr-prev-month.flatpickr-prev-month{left:0}.flatpickr-months .flatpickr-next-month.flatpickr-next-month,.flatpickr-months .flatpickr-prev-month.flatpickr-next-month{right:0}.flatpickr-months .flatpickr-next-month:hover,.flatpickr-months .flatpickr-prev-month:hover{color:#bbb}.flatpickr-months .flatpickr-next-month:hover svg,.flatpickr-months .flatpickr-prev-month:hover svg{fill:#f64747}.flatpickr-months .flatpickr-next-month svg,.flatpickr-months .flatpickr-prev-month svg{width:14px;height:14px}.flatpickr-months .flatpickr-next-month svg path,.flatpickr-months .flatpickr-prev-month svg path{transition:fill .1s;fill:inherit}.numInputWrapper{position:relative;height:auto}.numInputWrapper input,.numInputWrapper span{display:inline-block}.numInputWrapper input{width:100%}.numInputWrapper input::-ms-clear{display:none}.numInputWrapper span{position:absolute;right:0;width:14px;padding:0 4px 0 2px;height:50%;line-height:50%;opacity:0;cursor:pointer;border:1px solid rgba(72,72,72,.15);box-sizing:border-box}.numInputWrapper span:hover{background:rgba(0,0,0,.1)}.numInputWrapper span:active{background:rgba(0,0,0,.2)}.numInputWrapper span:after{display:block;content:"";position:absolute}.numInputWrapper span.arrowUp{top:0;border-bottom:0}.numInputWrapper span.arrowUp:after{border-left:4px solid transparent;border-right:4px solid transparent;border-bottom:4px solid rgba(72,72,72,.6);top:26%}.numInputWrapper span.arrowDown{top:50%}.numInputWrapper span.arrowDown:after{border-left:4px solid transparent;border-right:4px solid transparent;border-top:4px solid rgba(72,72,72,.6);top:40%}.numInputWrapper span svg{width:inherit;height:auto}.numInputWrapper span svg path{fill:hsla(0,0%,100%,.5)}.numInputWrapper:hover{background:rgba(0,0,0,.05)}.numInputWrapper:hover span{opacity:1}.flatpickr-current-month{font-size:135%;line-height:inherit;font-weight:300;color:inherit;position:absolute;width:75%;left:12.5%;padding:6.16px 0 0;line-height:1;height:28px;display:inline-block;text-align:center;transform:translateZ(0)}.flatpickr-current-month span.cur-month{font-family:inherit;font-weight:700;color:inherit;display:inline-block;margin-left:.5ch;padding:0}.flatpickr-current-month span.cur-month:hover{background:rgba(0,0,0,.05)}.flatpickr-current-month .numInputWrapper{width:6ch;width:7ch\0;display:inline-block}.flatpickr-current-month .numInputWrapper span.arrowUp:after{border-bottom-color:#fff}.flatpickr-current-month .numInputWrapper span.arrowDown:after{border-top-color:#fff}.flatpickr-current-month input.cur-year{background:transparent;box-sizing:border-box;color:inherit;cursor:text;padding:0 0 0 .5ch;margin:0;display:inline-block;font-size:inherit;font-family:inherit;font-weight:300;line-height:inherit;height:auto;border:0;border-radius:0;vertical-align:initial}.flatpickr-current-month input.cur-year:focus{outline:0}.flatpickr-current-month input.cur-year[disabled],.flatpickr-current-month input.cur-year[disabled]:hover{font-size:100%;color:hsla(0,0%,100%,.5);background:transparent;pointer-events:none}.flatpickr-weekdays{background:#ee4d2d;text-align:center;overflow:hidden;width:100%;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;height:28px}.flatpickr-weekdays .flatpickr-weekdaycontainer{display:-ms-flexbox;display:flex;-ms-flex:1;flex:1 1}span.flatpickr-weekday{cursor:default;font-size:90%;color:hsla(0,0%,100%,.8);line-height:1;margin:0;text-align:center;display:block;-ms-flex:1;flex:1 1;font-weight:bolder}.dayContainer,.flatpickr-weeks{padding:1px 0 0}.flatpickr-days{position:relative;overflow:hidden;display:-ms-flexbox;display:flex;-ms-flex-align:start;align-items:flex-start;width:307.875px;border-left:1px solid rgba(72,72,72,.2);border-right:1px solid rgba(72,72,72,.2)}.flatpickr-days:focus{outline:0}.dayContainer{padding:0;outline:0;text-align:left;width:307.875px;min-width:307.875px;max-width:307.875px;box-sizing:border-box;display:inline-block;display:-ms-flexbox;display:flex;flex-wrap:wrap;-ms-flex-wrap:wrap;-ms-flex-pack:justify;justify-content:space-around;transform:translateZ(0);opacity:1}.dayContainer+.dayContainer{box-shadow:-1px 0 0 rgba(72,72,72,.2)}.flatpickr-day{background:none;border:1px solid transparent;border-radius:150px;box-sizing:border-box;color:#484848;cursor:pointer;font-weight:400;width:14.2857143%;-ms-flex-preferred-size:14.2857143%;flex-basis:14.2857143%;max-width:39px;height:39px;line-height:39px;margin:0;display:inline-block;position:relative;-ms-flex-pack:center;justify-content:center;text-align:center}.flatpickr-day.inRange,.flatpickr-day.nextMonthDay.inRange,.flatpickr-day.nextMonthDay.today.inRange,.flatpickr-day.nextMonthDay:focus,.flatpickr-day.nextMonthDay:hover,.flatpickr-day.prevMonthDay.inRange,.flatpickr-day.prevMonthDay.today.inRange,.flatpickr-day.prevMonthDay:focus,.flatpickr-day.prevMonthDay:hover,.flatpickr-day.today.inRange,.flatpickr-day:focus,.flatpickr-day:hover{cursor:pointer;outline:0;background:#e2e2e2;border-color:#e2e2e2}.flatpickr-day.today{border-color:#bbb}.flatpickr-day.today:focus,.flatpickr-day.today:hover{border-color:#bbb;background:#bbb;color:#fff}.flatpickr-day.endRange,.flatpickr-day.endRange.inRange,.flatpickr-day.endRange.nextMonthDay,.flatpickr-day.endRange.prevMonthDay,.flatpickr-day.endRange:focus,.flatpickr-day.endRange:hover,.flatpickr-day.selected,.flatpickr-day.selected.inRange,.flatpickr-day.selected.nextMonthDay,.flatpickr-day.selected.prevMonthDay,.flatpickr-day.selected:focus,.flatpickr-day.selected:hover,.flatpickr-day.startRange,.flatpickr-day.startRange.inRange,.flatpickr-day.startRange.nextMonthDay,.flatpickr-day.startRange.prevMonthDay,.flatpickr-day.startRange:focus,.flatpickr-day.startRange:hover{background:#ee4d2d;box-shadow:none;color:#fff;border-color:#ee4d2d}.flatpickr-day.endRange.startRange,.flatpickr-day.selected.startRange,.flatpickr-day.startRange.startRange{border-radius:50px 0 0 50px}.flatpickr-day.endRange.endRange,.flatpickr-day.selected.endRange,.flatpickr-day.startRange.endRange{border-radius:0 50px 50px 0}.flatpickr-day.endRange.startRange+.endRange:not(:nth-child(7n+1)),.flatpickr-day.selected.startRange+.endRange:not(:nth-child(7n+1)),.flatpickr-day.startRange.startRange+.endRange:not(:nth-child(7n+1)){box-shadow:-10px 0 0 #0288d1}.flatpickr-day.endRange.startRange.endRange,.flatpickr-day.selected.startRange.endRange,.flatpickr-day.startRange.startRange.endRange{border-radius:50px}.flatpickr-day.inRange{border-radius:0;box-shadow:-5px 0 0 #e2e2e2,5px 0 0 #e2e2e2}.flatpickr-day.disabled,.flatpickr-day.disabled:hover,.flatpickr-day.nextMonthDay,.flatpickr-day.notAllowed,.flatpickr-day.notAllowed.nextMonthDay,.flatpickr-day.notAllowed.prevMonthDay,.flatpickr-day.prevMonthDay{color:rgba(72,72,72,.3);background:transparent;border-color:transparent;cursor:default}.flatpickr-day.disabled,.flatpickr-day.disabled:hover{cursor:not-allowed;color:rgba(72,72,72,.1)}.flatpickr-day.week.selected{border-radius:0;box-shadow:-5px 0 0 #0288d1,5px 0 0 #0288d1}.flatpickr-day.hidden{visibility:hidden}.rangeMode .flatpickr-day{margin-top:1px}.flatpickr-weekwrapper{display:inline-block;float:left}.flatpickr-weekwrapper .flatpickr-weeks{padding:0 12px;border-left:1px solid rgba(72,72,72,.2)}.flatpickr-weekwrapper .flatpickr-weekday{float:none;width:100%;line-height:28px}.flatpickr-weekwrapper span.flatpickr-day,.flatpickr-weekwrapper span.flatpickr-day:hover{display:block;width:100%;max-width:none;color:rgba(72,72,72,.3);background:transparent;cursor:default;border:none}.flatpickr-innerContainer{display:block;display:-ms-flexbox;display:flex;box-sizing:border-box;overflow:hidden;background:#fff;border-bottom:1px solid rgba(72,72,72,.2)}.flatpickr-rContainer{display:inline-block;padding:0;box-sizing:border-box}.flatpickr-time{text-align:center;outline:0;display:block;height:0;line-height:40px;max-height:40px;box-sizing:border-box;overflow:hidden;display:-ms-flexbox;display:flex;background:#fff;border-radius:0 0 5px 5px}.flatpickr-time:after{content:"";display:table;clear:both}.flatpickr-time .numInputWrapper{-ms-flex:1;flex:1 1;width:40%;height:40px;float:left}.flatpickr-time .numInputWrapper span.arrowUp:after{border-bottom-color:#484848}.flatpickr-time .numInputWrapper span.arrowDown:after{border-top-color:#484848}.flatpickr-time.hasSeconds .numInputWrapper{width:26%}.flatpickr-time.time24hr .numInputWrapper{width:49%}.flatpickr-time input{background:transparent;box-shadow:none;border:0;border-radius:0;text-align:center;margin:0;padding:0;height:inherit;line-height:inherit;color:#484848;font-size:14px;position:relative;box-sizing:border-box}.flatpickr-time input.flatpickr-hour{font-weight:700}.flatpickr-time input.flatpickr-minute,.flatpickr-time input.flatpickr-second{font-weight:400}.flatpickr-time input:focus{outline:0;border:0}.flatpickr-time .flatpickr-am-pm,.flatpickr-time .flatpickr-time-separator{height:inherit;display:inline-block;float:left;line-height:inherit;color:#484848;font-weight:700;width:2%;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-ms-flex-item-align:center;align-self:center}.flatpickr-time .flatpickr-am-pm{outline:0;width:18%;cursor:pointer;text-align:center;font-weight:400}.flatpickr-time .flatpickr-am-pm:focus,.flatpickr-time .flatpickr-am-pm:hover,.flatpickr-time input:focus,.flatpickr-time input:hover{background:#efefef}.flatpickr-input[readonly]{cursor:pointer}@keyframes k{0%{opacity:0;transform:translate3d(0,-20px,0)}to{opacity:1;transform:translateZ(0)}}.now-navigation-profile{background-color:#fff;border-radius:4px;float:left;box-shadow:0 0 3px 0 rgba(50,50,50,.3);width:320px;margin-top:35px;padding:5px 16px 0;min-height:428px}.now-navigation-profile .header-profile{padding-top:10px;padding-bottom:10px}.now-navigation-profile .item-navigation{font-size:13px;text-transform:none;color:#464646;border-bottom:1px solid #ebebeb;display:block;padding:10px 0;position:relative}.now-navigation-profile .item-navigation:hover{color:#cf2127}.now-navigation-profile .item-navigation:hover .icon-arrow-thin{border-color:#cf2127}.now-navigation-profile .item-navigation:hover .sub-navigation .icon-arrow-thin{border-color:#464646}.now-navigation-profile .item-navigation:hover .nav-payment{color:#464646}.now-navigation-profile .item-navigation:hover .nav-payment .icon-arrow-thin{border-color:#464646}.now-navigation-profile .item-navigation.active{color:#cf2127}.now-navigation-profile .item-navigation.active .icon-arrow-thin{border-color:#cf2127}.now-navigation-profile .item-navigation.active .sub-navigation .icon-arrow-thin{border-color:#464646}.now-navigation-profile .item-navigation.active .nav-payment{color:#464646}.now-navigation-profile .item-navigation.active .nav-payment .icon-arrow-thin{border-color:#464646}.now-navigation-profile .item-navigation:last-child{border:0}.now-navigation-profile .item-navigation:last-child:after{content:"";position:absolute;top:-1px;left:0;right:0;height:1px;background-color:#fff}.now-navigation-profile .item-navigation .col{padding-left:0}.now-navigation-profile .item-navigation .far,.now-navigation-profile .item-navigation .fas{font-size:16px;width:20px;text-align:center}.now-navigation-profile .item-navigation .icon-arrow-thin{border-width:0 1px 1px 0;margin-right:5px}.now-navigation-profile a.item-navigation.active{cursor:default}.now-navigation-profile .sub-navigation{border-top:1px solid #ebebeb;margin-top:10px;margin-left:30px;margin-bottom:-10px}.now-navigation-profile .sub-navigation .item-navigation:last-child{border-bottom:1px solid #ebebeb}.now-navigation-profile .sub-navigation .item-navigation:last-child:after{width:0}.now-navigation-profile .sub-navigation .item-navigation.active .icon-arrow-thin,.now-navigation-profile .sub-navigation .item-navigation:hover .icon-arrow-thin{border-color:#cf2127}.now-navigation-profile .nav-payment{padding-left:30px;padding-top:10px}.now-navigation-profile .nav-payment .fa-lock{font-size:12px;color:#464646;position:absolute;top:4px;right:-17px}.now-navigation-profile .item-payment{cursor:pointer;position:relative;margin-bottom:6px}.now-navigation-profile .item-payment:hover{color:#cf2127}.now-navigation-profile .item-payment:hover .icon-arrow-thin{border-color:#cf2127!important}.now-navigation-profile .item-payment.active{color:#cf2127}.now-navigation-profile .item-payment.active .icon-arrow-thin{border-color:#cf2127!important}.now-detail-profile{float:right;width:827px;min-height:428px;position:relative;background-color:#fff;border-radius:4px;box-shadow:0 0 3px 0 rgba(50,50,50,.3);margin-top:35px}.now-detail-profile .header-user-profile{font-size:18px;color:#000;font-weight:700;padding:16px 15px;border-bottom:1px solid #ebebeb;position:relative;background:#f5f5f5}.now-detail-profile .header-user-profile .card-type{zoom:.5;vertical-align:middle;margin-left:10px}.now-detail-profile .content-user-profile .header{font-size:13px;font-weight:700;padding:15px;border-bottom:1px solid #d7d7d7}.now-detail-profile .table-account-body .table-row{padding:15px}.now-detail-profile .block-info-vat{border-top:1px solid #ebebeb;padding:0 15px 20px}.now-detail-profile .block-info-vat input{font-size:14px;height:38px;border:1px solid #d7d7d7;border-radius:3px;padding:10px;width:100%}.now-detail-profile .block-info-vat input:focus{border-bottom-color:#cf2127;outline:none}.now-detail-profile .title-profile{font-size:16px;font-weight:700;color:#000;margin-top:22px;margin-bottom:15px}.now-detail-profile .confirm-card{padding-top:25px;padding-left:15px;padding-right:25px}.now-detail-profile .confirm-card.method .custom-checkbox{position:relative;margin-bottom:10px}.now-detail-profile .confirm-card.method .custom-checkbox label{font-size:16px;font-weight:700;color:#000;position:static;display:block}.now-detail-profile .confirm-card.method .custom-checkbox label:before{margin-right:3px}.now-detail-profile .confirm-card.method .custom-checkbox [type=checkbox]:checked+label:after{right:13px}.now-detail-profile .confirm-card.method .custom-radio{position:relative;margin-bottom:5px}.now-detail-profile .confirm-card.method .custom-radio label{font-size:12px;color:#6d6f71;position:static;display:block;margin-left:45px}.now-detail-profile .confirm-card.method .custom-radio .icon{position:absolute;top:6px;left:18px}.now-detail-profile .confirm-card.method .col-7{padding-left:25px}.now-detail-profile .note-paynow{cursor:pointer;margin-left:10px}.now-detail-profile .now-balance{padding:15px 15px 10px;border-bottom:1px solid #ebebeb;margin-bottom:30px}.now-detail-profile .add-card{color:#0288d1;font-size:14px;font-weight:400;vertical-align:top;display:inline-block;margin-top:3px;float:right;cursor:pointer}.now-detail-profile .logo-method{width:36px;margin-top:-3px}.now-detail-profile .footer-user-profile{font-size:12px;color:#959595;background-color:#f2f2f2;padding:20px 30px;margin-top:25px}.now-detail-profile .btn-view-trans{font-size:14px;color:#6d6f71;border-color:#6d6f71;background-color:transparent}.now-detail-profile .btn-view-trans.active,.now-detail-profile .btn-view-trans:hover{background-color:#07a99b;color:#fff;border-color:#07a99b}.user-profile-update{padding:30px;position:relative}.user-profile-update:after{content:"";position:absolute;bottom:0;left:30px;right:30px;height:1px;background-color:#d7d7d7}.user-profile-update:last-child:after{height:0}.user-profile-update .title-user{font-weight:700;font-size:15px;color:#4073a7;padding-bottom:20px;position:relative}.user-profile-update .title-user .btn{position:absolute;top:-4px;right:0}.user-profile-update .user-avatar-image img{width:115px;height:115px;border-radius:50%}.user-profile-update .custom-file-image{display:inline-block;margin-left:3px}.user-profile-update .custom-radio [type=radio]:checked+label:before,.user-profile-update .custom-radio [type=radio]:not(:checked)+label:before{border-color:#c2c2c2}.user-profile-update .custom-radio [type=radio]:checked+label:after{border-color:#6cc942;background-color:#6cc942}.user-profile-update .change-pass{font-size:14px;font-weight:700;color:#4073a7;cursor:pointer;margin-left:100px;border:0;border-bottom:1px solid #4073a7;background-color:transparent;padding:0}.user-profile-update .show-error{font-size:13px;font-style:italic;color:#cf2127;white-space:nowrap;position:absolute;left:100%;top:4px;margin-left:15px}.user-profile-update .validate-pass .form-control{padding-right:15px}.user-profile-update .validate{position:absolute;right:3px;top:4px;color:#6cc942}.user-profile-update .not-validate{position:absolute;right:3px;top:4px;color:#cf2127}.user-profile-update .list-phone{margin-bottom:20px}.user-profile-update .list-phone-row{padding:5px 0}.user-profile-update .list-phone-row .phone-verified .fas{margin-right:8px}.user-profile-update .list-phone-row .btn-update-phone-number{margin-top:20px}.user-profile-update .list-phone-row .btn-update-phone-number button{padding-left:20px;padding-right:20px}.verify-email{background-color:#fff;height:600px;margin:0 auto;text-align:center;padding-top:100px}.verify-email__icon{width:140px;height:140px;margin:0 auto 35px}.verify-email__title{font-size:32px;margin-bottom:30px}.verify-email__description{font-size:14px;margin-bottom:30px}.verify-email__btn{background-color:#ee4d2d;border-radius:2px;border:none;color:#fff;padding:15px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;margin:4px 2px;cursor:pointer;width:165px}.verify-email__note{color:red;font-size:14px}.verify-email__footer{text-align:center;font-size:12px;color:#8f9192;margin-bottom:30px;margin-top:100px}.banner-partnership{position:relative;overflow:hidden;background:url(/app/assets/img/bg-partnership.jpg?c4393767b1ab1601a7759159b4689af9) no-repeat 50% 50%;background-size:cover}.banner-partnership .banner-info{overflow:hidden;color:#fff;padding-top:5%;padding-left:2%;font-size:30px}.banner-partnership .banner-info-title{width:628px;font-weight:700;text-align:center}.banner-partnership .banner-info p{margin-bottom:0}.banner-partnership .banner-info .btn{color:#000;background-color:#fff;text-transform:uppercase;font-size:24px;font-weight:700;border:0;border-radius:0;position:relative;margin-top:19px;width:245px;height:66px;padding-left:45px}.banner-partnership .banner-info .btn:after{content:"";border-top:18px solid transparent;border-bottom:18px solid transparent;border-right:20px solid #000;position:absolute;top:50%;left:15px;transform:translateY(-50%);border-radius:5px;overflow:hidden}.banner-partnership.campaign{background-size:cover}.partner-banner.register.campaign{background:url(/app/assets/img/partner-banner-2-campaign.png?a0df46e0b82b6b732d939f1dc8186b80) no-repeat 50%;background-size:cover}.partner-banner.down-app.campaign{background-size:cover}.form-partnership .content-form{padding:25px 30px 15px}.form-partnership .title{border-radius:5px 5px 0 0}.form-partnership input[type=number],.form-partnership input[type=text],.form-partnership select,.form-partnership textarea{border:1px solid #b8becc;padding:5px 5px 5px 15px}.form-partnership select{color:#818181}.partner-information{color:#000;background-color:#f5f5f5;padding:62px 0}.partner-information .partner-information-local,.partner-information .partner-information-title{font-size:28px;font-weight:700;margin-bottom:28px}.partner-information .partner-information-local p{font-size:24px}.partner-information .address{font-weight:400;padding-left:26px;padding-top:2px;line-height:38px}.partner-information .address :not(:last-child){margin-bottom:0}.partner-information .partner-information-list{padding-left:15px}.partner-information .partner-information-list .item{font-size:24px;position:relative;padding-left:54px;padding-bottom:28px}.partner-information .partner-information-list .item:not(p):before{content:"";width:30px;height:30px;background-image:url(/app/assets/img/rebranding-check.svg?c21484bbd31fa9d87394855f90828295);position:absolute;top:2px;left:8px}.partner-information .partner-information-list .item:last-child{padding-bottom:7px}.partner-information .partner-information-list .importantItem:after{content:"*";color:#cf2127}.partner-information .partner-information-list .notice{font-size:24px;color:#cf2127}.partner-information .col-5{padding-right:35px}.partner-information .col-6{padding-left:63px;margin-left:46px;border-left:1px solid #979797}.register-step{position:relative;width:100%}.register-step__container{display:-ms-flexbox;display:flex;-ms-flex-pack:justify;justify-content:space-between;width:100%}.register-step__item{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;-ms-flex-align:center;align-items:center;-ms-flex:1 1;flex:1 1;width:176px;z-index:1}.register-step__item-index{width:46px;height:46px;border-radius:50%;background-color:#ee4d2d;line-height:46px;text-align:center;color:#fff;font-size:24px;margin-bottom:17px}.register-step__item-desc{width:100%;text-align:center;font-size:16px;word-wrap:break-word;color:#464646}.register-step__threading{position:absolute;width:calc(100% - 176px);height:8px;left:88px;top:19px;background-color:#ee4d2d}.banner-partnership-confirm{position:relative;overflow:hidden;background:url(/app/assets/img/bg-partnership-comfirm.png?f2e1c5b8053b40224c2e0e7f1de8df98) no-repeat 80% 50%;background-size:cover}.banner-partnership-confirm .banner-info{overflow:hidden;color:#fff;padding-top:8%;padding-left:2%;font-size:42px;line-height:54px;font-weight:700}.banner-partnership-confirm .banner-info p{margin-bottom:0}.banner-partnership-confirm .banner-info .btn{color:#000;background-color:#fff;text-transform:uppercase;font-size:24px;font-weight:700;border:0;border-radius:0;position:relative;margin-top:19px;width:245px;height:66px;padding-left:45px}.banner-partnership-confirm .banner-info .btn:after{content:"";border-top:18px solid transparent;border-bottom:18px solid transparent;border-right:20px solid #000;position:absolute;top:50%;left:15px;transform:translateY(-50%);border-radius:5px;overflow:hidden}.banner-partnership-confirm .banner-info .triangle-icon{border-top:60px solid transparent;border-bottom:60px solid transparent;border-right:60px solid #fff}.partner-list-service{overflow:hidden;background-color:#fff;padding-top:77px;padding-bottom:86px}.partner-list-service .list-service-title{text-align:center;color:#3c3c3c;font-size:45px;font-weight:700;padding-bottom:77px}.partner-list-service .service-item{text-align:center;width:25%;float:left}.partner-list-service .service-inner{padding:0 15px}.partner-list-service .service-title{color:#ee4d2d;font-size:20px;font-weight:700;padding:16px 0 12px}.partner-list-service .service-image{display:block;margin:auto;height:96px}.partner-list-service .service-content{text-align:center;font-size:18px;line-height:24px}.partner-banner.register{background:url(/app/assets/img/partner-banner-2.png?b8de62a400483f87ef2af362b26862ee) no-repeat 50%;background-size:cover;color:#fff;font-size:29px;padding-top:20px;line-height:39px;position:relative;min-height:298px}.partner-banner.register p{margin-bottom:10px;line-height:38px}.partner-banner.register .btn{font-weight:700;font-size:24px;text-transform:uppercase;background-color:#fff;color:#000;border:3px solid #fff;margin-top:7px;width:250px;height:65px;transition:all .2s}.partner-banner.register .btn:hover{background-color:transparent;color:#fff}.partner-banner.down-app{background:url(/app/assets/img/partner-banner-3.jpg?17d9ec17ad6c02b3556e1c9d13a8f24f) no-repeat 50%;background-size:cover;color:#fff;padding:65px 0}.partner-banner.down-app .scan-code{background-color:#fff;border-radius:5px;position:relative;margin-right:110px;overflow:hidden}.partner-banner.down-app .scan-code:after{content:"OR";position:absolute;top:50%;right:-112px;background-color:#fff;color:#000;font-size:20px;border-radius:50%;transform:translate(-50%,-50%);z-index:2;border:5px solid #d00001;width:55px;height:55px;text-align:center;font-weight:700;padding-top:8px}.partner-banner.down-app .scan-code:before{content:"";position:absolute;top:0;bottom:0;right:-58px;border-radius:3px;width:4px;z-index:1;background-color:#fff}.partner-banner.down-app .guide-down{font-size:36px;width:340px;margin-top:-5px;margin-left:50px;line-height:47px}.partner-banner.down-app .guide-down .btn{font-size:24px;text-transform:uppercase;color:#fff;border:3px solid #fff;border-radius:0;background-color:transparent;margin-top:15px;width:244px;height:65px;font-weight:700;transition:all .2s}.partner-banner.down-app .guide-down .btn:hover{background-color:#fff;color:#d00001}.partner-banner.down-app .down-app-img{width:347px}.form-partnership{background-color:#fff;border-radius:5px;width:400px;float:left;margin:35px 0}.form-partnership .upload-image-identity{font-size:16px;margin-bottom:16px}.form-partnership .upload-image-identity .image-title{position:absolute;top:10%;left:30%}.form-partnership .upload-image-identity .item-upload{width:auto;position:relative;height:auto!important}.form-partnership .upload-image-identity .item-upload .icon-close{position:absolute;right:-7px;top:-7px}.form-partnership .upload-image-identity .item-upload .image-upload{background:#9c9c9c}.form-partnership .upload-image-identity .item-upload .image-upload img{width:100%;-o-object-fit:cover;object-fit:cover;height:150px;margin:0 auto;display:block}.form-partnership .upload-image-identity .box-image-upload{width:100%;height:100px;position:relative;background:#faebd7;text-align:center;border:1px solid #b8becc}.form-partnership .upload-image-identity .box-image-upload.required-data{color:#cf2127;border-color:#cf2127}.form-partnership .upload-image-identity .box-image-upload .icon{top:40%;position:absolute;right:44%}.form-partnership .content-form-wrapper{border-radius:0 0 8px 8px}.form-partnership .content-form-wrapper .body-form{padding:25px 30px 15px}.form-partnership .content-form-wrapper .body-form .notice-message{color:#cf2127}.form-partnership .content-form-wrapper .body-form .item-company{margin-bottom:12px}.form-partnership .content-form-wrapper .btn{background-color:#ee4d2d;border-color:#ee4d2d}.form-partnership .title{font-size:18px;font-weight:700;color:#ee4d2d;text-align:center;background-color:#fafafa;padding:24px 10px 16px;margin-bottom:0;border-bottom:1px solid #b8becc}.form-partnership .btn-register{font-size:20px;color:#fff;border-radius:5px;background-color:#ee4d2d;width:100%;padding:4px 10px;margin-top:16px}.form-partnership .btn-register.btn{border-color:#ee4d2d}.form-partnership .sigCanvas{border:1px solid #b8becc;width:100%;height:200px}.form-partnership .sigCanvas.required-data{border-color:#cf2127}.form-partnership input[type=number],.form-partnership input[type=text],.form-partnership select,.form-partnership textarea{font-size:18px;width:100%;height:42px;border-radius:3px;margin-bottom:16px;outline:none}.form-partnership input[type=number]:focus,.form-partnership input[type=text]:focus,.form-partnership select:focus,.form-partnership textarea:focus{font-size:18px;border-color:#ee4d2d}.form-partnership input.alert,.form-partnership select.alert{border-color:#cf2127}.form-partnership input::-webkit-input-placeholder{color:#818181}.form-partnership input::-ms-input-placeholder{color:#818181}.form-partnership input::placeholder{color:#818181}.form-partnership textarea{height:82px;resize:none;transition:all .3s}.form-partnership select,.form-partnership select option:checked{color:#000}.form-partnership select option:first-child{color:#818181}.form-partnership button:disabled,.form-partnership button[disabled]{border:1px solid #999;background-color:#ccc;color:#666}.partner-process-register{background-color:#fff;padding:86px 0 158px}.partner-process-register .process-register-title{color:#3c3c3c;font-size:45px;font-weight:700;text-align:center;margin-bottom:70px}.partner-process-register .process-steps__image{width:214px;height:215px;margin-bottom:36px;margin-left:50px}.partner-information-confirm{color:#000;background-color:#f5f5f5;padding:62px 0}.partner-information-confirm .partner-information-local,.partner-information-confirm .partner-information-title{font-size:28px;font-weight:700;margin-bottom:28px}.partner-information-confirm .partner-information-local p{font-size:24px}.partner-information-confirm .address{font-weight:400;padding-left:26px;padding-top:2px;line-height:38px}.partner-information-confirm .partner-information-list{padding-left:15px}.partner-information-confirm .partner-information-list .item{font-size:24px;position:relative;padding-left:54px;padding-bottom:28px}.partner-information-confirm .partner-information-list .item:not(p):after{content:"";width:30px;height:30px;background-image:url(/app/assets/img/rebranding-check.svg?c21484bbd31fa9d87394855f90828295);position:absolute;top:2px;left:8px}.partner-information-confirm .partner-information-list .item:last-child{padding-bottom:7px}.partner-information-confirm .col-5{padding-right:35px}.partner-information-confirm .col-6{padding-left:63px;margin-left:46px;border-left:1px solid #979797}.partner-process-workflow{background-color:#fff;padding:138px 0 0}.partner-process-workflow .workflow-title{text-align:center;color:#3c3c3c;font-size:45px;font-weight:700;padding-bottom:46px}.partner-process-workflow .process-workflow{counter-reset:a;margin-left:80px;margin-top:5px;padding-left:0;position:relative}.partner-process-workflow .process-workflow:after{content:"";position:absolute;top:0;left:22px;bottom:27%;width:2px;background-color:#c2c2c2;z-index:1}.partner-process-workflow .process-workflow .item{font-size:24px;color:#ee4d2d;font-weight:700;display:block;position:relative;padding-left:70px;padding-bottom:58px}.partner-process-workflow .process-workflow .item:before{content:counters(a,"") "";counter-increment:a;text-align:center;font-size:24px;color:#ee4d2d;width:46px;height:46px;border-radius:50%;border:2px solid;position:absolute;top:0;left:0;z-index:2;padding-top:3px;background-color:#fff}.partner-process-workflow .process-workflow .item:not(:last-child):after{content:"";border-left:7px solid transparent;border-right:7px solid transparent;border-top:14px solid #c2c2c2;position:absolute;bottom:0;left:16px}.partner-process-workflow .process-workflow .item:first-child:before{background-color:#ee4d2d;color:#fff}.partner-process-workflow .process-workflow .desc{font-size:18px;color:#3c3c3c;font-weight:400}.partner-question{background-color:#fff;padding:60px 0}.partner-question .partner-question-title{font-size:45px;text-align:center;font-weight:700;margin-bottom:37px}.partner-question .card{border:1px solid #c2c2c2;border-radius:8px}.partner-question .card-header{color:#3c3c3c;font-size:24px;font-weight:700;cursor:pointer;border:0;background-color:transparent;padding:22px 70px;position:relative}.partner-question .card-header:after{content:"";position:absolute;top:50%;right:79px;border:solid #3c3c3c;border-width:0 2px 2px 0;display:inline-block;padding:5px;transform:rotate(-135deg);transition:transform .2s}.partner-question .card-header.collapsed:after{transform:rotate(45deg) translateY(-50%)}.partner-question .card-body{font-size:24px;color:#3c3c3c;padding:17px 70px 23px;border:0;position:relative;line-height:33px}.partner-question .card-body:after{content:"";position:absolute;top:0;left:70px;right:140px;height:1px;background-color:#c2c2c2}.static-content{padding:30px 0;margin-bottom:20px}.static-content .static-area{font-size:12px}.static-content .static-area .static-headers{padding-bottom:20px;width:100%;float:left;font-weight:700;text-shadow:0 1px 1px #fff;font-size:22px;text-align:center}.static-content .static-area .text-form{clear:both;margin-top:10px;position:relative;text-shadow:0 1px 1px #fff;min-height:400px;white-space:normal;border:1px solid #eee;padding:20px;overflow:hidden;border-radius:2px;background:#fff}.now-login{width:600px;margin:auto;clear:both;padding:30px 0}.now-login .content{padding:30px;background-color:#fff}.now-login .title{font-size:18px;font-weight:700;text-align:center;margin-bottom:17px}.now-login .login-via{margin-bottom:35px}.now-login .login-via .item{color:#fff;text-align:center;text-transform:uppercase;width:100%;position:relative;margin-bottom:10px;padding:7px 0;border-radius:3px;cursor:pointer}.now-login .login-via .item.phone{background-color:#329900}.now-login .login-via .item.fb{background-color:#187caa}.now-login .login-via .item.plus{background-color:#ff5252}.now-login .login-via .fab,.now-login .login-via .fas{position:absolute;top:5px;left:7px;background-color:#fff;border-radius:50%;font-size:15px;width:25px;height:25px;text-align:center;line-height:25px}.now-login .login-via .fa-mobile-alt{color:#6cc942}.now-login .login-via .fa-facebook-f{color:#187caa}.now-login .login-via .fa-google-plus-g{color:#ff5252}.now-login .text{font-size:12px;color:#464646;text-align:center}.now-login .field-group{border:1px solid #959595;border-radius:4px;overflow:hidden;margin-bottom:10px}.now-login .btn-submit{margin-bottom:15px;padding:6px 0;text-transform:uppercase}.now-login .alert-danger{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.now-login .alert-danger,.now-login .alert-success{margin-top:10px;padding:10px;margin-bottom:10px;border-radius:4px}.now-login .alert-success{color:#6cc942;font-weight:700}.now-login .form-login-input .input-group{border-bottom:1px solid #959595;position:relative;-ms-flex-align:center;align-items:center}.now-login .form-login-input .input-group:last-child{border:0}.now-login .form-login-input input[type=checkbox]{width:inherit;margin-top:10px}.now-login .form-login-input input[type=checkbox]+label{vertical-align:text-bottom;margin-bottom:0;padding-left:5px}.now-login .form-login-input .far,.now-login .form-login-input .fas{color:#9fa9aa;position:absolute;top:13px;left:8px}.now-login .form-login-input input{border:0;border-radius:0;width:100%;padding:9px 10px 9px 33px}.now-login .login-mess-policy{text-align:center;color:#707070;padding-top:20px;padding-bottom:20px}.history-table-container{background:#fff;padding:20px 15px;border:1px solid #ebebeb;border-top:0}.history-table-container .filter-table .filter-table-item .flatpickr-input{font-size:14px;padding:3px}.history-table-container .filter-table .filter-table-item select{font-size:14px}.history-table{font-size:13px;margin-top:30px}.history-switch{display:-ms-flexbox;display:flex;border-bottom:1px solid #ebebeb}.history-switch .item{font-size:18px;font-weight:700;cursor:pointer;padding:5px 25px;border-radius:5px 5px 0 0}.history-switch .active{cursor:default;background-color:#fff;margin-bottom:-1px;border:1px solid #ebebeb;border-bottom:0}.history-switch .active.table{color:#f37934}.history-switch .active.now{color:#cf2127}.history-table-row{display:-ms-flexbox;display:flex;-ms-flex-flow:row wrap;flex-flow:row wrap;font-size:.75rem;border-bottom:1px solid #ebebeb;-ms-flex-align:center;align-items:center}.history-table-row:last-child{border-bottom:none}.history-table-row.hightlight{background:#fbf9d8}.history-table-row div.text-body{cursor:pointer}.history-table-heading{color:red;font-size:13px}.history-table-cell{-ms-flex:1 1;flex:1 1;min-height:0;min-width:0;width:auto;position:relative;padding:8px 5px}.history-table-cell .pointer{cursor:pointer}.history-table-col1{width:40px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col2{width:150px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col3{width:190px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col5{width:200px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col6{width:90px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col7{width:120px;-ms-flex:0 0 auto;flex:0 0 auto}.history-table-col8{width:110px;-ms-flex:0 0 auto;flex:0 0 auto;text-align:center}.history-table-status{display:block;width:90px;height:26px;line-height:26px;padding:0 10px;border-radius:3px;background:#6cc942;text-align:center;color:#464646}.history-table-status+.history-table-status{margin-top:5px}.history-table-status.gray{background:#d7d7d7}.history-table-status.red{background:red;color:#fff}button.history-table-status.gray{border:none}.history-customer-order{margin-top:10px}.history-customer-order .history-table-row:last-child{border-bottom:1px solid #ebebeb}.history-customer-order .history-table-scroll{height:400px;overflow-y:auto}.history-customer-order .history-table-heading{font-weight:700;color:#252525}.history-customer-order .history-table-cell{padding:10px 0}.history-customer-order .history-table-row{font-size:13px}.history-customer-order .history-table-col1{width:180px}.history-customer-order .history-table-col2{width:250px;-ms-flex:0 0 auto;flex:0 0 auto;padding:10px}.history-customer-order .history-table-col3{width:100px;padding:10px}.history-customer-order .history-table-col4{width:100px;-ms-flex:0 0 auto;flex:0 0 auto}.history-customer-order .history-table-col5,.history-customer-order .history-table-col6{width:90px}.history-customer-order .history-table-col7{width:110px}.history-customer-order .history-table-col8{-ms-flex:1 1;flex:1 1;width:auto}.history-customer-order .history-table-heading .history-table-cell:first-letter{text-transform:uppercase}.history-customer-order .circle-status.note{background-color:#329900}.history-customer-order .history-order{position:relative}.history-customer-order .history-order:hover .tooltip{display:block}.history-customer-order .tooltip{opacity:1;background:#000;color:#fff;padding:5px 10px;border-radius:5px;margin-top:6px;display:none}.history-customer-order .tooltip:after{content:"";position:absolute;top:-6px;left:20%;width:0;height:0;border-left:6px solid transparent;border-right:6px solid transparent;border-bottom:6px solid #000}.history-customer-total{font-size:16px}.history-table-note{font-size:11px;padding-left:3px}.customer-order{padding-left:10px}.customer-order-avatar{width:40px;height:40px;border-radius:50%;overflow:hidden;background:#ebebeb}.customer-order-name{font-weight:700;margin-left:10px;font-size:.875rem}.perfect-scroll{position:relative;overflow:auto}.now-incoming .carousel img{width:100%;display:inline-block;pointer-events:none}.now-incoming .carousel .thumbs-wrapper{margin:20px;overflow:hidden}.now-incoming .carousel .thumbs{transition:all .15s ease-in;transform:translateZ(0);position:relative;list-style:none;white-space:nowrap}.now-incoming .carousel .thumb{transition:border .15s ease-in;display:inline-block;width:80px;margin-right:6px;white-space:nowrap;overflow:hidden;border:3px solid #fff;padding:2px}.now-incoming .carousel .thumb.selected,.now-incoming .carousel .thumb:hover{border:3px solid #333;padding:2px}.now-incoming .carousel .thumb img{vertical-align:top}.now-incoming .carousel.carousel-slider{position:relative;margin:0;overflow:hidden}.now-incoming .carousel .slider-wrapper{overflow:hidden;margin:auto;width:100%;transition:height .15s ease-in}.now-incoming .carousel .slider-wrapper.axis-horizontal .slider{-ms-box-orient:horizontal;display:-ms-flexbox;display:flex}.now-incoming .carousel .slider-wrapper.axis-horizontal .slider .slide{-ms-flex-direction:column;flex-direction:column;-ms-flex-flow:column;flex-flow:column}.now-incoming .carousel .slider-wrapper.axis-vertical{-ms-box-orient:horizontal;display:-ms-flexbox;display:flex}.now-incoming .carousel .slider-wrapper.axis-vertical .slider{-ms-flex-direction:column;flex-direction:column}.now-incoming .carousel .slider{margin:0;padding:0;position:relative;list-style:none;width:100%}.now-incoming .carousel .slider.animated{transition:all .35s ease-in-out}.now-incoming .carousel .slide{min-width:100%;margin:0;position:relative}.now-incoming .carousel .slide img{width:100%;vertical-align:top;border:0}.now-incoming .carousel .slide iframe{display:inline-block;width:calc(100% - 80px);margin:0 40px 40px;border:0}.now-incoming .carousel .slide .legend{transition:all .5s ease-in-out;position:absolute;bottom:40px;left:50%;margin-left:-45%;width:90%;border-radius:10px;background:#000;color:#fff;padding:10px;font-size:12px;text-align:center;opacity:.25;transition:opacity .35s ease-in-out}.now-incoming .carousel .control-dots{position:absolute;bottom:0;margin:10px 0;text-align:center;width:100%}.now-incoming .carousel .carousel-status,.now-incoming .carousel .control-dots{display:none}.now-incoming .carousel .control-arrow{cursor:pointer;position:absolute;top:0;left:0;bottom:20px;background-color:transparent;border:0;width:25px}.now-incoming .carousel .control-arrow:hover:after{opacity:1}.now-incoming .carousel .control-arrow:focus{outline:none}.now-incoming .carousel .control-arrow:after{content:"";position:absolute;top:50%;left:0;z-index:3;transform:translateY(-50%);width:25px;height:50px;opacity:.7;background:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44) -17px -139px}.now-incoming .carousel .control-arrow.control-disabled{display:none}.now-incoming .carousel .control-next{left:auto;right:0}.now-incoming .carousel .control-next:after{background-position:-15px -203px}.order-receipt table{width:100%}.order-receipt .order-receipt-topping{background-color:#ccc}#order-detail-print-modal .btn-print{width:98%;display:block}.table-cancel-confirm-container .modal-header{display:unset;font-weight:700}.table-cancel-confirm-container .modal-content{min-height:200px}.table-cancel-confirm-container .modal-body{-ms-flex-pack:center;justify-content:center;-ms-flex-align:center;align-items:center;display:-ms-flexbox;display:flex}.table-cancel-confirm-container .modal-footer button:last-child{border-color:#f37934;color:#f37934;background:#fff;font-weight:700}.table-cancel-confirm-container .modal-footer button:last-child:hover{background:#f37934;color:#fff}.tip-payment-section{width:540px}.tip-payment-section__body{padding:32px 10px;background:#fff}.tip-payment-section__icon{margin:0 auto 10px}.tip-payment-section__back-btn{line-height:30px;margin:0}.tip-payment-section__instruction--max-width{max-width:365px;margin:auto}.custom-checkbox [type=checkbox]+label:before{border-radius:5px}.item-upload{width:50px;height:50px!important}.item-upload label{width:45px;height:45px;display:block}.item-upload input[type=file]{width:45px;height:45px;position:absolute}.item-rating-section{width:540px}.item-rating-section__header{background-color:#fff;text-align:center;margin-bottom:10px;padding-bottom:15px}.item-rating-section__header__icon{padding-top:20px}.item-rating-section__header__icon img{margin:0 auto}.item-rating-section__body{background:#fff;max-height:550px;overflow:auto;overflow-x:hidden}.item-rating-section__body__item{padding-top:10px;border-bottom:1px solid #f5f5f5;padding-bottom:10px;height:72px;width:100%;margin-left:15px;padding-right:30px}.item-rating-section__body__item__row__name{color:#464646;font-size:16px;cursor:pointer;line-height:1.3em;font-weight:700}.item-rating-section__body__item__row img{width:50px}.item-rating-section__body__item .vote{font-size:20px;color:#b9bcc3;margin-left:30px;margin-top:15px;cursor:pointer}.item-rating-section__body__item .vote.active{color:#fdce4d}.item-rating-section__body__item .vote.disabled{cursor:no-drop}.item-rating-section__back-btn{line-height:30px;margin:0}.item-rating-section__instruction--max-width{max-width:365px;margin:auto}.now-wrapper-chat .live-chat .header-chat svg{width:24px;height:24px;float:right;margin-right:30px}.now-wrapper-chat .live-chat .header-chat h4{line-height:1.7em!important}.now-wrapper-chat .live-chat input[type=text]{font-size:14px}.now-wrapper-chat .live-chat input[type=text]:-ms-input-placeholder{color:#959595}.now-wrapper-chat .live-chat .chat-close{background:none!important;border:none;padding:0!important;font:inherit;cursor:pointer}.now-wrapper-chat .chat-history .overlay>.fas{position:absolute;top:50%;left:50%;margin-left:-15px;margin-top:-15px;color:#000;font-size:30px}.now-wrapper-chat .chat-history .readmore>button{background:none!important;color:inherit;border:none;padding:0!important;font:inherit;cursor:pointer;color:#0288d1}.now-wrapper-chat .message-received .chat-message-content h5{font-weight:500}.contact-section{padding:30px 0}.contact-section_container{width:1400px;margin:0 auto}.contact-section_container .row{padding-left:20px}.contact-title{font-size:20px}.contact-form{padding:30px 20px}@supports ((position:-webkit-sticky) or (position:sticky)){.contact-form{position:-webkit-sticky;position:sticky;top:100px;z-index:10}}.contact-form_item{display:inline-block;width:48%;margin:0 0 10px}.contact-form_item label{font-size:16px}.contact-form_item input[type=number],.contact-form_item input[type=text],.contact-form_item select,.contact-form_item textarea{font-size:14px;width:100%;height:42px;border:1px solid #b8becc;border-radius:3px;margin-bottom:16px;padding:5px 5px 5px 15px}.contact-form_item input[type=number]:focus,.contact-form_item input[type=text]:focus,.contact-form_item select:focus,.contact-form_item textarea:focus{font-size:14px}.contact-form_item input.alert,.contact-form_item select.alert{border-color:#cf2127}.contact-form_item input::-webkit-input-placeholder{color:#d8d8d8;font-size:14px}.contact-form_item input::-ms-input-placeholder{color:#d8d8d8;font-size:14px}.contact-form_item input::placeholder{color:#d8d8d8;font-size:14px}.contact-form_item textarea{height:82px;resize:none;transition:all .3s}.contact-form_item textarea:focus{font-size:14px}.contact-form_item textarea::-webkit-input-placeholder{color:#d8d8d8;font-size:14px}.contact-form_item textarea::-ms-input-placeholder{color:#d8d8d8;font-size:14px}.contact-form_item textarea::placeholder{color:#d8d8d8;font-size:14px}.contact-form_item select{color:#818181}.contact-form_item select option:checked{color:#000}.contact-form_item select option:first-child{color:#818181}.contact-form_item button:disabled,.contact-form_item button[disabled]{border:1px solid #999;background-color:#ccc;color:#666}.right{float:right}.full{width:100%}.seo-footer-link{margin:50px 0}.seo-footer-link__head{color:rgba(0,0,0,.54);font-weight:700;text-transform:uppercase}.seo-footer-link__body{column-count:4}.seo-footer-link__item{padding-right:10px;break-inside:avoid}.seo-footer-link__title{font-weight:700;margin:0 0 .125rem;padding:.125rem 0;text-transform:uppercase;color:rgba(0,0,0,.54);font-size:13px}.seo-footer-link__title:hover{color:#0288d1}.seo-footer-link__sub-item-wrapper{list-style-type:none;padding:0;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap}.seo-footer-link__sub-item{font-size:13px;color:rgba(0,0,0,.54)}.seo-footer-link__sub-item:after{content:"|";color:rgba(0,0,0,.54)!important;padding:0 3px}.seo-footer-link__sub-item:last-child:after{content:""}.seo-footer-link__sub-item:hover{color:#0288d1}.now-banner{height:100vh;position:fixed;top:70px;left:0;right:0;z-index:0;background-image:url(static/img/main-banner.jpg?45bff8c9ec408a5ba51f9fdef662324e);background-size:cover;overflow:hidden}.now-banner .container{height:100%;position:relative}.now-search{color:#fff;width:470px;z-index:2;position:absolute;top:50%;left:20px;transform:translateY(-50%);margin-top:-30px}.now-search .title{font-size:24px;font-weight:700;margin-bottom:5px}.now-search .local{font-size:15px;text-transform:capitalize}.now-search .form-search{padding:27px 0 40px;position:relative}.now-search .form-search .input-group input{width:100%;padding-right:75px;padding-left:10px;height:50px;border:0;border-radius:6px 10px 10px 6px}.now-search .form-search .input-group input:focus{outline:none}.now-search .form-search .input-group input ::-webkit-input-placeholder{color:#d7d7d7}.now-search .form-search .input-group input ::-moz-placeholder{color:#d7d7d7}.now-search .form-search .btn-search{width:70px;height:50px;position:absolute;top:0;right:0;border-radius:0 6px 6px 0;padding-top:11px}.now-search .icon-app-store-big,.now-search .icon-gg-play-big{transform:scale(.75);transform-origin:left;margin-right:-40px}.now-search .now-idea-searching{margin-top:-40px}.contain-main-home .main-right-home{float:right;width:670px;margin-top:48px;position:relative;z-index:auto;margin-bottom:75px;min-height:calc(100vh - 123px)}.main-right-home .now-list-restaurant{padding:13px 40px 10px;border:1px solid #d7d7d7;background-color:#fff}.main-right-home .now-list-restaurant .list-restaurant{margin:0 -8px}.main-right-home .now-list-restaurant .title{font-size:16px;font-weight:700}.main-right-home .now-list-restaurant .title-wrapper{display:-ms-flexbox;display:flex;-ms-flex-pack:justify;justify-content:space-between}.main-right-home .now-list-restaurant .item-restaurant{padding:8px;width:33.33333%}.main-right-home .now-list-restaurant .img-restaurant{height:116px}.main-right-home .now-list-restaurant.collection .img-restaurant{border:1px solid #d7d7d7;border-radius:6px}.main-right-home .now-list-restaurant.collection .item-content{height:165px}.main-right-home .now-list-restaurant.collection .info-restaurant{border:0;height:unset}.main-right-home .now-list-restaurant.collection .box-loading{height:166px}.main-right-home .now-list-restaurant.collection .box-loading .box-line-lg,.main-right-home .now-list-restaurant.collection .box-loading .box-line-lgx{display:none}.main-right-home .now-list-restaurant-row .item-restaurant{width:100%}.main-right-home .now-list-restaurant-row .header-tab{font-size:16px;padding-top:2px;padding-bottom:8px}.main-right-home .now-list-restaurant-row .header-tab select{font-size:14px;padding:6px 0 6px 5px;border-radius:4px;border-color:#d7d7d7;max-width:200px}.main-right-home .now-list-restaurant-row .header-tab .item-tab{cursor:pointer;line-height:22px;margin-right:40px;padding:0;background-color:transparent;border:none}.main-right-home .now-list-restaurant-row .header-tab .item-tab:focus{outline:none}.main-right-home .now-list-restaurant-row .header-tab .item-tab.active{color:#0288d1}.main-right-home .now-list-restaurant-row .header-tab .item-tab:last-child{margin-right:0}.main-right-home .now-list-restaurant-row .img-restaurant{height:90px}.main-right-home .now-list-restaurant-row .now-loading-restaurant .box-loading{width:100%;position:relative;height:90px;padding-left:165px;margin-bottom:15px}.main-right-home .now-list-restaurant-row .now-loading-restaurant .box-thumbnail{width:142px;position:absolute;top:8px;left:8px;height:90px}.main-right-home .now-list-restaurant-row .now-loading-restaurant [class*=box-line]{height:12px;margin-bottom:14px}.main-right-home .now-list-restaurant-row .now-loading-restaurant .box-line-df{margin-top:0}.main-right-home .now-loading-restaurant .box-loading{width:33.33333%;height:209px;margin-bottom:6px}.main-right-home .now-loading-restaurant .box-thumbnail{height:116px}.main-right-home .now-loading-restaurant [class*=box-line]{height:8px;margin-bottom:10px}.main-right-home .view-all-deal{font-size:14px;font-weight:400;color:#0288d1;background-color:transparent;border:0;cursor:pointer;float:right}.main-right-home .view-all-deal .icon-list-deal{top:-1px;margin-right:4px}.main-right-home .user-get-local{background-color:#fff;margin-bottom:20px;padding:14px 17px 14px 40px;border-radius:4px}.main-right-home .user-get-local .pointer{cursor:pointer}.category-list-filter>a{display:inline-block;margin-right:15px;margin-bottom:15px}.category-list-filter .category-item{font-size:16px;color:#fff;white-space:nowrap;cursor:pointer;padding:7px 21px;border-radius:6px;border:1px solid;display:inline-block;transition:all .3s ease}.category-list-filter .category-item:hover{text-decoration:none;color:#252525;background-color:#fff;border-color:#fff}.category-list-filter .category-item.active{color:#252525;background-color:#fff}.now-container-coporation{background-color:#fff;box-shadow:0 2px 2px 0 rgba(50,50,50,.1);-moz-box-shadow:0 2px 2px 0 rgba(50,50,50,.1);-webkit-box-shadow:0 2px 2px 0 rgba(50,50,50,.1);padding:20px 150px 50px;border-radius:4px;margin-top:60px;position:relative}.now-container-coporation.img-right{padding:50px 350px 50px 150px}.now-container-coporation .title{font-size:22px;font-weight:700;margin-bottom:10px}.now-container-coporation .bg-corporation{position:absolute;bottom:-1px;right:0;z-index:2;line-height:0;text-align:center;width:350px}.now-idea-searching{padding-top:1px;position:absolute;top:100%;left:0;width:100%;z-index:9}.now-idea-searching .opentime-status{top:50%;right:20px;left:auto;transform:translateY(-50%)}.now-idea-searching .opentime-status .stt{width:8px;height:8px}.now-idea-searching .opentime-status .stt:before{content:attr(title);display:inline-block;color:inherit;white-space:nowrap;font-size:12px;position:absolute;right:0;margin-right:13px;top:-6px}.now-idea-searching .opentime-status .online{color:#6cc942}.now-idea-searching .opentime-status .offline{color:#6d6f71}.now-idea-searching .now-idea-searching-footer .content{color:#252525;cursor:pointer;background-color:#ebebeb;padding:10px 15px;position:relative}.now-idea-searching .now-idea-searching-footer .icon{text-align:center;vertical-align:middle;line-height:30px;background-color:#cf2127;color:#fff;width:30px;height:30px;border-radius:50%;margin-right:10px}.now-idea-searching .now-idea-searching-footer .key-word{font-weight:700;color:#cf2127}.now-idea-searching .now-list-restaurant-row{padding-bottom:0}.now-idea-searching .now-list-restaurant-row .item-content{padding:10px;border-bottom:1px solid #ebebeb;cursor:pointer}.now-idea-searching .now-list-restaurant-row .item-content:hover{background-color:#ebebeb;text-decoration:none}.now-idea-searching .now-list-restaurant-row .img-restaurant{width:50px;height:30px;float:left;overflow:hidden;margin-top:3px}.now-idea-searching .now-list-restaurant-row .img-restaurant img{width:100%;height:100%}.now-idea-searching .now-list-restaurant-row .info-restaurant{color:#252525;position:relative;overflow:hidden;padding-left:10px;padding-right:95px}.now-idea-searching .now-list-restaurant-row .info-restaurant .name-res{font-weight:700;font-size:14px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-top:0}.now-idea-searching .now-list-restaurant-row .info-restaurant .address-res{font-size:12px;color:#959595;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}.now-idea-searching .now-list-restaurant-row .carousel-control-prev{left:-32px}.now-idea-searching .now-list-restaurant-row .carousel-control-next{right:-32px}.now-wrapper-chat{cursor:default;border-right:0;position:fixed;bottom:0;right:40px;overflow:hidden;z-index:103}.now-wrapper-chat .group-chat{position:absolute;bottom:0;right:100%;margin-right:5px}.now-wrapper-chat .group-chat .list-min-chat{white-space:nowrap;position:absolute;bottom:100%;margin:0;padding:0;right:0;background-color:#ebebeb;border:1px solid #959595;margin-bottom:-1px;display:none}.now-wrapper-chat .group-chat .list-min-chat .item{font-size:12px;padding:3px 20px 3px 5px;position:relative;cursor:pointer}.now-wrapper-chat .group-chat .list-min-chat .item:hover{background-color:#0288d1;color:#fff}.now-wrapper-chat .group-chat .list-min-chat .close{color:#959595;position:absolute;top:2px;right:0;padding-right:5px;text-align:center;padding-left:2px;cursor:pointer}.now-wrapper-chat .group-chat .icon-group{text-align:center;color:#959595;font-size:16px;cursor:pointer;width:32px;height:27px;border:1px solid #959595;border-radius:2px;background-color:#ebebeb;padding-top:3px;box-sizing:border-box;display:none}.now-wrapper-chat .live-chat{float:left;width:300px;margin-left:15px;position:relative}.now-wrapper-chat .live-chat.ui-tabs{font-size:12px;width:300px;display:none;z-index:999;margin-right:10px;float:right}.now-wrapper-chat .live-chat .header-chat{font-size:15px;background-color:#d7d7d7;padding:5px 0 5px 10px;border-radius:10px 10px 0 0}.now-wrapper-chat .live-chat .header-chat h4{font-size:14px;color:#464646;line-height:1.5em;margin:0;cursor:pointer;font-weight:700}.now-wrapper-chat .live-chat .header-chat h4:before{background:#6cc942;border-radius:50%;content:"";display:inline-block;height:8px;margin:0 8px 0 0;width:8px}.now-wrapper-chat .live-chat .shipper h5{color:#cf2127}.now-wrapper-chat .live-chat .merchant h5{color:#329900}.now-wrapper-chat .live-chat .user h5{color:#07a99b}.now-wrapper-chat .live-chat input[type=text]{border:1px solid #d7d7d7;border-top:0;border-radius:0;padding:8px;padding-right:35px;outline:none;width:100%;height:45px;box-sizing:border-box;margin:0;background:#fff}.now-wrapper-chat .live-chat input[type=text]::-webkit-input-placeholder{color:#959595}.now-wrapper-chat .live-chat input[type=text]::-ms-input-placeholder{color:#959595}.now-wrapper-chat .live-chat input[type=text]::placeholder{color:#959595}.now-wrapper-chat .chat-message-counter{background:#cf2127;border:1px solid #fff;border-radius:50%;display:none;font-size:12px;font-weight:700;height:28px;left:0;line-height:28px;margin:-15px 0 0 -15px;position:absolute;text-align:center;top:0;width:28px}.now-wrapper-chat .live-chat .chat-close{text-align:center;font-size:22px;color:#959595;display:block;height:27px;width:22px;line-height:22px;position:absolute;top:0;right:1px}.now-wrapper-chat .live-chat .chat-close:hover{text-decoration:none}.now-wrapper-chat .live-chat .btn-send{color:#959595;position:absolute;bottom:0;right:0;height:45px;line-height:45px;padding:0 9px;cursor:pointer}.now-wrapper-chat .chat{background:#fff;border:1px solid #d7d7d7}.now-wrapper-chat .chat-history{height:286px;padding:8px 7px;overflow-y:auto;position:relative}.now-wrapper-chat .chat-message{margin:10px 0}.now-wrapper-chat .chat-message img{border-radius:50%;float:left;height:100%;width:100%}.now-wrapper-chat .chat-message p{margin:0}.now-wrapper-chat .chat-time{font-size:10px;display:none;position:absolute;bottom:0;left:50%;margin:0;line-height:10px;margin-bottom:-10px}.now-wrapper-chat .chat-feedback{font-style:italic;margin:0 0 0 80px}.now-wrapper-chat .chat-history .overlay{z-index:50;background:hsla(0,0%,100%,.7);border-radius:3px;position:absolute;top:0;left:0;width:100%;height:100%}.now-wrapper-chat .chat-history .overlay>.fa{position:absolute;top:50%;left:50%;margin-left:-15px;margin-top:-15px;color:#fff;font-size:30px}.now-wrapper-chat .chat-history .readmore{text-align:center}.now-wrapper-chat .chat-history .readmore>a{color:#0288d1}.now-wrapper-chat .hidden{display:none!important}.now-wrapper-chat .chat-message-content{position:relative}.now-wrapper-chat .chat-message h5{color:#959595;font-size:12px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;line-height:1.5em;margin:0}.now-wrapper-chat .chat-message .chat-status{display:none}.now-wrapper-chat .chat-message:last-child .chat-status{display:inline-block;position:absolute;bottom:0;right:-3px}.now-wrapper-chat .chat-message-content .chat-status .fa{color:#0288d1}.now-wrapper-chat .message-send{text-align:right;margin-bottom:0;margin-top:2px}.now-wrapper-chat .message-send .avatar{display:none}.now-wrapper-chat .message-send .chat-content{color:#fff;border:1px solid #0288d1;background-color:#0288d1}.now-wrapper-chat .message-send h5{display:none}.now-wrapper-chat .message-send .chat-message-content{padding-right:10px}.now-wrapper-chat .chat-message.message-send+.chat-message.message-received{margin-top:10px}.now-wrapper-chat .live-chat .group-event{float:right;padding-top:3px}.now-wrapper-chat .live-chat .group-event .icon-add{font-size:16px;display:inline-block;margin-right:10px;position:relative;top:-4px;left:0;cursor:pointer}.now-wrapper-chat .live-chat.ui-tabs{padding:0;border:0}.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-panel{padding:0}.now-wrapper-chat .live-chat.ui-tabs .header-tab{background:transparent;border:0;display:inline-block;padding:0}.now-wrapper-chat .live-chat.ui-tabs .header-tab .select{padding:6px 0 6px 5px;border-radius:4px;border-color:#d7d7d7;font-size:14px}.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default{background:transparent;border:0}.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default a{color:#fff;padding:1px 5px}.now-wrapper-chat .live-chat.ui-tabs .ui-tabs-nav .ui-state-default.ui-state-active a{border-bottom:2px solid}.now-wrapper-chat .chat-content{color:#464646;font-size:12px;text-align:left;border:1px solid #d7d7d7;padding:4px 12px;display:inline-block;background-color:#d7d7d7;border-radius:4px}.now-wrapper-chat .message-received .chat-message-content{padding-left:30px}.now-wrapper-chat #c-shipper-chat .chartList{color:#cf2127;background-color:#cf2127}.now-wrapper-chat .chat-message-content .avatar{width:28px;height:28px;position:absolute;top:3px;left:-3px}@media screen and (max-width:1366px){.category-list-filter{margin-bottom:-15px}.category-list-filter>a{margin-right:15px;margin-bottom:15px}.category-list-filter .category-item{font-size:14px;padding:5px 15px}.now-search .form-search{padding:20px 0}.now-search .now-idea-searching{margin-top:-20px}}.logo-qr-code{position:relative;text-align:center}.logo-qr-code img{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%)}.now-loading-restaurant.show{display:block!important}.now-search-filter{padding-top:15px}.now-search-filter .list-filter{float:left;padding-top:10px}.now-search-filter .list-filter .item-filter{color:#6d6f71;font-size:13px;text-transform:uppercase;float:left;position:static}.now-search-filter .list-filter .item-filter.show .dropdown-toggle{background-color:#fff;font-weight:700}.now-search-filter .list-filter .item-filter.show .container-box-filter{display:block}.now-search-filter .list-filter .dropdown-toggle{position:relative;cursor:pointer;padding:3px 16px 8px;display:inline-block;border-radius:6px 6px 0 0}.now-search-filter .list-filter .dropdown-toggle:after{border:0;border:solid #6d6f71;border-width:0 1px 1px 0;display:inline-block;padding:2px;transform:translate(-50%) rotate(45deg);-webkit-transform:translate(-50%) rotate(45deg);position:absolute;bottom:2px;left:50%}.now-search-filter .list-filter .tittle-all-cate{font-size:18px;padding-top:10px;margin-bottom:10px}.now-search-filter .list-filter .container-box-filter{position:absolute;top:100%;left:0;background-color:#fff;z-index:2;height:180px;width:868px;border-radius:0 6px 6px 6px;overflow-y:auto;padding:15px;box-shadow:1px 1px 5px 0 rgba(50,50,50,.4);display:none;margin-top:-6px}.now-search-filter .list-filter .container-box-filter .custom-checkbox{float:left;width:33.33%;margin-bottom:5px}.now-search-filter .nav-filter{border-bottom:1px solid #d7d7d7;position:relative;padding-bottom:8px}.now-search-filter .result{font-size:13px;float:left;padding:10px}.now-search-filter .filter-sort{display:block;background:#fff;border-radius:3px;border:1px solid #d7d7d7;color:#252525;font-size:.8rem;font-weight:300;height:40px;line-height:1;margin:0;outline:none;padding:5px 5px 5px 7px;position:relative;text-indent:0;vertical-align:bottom}.now-search-filter .tag-filter{display:-ms-flexbox;display:flex;padding-top:10px}.now-search-filter .tag-filter .widget-tag{font-size:12px;display:inline-block;position:relative;margin-right:15px;padding:4px 7px;background-color:#d7d7d7;border-radius:2px}.now-search-filter .tag-filter .key-word{font-size:14px;font-weight:700}.no-result-search{background-color:#fff;text-align:center;margin:auto;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;padding-top:35px;padding-bottom:35px;margin-top:10px}.icon-pin{display:inline-block}.icon-pin,.icon-pin img{position:relative;z-index:3}.icon-pin img{width:40px}@keyframes l{0%{transform:scale(0);opacity:1}20%{transform:scale(25);opacity:1}to{opacity:0;transform:scale(40)}}.icon-pin:after{content:"";position:absolute;top:50%;left:50%;width:4px;height:4px;background:rgba(40,111,177,.5);opacity:0;border-radius:50%;transform:scale(1) translate(-50%);transform-origin:50% 50%;animation:l 1s linear infinite normal}.header-res-collection{font-size:15px;text-align:center;color:#525252;padding-top:20px}.header-res-collection .title{margin:20px 0;font-size:25px;color:#252525;font-weight:700}.header-res-collection .title-desc{padding:0 15%;line-height:25px;white-space:pre-wrap;margin-bottom:0}.toolbar-res-collection{border-bottom:1px solid #d7d7d7;padding:2px 0 8px;margin-bottom:28px;margin-left:10px;margin-right:10px}.toolbar-res-collection .facebook{margin-top:20px}.toolbar-res-collection .local{font-size:15px;color:#959595;padding-top:20px}.toolbar-res-collection .local .number{padding:0 4px}.fa-tag,.now-list-restaurant .content-promotion .fas{padding-right:5px}.now-branch .banner-brand{position:relative;height:300px;margin-bottom:15px}.now-branch .banner-img{width:100%;max-height:100%}.now-branch .banner-info{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);text-align:center;color:#fff;padding:10px 40px;background:rgba(0,0,0,.3);border-radius:5px}.now-branch .banner-info h2{font-size:30px;font-weight:700;margin:0}.now-branch .banner-info p{font-size:14px;margin-top:10px;margin-bottom:0}.now-branch .brand-filter{background-color:#d7d7d7;padding:10px;margin-bottom:5px}.now-branch .brand-filter select{padding:4px 5px;border:0;margin-right:15px}.now-branch-filter{border-bottom:1px solid #d7d7d7;padding-bottom:13px;margin-bottom:7px}.now-branch-filter select{font-size:14px;padding:6px 0 6px 5px;border-radius:4px;border-color:#d7d7d7}.now-branch-filter select:focus{font-size:14px}.deal-hot{background:#f2f2f2}.deal-hot__banner{display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;-ms-flex-align:center;align-items:center;margin-bottom:35px}.deal-hot__condition{font-size:26px;text-transform:uppercase;color:#58585a;text-align:center}.deal-hot__condition:after{content:" ";display:block;margin:5px auto 30px;width:100px;height:2px;background:#58585a;border-radius:2px}.deal-hot__container{width:965px;margin:0 auto;display:table}.deal-hot__container__section{margin:0 10px 15px;background:#fff;box-shadow:2px 2px 4px 0 hsla(0,0%,71%,.2);border-radius:3px;float:left;width:460px;height:400px;display:table-cell}.deal-hot__container__section__img{display:block;width:100%;margin:0 auto;min-height:110px}.deal-hot__container__section__text{font-size:16px;color:#3a3a3b}.deal-hot__download{height:550px;background-color:#fff}.deal-hot__download__container{width:1200px;margin-left:auto;margin-right:auto}.deal-hot__download__container__inside{position:relative}.deal-hot__download__container__inside__text{font-size:26px;position:absolute;top:225px;left:620px;width:280px;text-align:center}.deal-hot__download__container__inside__phone{position:absolute;top:45px;left:250px}.deal-hot__download__container__inside__phone__img{display:block;width:306px;height:500px}.deal-hot__download__container__inside__logo{position:absolute;top:90px;left:700px}.deal-hot__download__container__inside__iTune{position:absolute;top:290px;left:610px}.deal-hot__download__container__inside__ggplay{position:absolute;top:290px;left:770px}.deal-hot__download__container__inside__qrIOs{position:absolute;top:370px;left:633px}.deal-hot__download__container__inside__qrAndroid{position:absolute;top:370px;left:790px}.restaurant-landing-page .box-loading,.restaurant-landing-page .item-restaurant{width:20%!important}.landing-banner{opacity:1!important}.event-category{background-color:#fff;padding:20px 0}.container-banner-event{margin-bottom:0;text-align:center;position:relative}.event-category-container{margin:auto;position:relative}.event-category-container .list-event{margin:0 -10px}.event-category-container .event-item{float:left;width:25%;padding:0 10px}.event-category-container .event-item .image-event{padding:5px;width:270px;height:270px;position:relative;display:block;margin-bottom:10px}.event-category-container .event-item .image-event:after{content:"";position:absolute;top:0;left:0;right:0;bottom:0;z-index:2;background-size:contain;background-repeat:no-repeat}.event-category-container .event-item .image-event img{width:100%;height:100%;transition:all .2s ease}.event-category-container .event-item .title-event{font-size:24px;text-align:center;text-transform:uppercase}.event-category-container .event-item.milk-tea .image-event:after{background-image:url(/app/assets/img/frame-1.png?16e75ae8f1b86f5f3746746334e34ef4);background-size:271px 270px}.event-category-container .event-item.milk-tea .title-event{color:#0f7993}.event-category-container .event-item.breakfast .image-event:after{background-image:url(/app/assets/img/frame-2.png?57b9d94b33cfd137c3176b9ac3d911e1);background-size:271px 272px;background-position:0 -2px}.event-category-container .event-item.breakfast .title-event{color:#e8a409}.event-category-container .event-item.lunch .image-event:after{background-image:url(/app/assets/img/frame-3.png?81e11048f953c89412dc62198c37c42f);background-position:-1px 0}.event-category-container .event-item.lunch .title-event{color:#bc3635}.event-category-container .event-item.dinner .image-event:after{background-image:url(/app/assets/img/frame-4.png?b2d41ead6f5a5e71991b7ac6ed3fd292);background-position:-2px 0;background-size:272px 270px}.event-category-container .event-item.dinner .title-event{color:#879b34}.event-category-container .content-event{display:block}.banner-event .now-search{left:50%;top:30%;width:760px;transform:translate(-50%,-50%)}.banner-event .now-search .form-search{margin:0}.banner-event .now-idea-searching{text-align:left;margin-top:-1px}.now-detail-restaurant{background-color:#fff;padding-top:30px}.now-detail-restaurant .detail-restaurant-img{width:480px;height:300px;position:relative;float:left}.now-detail-restaurant .detail-restaurant-img img{width:100%;height:100%}.now-detail-restaurant .detail-restaurant-info{color:#252525;float:right;width:645px;padding-bottom:15px}.now-detail-restaurant .breadcrumb{padding-left:0;margin-bottom:18px;list-style:none;overflow:hidden;margin-top:-2px}.now-detail-restaurant .breadcrumb .breadcrumb-item{float:left;position:relative;padding-right:4px}.now-detail-restaurant .breadcrumb .breadcrumb-item:after{content:"\BB";color:#0288d1;display:inline-block;padding-left:4px}.now-detail-restaurant .breadcrumb .breadcrumb-item:last-child:after{content:""}.now-detail-restaurant .breadcrumb .breadcrumb-link{font-size:13px;color:#187caa}.now-detail-restaurant .breadcrumb .breadcrumb-link:hover{text-decoration:none}.now-detail-restaurant .tag-preferred{background:#f13233;color:#fff;padding:3px 5px;margin-right:10px;cursor:pointer;text-transform:none}.now-detail-restaurant .tag-preferred i{padding-left:2px;padding-right:5px}.now-detail-restaurant .kind-restaurant{font-size:11px;color:#959595;text-transform:uppercase;display:-ms-flexbox;display:flex}.now-detail-restaurant .kind-restaurant span{margin:auto 0}.now-detail-restaurant .link-brand{text-transform:none;margin-left:10px}.now-detail-restaurant .name-restaurant{font-size:22px;color:#464646;font-weight:700;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;margin-bottom:4px;line-height:33px}.now-detail-restaurant .name-restaurant .icon{margin-right:2px;vertical-align:sub}.now-detail-restaurant .address-restaurant{font-size:13px;margin-bottom:2px}.now-detail-restaurant .status-restaurant{margin-bottom:6px}.now-detail-restaurant .status-restaurant .time{font-size:15px;display:inline-block;padding-left:10px;vertical-align:middle}.now-detail-restaurant .status-restaurant .fa-clock{color:#959595;margin-right:3px}.now-detail-restaurant .opentime-status{position:relative;top:0;left:0;display:inline-block}.now-detail-restaurant .opentime-status .stt{width:inherit;height:inherit;vertical-align:middle;display:inline-block;background-color:transparent}.now-detail-restaurant .opentime-status .stt:after{content:attr(title);font-size:15px;display:inline-block;white-space:nowrap;color:inherit;padding-left:5px}.now-detail-restaurant .opentime-status .stt:before{content:"";border-radius:50%;cursor:pointer;width:8px;height:8px;display:inline-block;position:relative;top:-1px;z-index:2}.now-detail-restaurant .opentime-status .online:before{background-color:#6cc942}.now-detail-restaurant .opentime-status .offline:before{background-color:#6d6f71}.now-detail-restaurant .opentime-status .busy:before{background-color:#cf2127}.now-detail-restaurant .cost-restaurant{color:#959595;font-size:15px}.now-detail-restaurant .cost-restaurant .fas{text-align:center;font-size:8px;width:16px;height:16px;border:1px solid;border-radius:50%;line-height:15px;vertical-align:top;margin-top:3px;margin-right:3px}.now-detail-restaurant .restaurant-announcement-info{min-height:40px;line-height:38px;width:420px;border-radius:2px;background-color:#fbf9d8;position:relative;bottom:0;margin-bottom:8px;float:left}.now-detail-restaurant .restaurant-announcement-info .icon-notice{background-image:url(/app/assets/img/notice.svg?1ca4a0dd68db576551cc0f934942b09b);background-size:contain;height:20px;width:20px;vertical-align:middle}.now-detail-restaurant .restaurant-announcement-info span{display:inline-block;line-height:30px;vertical-align:middle;font-size:13px;font-weight:400;font-stretch:normal;font-style:normal;letter-spacing:.26px;color:#464646;padding-left:15px;padding-right:10px}.now-detail-restaurant .share-social{width:100%;height:auto;margin-top:10px}.now-detail-restaurant .share-social .facebook{float:left;margin-right:15px;padding-top:2px}.now-detail-restaurant .link-merchant{color:#fff;position:absolute;bottom:0;right:0;background-color:#525252;border-radius:3px;padding:9px 10px 9px 40px;position:relative;float:right}.now-detail-restaurant .link-merchant .icon-merchant{position:absolute;color:#669fab;font-size:24px!important;vertical-align:middle;content:"";width:30px;height:30px;top:4px;left:6px;background-image:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44);background-position:-192px -15px;background-repeat:no-repeat}.now-detail-restaurant .link-merchant:hover{text-decoration:none}.now-detail-restaurant .utility-restaurant{border-top:1px solid #ebebeb}.now-detail-restaurant .utility-restaurant .utility-item{float:left;width:140px;position:relative;padding:10px;margin-bottom:30px}.now-detail-restaurant .utility-restaurant .utility-item:after{content:"";width:1px;height:20px;position:absolute;top:22px;left:0;background-color:#ebebeb}.now-detail-restaurant .utility-restaurant .utility-item:first-child{padding-left:0}.now-detail-restaurant .utility-restaurant .utility-item:first-child:after{width:0;height:0}.now-detail-restaurant .utility-restaurant .utility-title{color:#959595;font-size:13px;text-transform:uppercase}.now-detail-restaurant .utility-restaurant .utility-content{font-size:14px}.now-detail-restaurant .utility-restaurant .note{color:#0288d1;cursor:pointer}.now-detail-restaurant .utility-restaurant .icon-verify-merchant{position:absolute;bottom:0;left:0;cursor:pointer}.now-detail-restaurant .utility-restaurant .time-confirm{position:absolute;bottom:12px;right:5px;z-index:1}.now-detail-restaurant .utility-restaurant .content-confirm{color:#fff;white-space:nowrap;background:#464646;padding:5px 10px;border-radius:5px;transform:translate(-50%);margin-top:14px;position:absolute;top:100%;left:0}.now-detail-restaurant .utility-restaurant .content-confirm:after{content:" ";bottom:100%;left:50%;border:solid transparent;height:0;width:0;position:absolute;pointer-events:none;border-color:transparent;border-bottom-color:#464646;border-width:7px;margin-left:2px}.now-detail-restaurant .utility-restaurant .content-confirm .close{font-size:14px;text-align:center;position:absolute;top:-10px;right:-7px;cursor:pointer;background-color:#fff;color:#252525;width:18px;height:18px;line-height:11px;border-radius:50%;font-weight:700;border:2px solid;opacity:1;text-shadow:none}.now-detail-restaurant .utility-restaurant .more-utility{cursor:pointer}.now-detail-restaurant .utility-restaurant .more-utility:after{border:0}.now-detail-restaurant .utility-restaurant .dropdown{display:inline-block;margin-top:18px}.now-detail-restaurant .utility-restaurant .dropdown:hover .dropdown-menu{display:block}.now-detail-restaurant .utility-restaurant .dropdown-menu{margin-top:0;padding:0}.now-detail-restaurant .utility-restaurant .dropdown-item{padding:4px 10px;border-bottom:1px solid #ebebeb}.now-detail-restaurant .utility-restaurant .dropdown-item:active{background-color:#fff}.now-detail-restaurant .utility-restaurant .dropdown-item:active .utility-content{color:#252525}.now-detail-restaurant .utility-restaurant .btn-more-utility{font-size:5px;cursor:pointer;color:#959595;vertical-align:middle;padding:10px 0}.now-detail-restaurant .utility-restaurant .btn-more-utility .fas{padding:0 1px;outline:none}.now-detail-restaurant .utility-restaurant .btn-more-utility .fas:focus{outline:none}.now-detail-restaurant .number-review{font-size:14px}.now-detail-restaurant .number-review:hover{text-decoration:none}.now-detail-restaurant .rating{margin-bottom:4px;font-size:14px}.now-detail-restaurant .rating .number-rating{background-color:#ffc107;padding:0 5px;border-radius:4px;color:#fff;margin:0 5px}.now-detail-restaurant .view-more-rating{margin-bottom:4px}.now-detail-restaurant .detail-restaurant-note{font-size:15px;padding:12px 0;clear:both}.rating .stars{font-size:14px;color:#ffc107;display:inline-block}.rating .stars>span{padding-right:2px}.now-menu-restaurant{width:845px;margin-bottom:20px;min-height:226px;float:left}.now-menu-restaurant .menu-restaurant-tab .item{color:#6d6f71;text-transform:uppercase;cursor:pointer;display:inline-block;padding:13px 26px}.now-menu-restaurant .menu-restaurant-tab .item.active{font-weight:700;color:#cf2127;cursor:default}.now-menu-restaurant .menu-restaurant-category{position:absolute;top:0;left:0}.now-menu-restaurant .introduce-restaurant{padding-top:15px}.now-menu-restaurant .introduce-restaurant .no-intro{text-align:center;font-size:13px}.now-menu-restaurant .introduce-restaurant .no-intro .fas{color:#d7d7d7;font-size:35px;margin-bottom:10px}.now-menu-restaurant .introduce-restaurant .content{background-color:#fff;padding:10px 15px}.menu-restaurant-category{border:1px solid #ebebeb;padding:15px 5px 15px 15px;width:235px;margin-right:10px;background:#fff;border-radius:4px}.menu-restaurant-category .scrollbar-container{max-height:calc(100vh - 100px);position:relative}.menu-restaurant-category .list-category{position:relative}.menu-restaurant-category .list-category .item{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin:5px 0;padding:2px 0}.menu-restaurant-category .list-category .item-link{font-size:13px;display:inline-block;color:#6d6f71;text-transform:uppercase;padding:3px 7px 1px;border-radius:4px;cursor:pointer}.menu-restaurant-category .list-category .item-link:hover{text-decoration:none}.menu-restaurant-category .list-category .item-link.active{background-color:#959595;color:#fff}.menu-restaurant-detail{width:590px;padding:6px 15px;float:right;border:1px solid #ebebeb;border-radius:4px;background:#fff}.menu-restaurant-detail .duplicate-order{font-size:13px;color:#252525;position:relative;padding:9px 0 28px;margin-bottom:10px}.menu-restaurant-detail .duplicate-order:after{content:"";position:absolute;bottom:0;left:-15px;right:-15px;height:1px;background-color:#ebebeb}.menu-restaurant-detail .duplicate-order .fas{color:#6d6f71;float:right}.menu-restaurant-detail .duplicate-order a{color:#252525;display:block}.menu-restaurant-detail .duplicate-order a:hover{text-decoration:none}.menu-restaurant-detail .duplicate-order .re-order-btn{float:right;margin-top:-3px;margin-right:10px}.menu-restaurant-detail .promotions-order{background-color:#fbf9d8;position:relative;overflow:hidden;margin-left:-15px;margin-right:-15px;border:1px dashed #575757;padding:2px 15px 0 89px;display:none}.menu-restaurant-detail .promotions-order .promotion-item{padding:8px 75px 0 0;position:relative;cursor:pointer}.menu-restaurant-detail .promotions-order .promotion-item .content{position:relative;border-bottom:1px solid #ebe9c9;padding-top:10px;min-height:55px}.menu-restaurant-detail .promotions-order .promotion-item .content p,.menu-restaurant-detail .promotions-order .promotion-item .content span{font-size:14px!important;font-family:Noto Sans,Arial,sans-serif!important}.menu-restaurant-detail .promotions-order .promotion-item .code-copy,.menu-restaurant-detail .promotions-order .promotion-item code-copy:focus{position:absolute;top:10px;right:0;border:0;background:none;font-size:12px;color:#575252;font-weight:700}.menu-restaurant-detail .promotions-order .promotion-item .code-copy .fa-copy,.menu-restaurant-detail .promotions-order .promotion-item code-copy:focus .fa-copy{padding-left:5px}.menu-restaurant-detail .promotions-order .icon-discount{position:absolute;left:-74px;top:13px}.menu-restaurant-detail .promotions-order .icon-promotion{height:40px;width:40px;text-align:center;position:absolute;left:-74px;top:-3px;bottom:0;margin:auto}.menu-restaurant-detail .promotions-order .title{font-size:18px}.menu-restaurant-detail .promotion-collapse{cursor:pointer;color:#0288d1;padding:10px 0}.menu-restaurant-detail .promotion-collapse .expand{position:relative}.menu-restaurant-detail .promotion-collapse .fa-angle-up{text-align:center;font-size:11px;line-height:14px;padding-left:1px;float:right;width:14px;height:14px;background-color:#6d6f71;color:#fbf9d8;border-radius:50%}.menu-restaurant-list,body{position:relative}.menu-restaurant-list .title-menu{text-transform:uppercase;color:#6d6f71;padding:5px 0 0;margin:10px 0 20px}.menu-restaurant-list .item-restaurant-row{padding-top:10px;border-bottom:1px solid #f5f5f5;padding-bottom:10px;position:relative}.menu-restaurant-list .menu-provider{font-size:13px}.menu-restaurant-list .search-items{position:-webkit-sticky;position:sticky;top:70px;background:#fff;z-index:2;padding:15px 0 10px}.menu-restaurant-list .search-items .input-group{margin:0;position:relative;color:#46464c}.menu-restaurant-list .search-items .input-group input{width:100%;padding:0 40px;border:0;border:1px solid #ededed;height:40px}.menu-restaurant-list .search-items .input-group input:focus{outline:none}.menu-restaurant-list .search-items .input-group i{position:absolute;padding:15px;line-height:10px}.menu-restaurant-list .search-items .input-group .fa-search{left:0}.menu-restaurant-list .search-items .input-group .fa-times{right:0}.now-bill-restaurant{background-color:#fff;border-radius:4px;border:1px solid #ebebeb;position:absolute;top:48px;right:10px;width:315px}.now-bill-restaurant .bill-restaurant-header{border-bottom:1px solid #ebebeb;padding:7px 10px;position:relative}.now-bill-restaurant .bill-restaurant-header:after{content:"";display:block;clear:both}.now-bill-restaurant .cart-stats{font-size:12px;cursor:pointer;color:#187caa;background:#ebebeb;padding:2px 8px;border-radius:2px;float:left;display:block}.now-bill-restaurant .cart-stats:hover{background-color:#5d6d9a;color:#fff}.now-bill-restaurant .btn-reset{float:right}.now-bill-restaurant .btn-condition,.now-bill-restaurant .btn-order-group{float:right;margin-right:5px}.now-bill-restaurant .block-tooltip{font-size:13px;position:absolute;bottom:100%;right:60px;background:#525252;color:#fff;padding:6px 15px;border-radius:5px;border:1px dashed #959595;margin-bottom:10px}.now-bill-restaurant .block-tooltip:after{content:"";position:absolute;top:100%;right:30px;width:0;height:0;border-left:8px solid transparent;border-right:8px solid transparent;border-top:8px solid #525252}.now-bill-restaurant .block-tooltip .close{font-size:13px;font-weight:400;opacity:1;text-shadow:none;position:absolute;top:0;right:2px;color:#fff;padding:0 3px;cursor:pointer}.now-bill-restaurant .create-order{font-size:11px;font-style:italic;padding-top:6px;clear:both}.now-bill-restaurant .now-order-card-group{color:#464646;max-height:300px;overflow-y:auto}.now-bill-restaurant .row-bill-restaurant{font-size:13px;padding:4px 10px;background-color:#f9f9f9;border-bottom:1px solid #ebebeb}.now-bill-restaurant .tooltip-discount{font-size:13px;color:#fff;text-align:center;background-color:#525252;position:absolute;bottom:100%;left:0;right:0;border:1px dashed #959595;border-radius:5px;padding:7px 5px}.now-bill-restaurant .tooltip-discount:after,.now-bill-restaurant .tooltip-discount:before{top:100%;right:22px;border:dashed transparent;content:" ";height:0;width:0;position:absolute;pointer-events:none}.now-bill-restaurant .tooltip-discount:after{border-top-color:#525252;border-width:6px}.now-bill-restaurant .tooltip-discount :before{border-color:#959595 transparent transparent;border-width:7px;margin-right:-1px}.now-bill-restaurant .tooltip-discount .close-tooltip{font-size:15px;line-height:15px;border-radius:50%;cursor:pointer;position:absolute;top:-7px;right:-7px;width:14px;height:14px;z-index:1;background-color:#464646}.now-bill-restaurant .btn-red{font-size:15px;margin:12px 10px 15px;display:block;width:calc(100% - 20px)}.now-bill-restaurant .input-promocode{background-color:#fbf9d8}.now-bill-restaurant .input-promocode:before{content:"(*)";color:#cf2127;font-size:8px;display:inline-block;vertical-align:top;margin-top:3px}.now-bill-restaurant .number-oder{font-size:12px;color:#cf2127;text-align:center;font-weight:700;display:inline-block;min-width:18px}.menu-restaurant-content-tab{position:relative}.menu-restaurant-content-tab:after{content:"";display:block;clear:both}.now-related-place{margin-top:20px}.now-related-place .title-related-place{color:#cf2127;font-size:18px;margin:0;font-weight:700;text-transform:uppercase}.now-related-place .now-list-restaurant{overflow:hidden}.now-related-place .slick-next{right:10px}.now-related-place .slick-prev{left:10px}.loading-microsite{z-index:2}.loading-microsite .now-loading-restaurant{display:block;padding-top:25px;padding-bottom:18px}.loading-microsite .now-loading-restaurant .box-loading{width:100%;position:relative;padding-left:15%;height:inherit;margin-bottom:15px}.loading-microsite .now-loading-restaurant .box-thumbnail{position:absolute;top:8px;left:0;width:14%;height:85px}.loading-microsite .now-loading-restaurant .box-line-df{margin-top:2px;width:60%}.loading-microsite .now-loading-restaurant .box-line-df:after{content:"";display:table;min-height:1px}.loading-microsite .now-loading-restaurant .box-line-lgx{width:45%}.loading-microsite .now-loading-restaurant .box-line-lg{width:50%;float:none;clear:both}.loading-microsite .now-loading-restaurant .box-loading.full-box{height:300px;padding-left:45.5%}.loading-microsite .now-loading-restaurant .box-loading.full-box .box-thumbnail{width:40.6%;height:300px}.loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-df{height:15px;width:80%;margin-bottom:15px}.loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-lg,.loading-microsite .now-loading-restaurant .box-loading.full-box .box-line-lgx{height:15px}.loading-microsite .loading-microsite-col{background-color:#f2f2f2;padding-top:45px}.loading-microsite .loading-microsite-col:after{content:"";display:block;clear:both}.loading-microsite .now-loading-restaurant.category{float:left;width:235px;background-color:#fff;margin-right:20px}.loading-microsite .now-loading-restaurant.category .box-loading{padding-left:15px}.loading-microsite .now-loading-restaurant.detail{float:left;width:590px;margin-right:20px;padding-left:15px}.loading-microsite .now-loading-restaurant.bill{float:left;width:315px}.loading-microsite .now-loading-restaurant.bill .box-loading{padding-left:15px}.duplicate-order,.group-order-campaign{cursor:pointer}.promotion-title{white-space:nowrap;margin-bottom:10px;font-weight:600}.promotion-title p{font-weight:600;margin:0}.promotion-title *{font-family:Noto Sans,Arial,sans-serif!important;font-size:inherit!important}.promotion-code{margin:10px 100px 10px 15px;padding:5px 5px 5px 20px;background-color:#faf6db}.delivery-restaurent-popup .modal-footer{-ms-flex-pack:center;justify-content:center}.icon-partner-vi{background-image:url(/app/assets/img/partner-vi.png?dec00ea8fc6f5429f18e83d16c3685f8);position:absolute;top:20px;left:15px;cursor:pointer;width:116px;height:44px}.icon-partner-en{background-image:url(/app/assets/img/partner-en.png?6bbe62e15266d92b45e09e10180c7a93);position:absolute;top:25px;left:20px;cursor:pointer;width:92px;height:40px}.format-price{font-weight:400;position:relative;top:-9px;font-size:10px;right:0}.preferred-tag{background:#f23132;padding:3px 10px;border-radius:25px;color:#fff;font-size:14px}.QRcode{position:absolute;top:48px;right:10px;width:315px;background-image:url(/app/assets/img/qrcode.png?02f483efc36fa5fafaa4254671fa5492);color:#fff;text-align:center;padding-top:30px;padding-bottom:10px}.now-menu-restaurant .align-left{text-align:left}.now-menu-restaurant .modal-dialog{pointer-events:auto}.now-menu-restaurant .max-width-750{max-width:750px}.now-menu-restaurant .fa-spinner{right:0}.now-menu-restaurant .menu-restaurant-list .fa-times{cursor:pointer}.rst-animate-tip{position:fixed;z-index:20000;height:20px;padding:0 6px;border-radius:10px;background-color:#3198ef;color:#fff;line-height:20px;font-size:12px}#modal-box-image{z-index:1049}.menu-restaurant-list .item-restaurant-row .item-restaurant-img button{background:none!important;color:inherit;border:none;padding:0!important;font:inherit;cursor:pointer}.res-menu-carousel .carousel.carousel-slider .control-arrow,.res-menu-carousel .carousel .control-arrow{transition:all .25s ease-in;opacity:.4;filter:alpha(opacity=40);position:absolute;z-index:2;top:20px;background:none;border:0;font-size:32px;cursor:pointer}.res-menu-carousel .carousel .control-arrow:hover{opacity:1;filter:alpha(opacity=100)}.res-menu-carousel .carousel.carousel-slider .control-arrow:before,.res-menu-carousel .carousel .control-arrow:before{margin:0 5px;display:inline-block;border-top:8px solid transparent;border-bottom:8px solid transparent;content:""}.res-menu-carousel .carousel .control-disabled.control-arrow{opacity:0;filter:alpha(opacity=0);cursor:inherit;display:none}.res-menu-carousel .carousel .control-prev.control-arrow{left:0}.res-menu-carousel .carousel .control-prev.control-arrow:before{transform:none;border-color:transparent;border-left:0;padding:0;border-right:8px solid #fff}.res-menu-carousel .carousel .control-next.control-arrow{right:0}.res-menu-carousel .carousel .control-next.control-arrow:before{transform:none;border-color:transparent;border-right:0;padding:0;border-left:8px solid #fff}.res-menu-carousel .btn-red{background-color:#cf2127;color:#fff;border-color:#cf2127;padding:4px 10px}.res-menu-carousel .btn-over{padding:4px 10px;background-color:#959595;border-color:#959595}.res-menu-carousel .carousel{position:relative;width:100%}.res-menu-carousel .carousel button.control-arrow{outline:0;border:0;background:none}.res-menu-carousel .carousel img{width:100%;display:inline-block;pointer-events:none}.res-menu-carousel .carousel .carousel{position:relative}.res-menu-carousel .carousel .control-arrow{top:50%;margin-top:-13px;font-size:18px}.res-menu-carousel .carousel .thumbs-wrapper{margin:20px;overflow:hidden}.res-menu-carousel .carousel .thumbs{transition:all .15s ease-in;transform:translateZ(0);position:relative;list-style:none;white-space:nowrap}.res-menu-carousel .carousel .thumb{transition:border .15s ease-in;display:inline-block;width:80px;margin-right:6px;white-space:nowrap;overflow:hidden;border:3px solid #fff;padding:2px}.res-menu-carousel .carousel .thumb.selected,.res-menu-carousel .carousel .thumb:hover{border:3px solid #333;padding:2px}.res-menu-carousel .carousel .thumb img{vertical-align:top}.res-menu-carousel .carousel.carousel-slider{position:relative;margin:0;overflow:hidden}.res-menu-carousel .carousel.carousel-slider .control-arrow{top:0;color:#fff;font-size:26px;bottom:53px;margin-top:0;padding:5px}.res-menu-carousel .carousel.carousel-slider .control-arrow:hover{background:rgba(0,0,0,.2)}.res-menu-carousel .carousel .slider-wrapper{overflow:hidden;margin:auto;width:100%;transition:height .15s ease-in}.res-menu-carousel .carousel .slider-wrapper.axis-horizontal .slider{-ms-box-orient:horizontal;display:-ms-flexbox;display:flex}.res-menu-carousel .carousel .slider-wrapper.axis-horizontal .slider .slide{-ms-flex-direction:column;flex-direction:column;-ms-flex-flow:column;flex-flow:column}.res-menu-carousel .carousel .slider-wrapper.axis-vertical{-ms-box-orient:horizontal;display:-ms-flexbox;display:flex}.res-menu-carousel .carousel .slider-wrapper.axis-vertical .slider{-ms-flex-direction:column;flex-direction:column}.res-menu-carousel .carousel .slider{margin:0;padding:0;position:relative;list-style:none;width:100%}.res-menu-carousel .carousel .slider.animated{transition:all .35s ease-in-out}.res-menu-carousel .carousel .slide{min-width:100%;margin:0;position:relative;text-align:center}.res-menu-carousel .carousel .slide img{width:100%;vertical-align:top;border:0}.res-menu-carousel .carousel .slide iframe{display:inline-block;width:calc(100% - 80px);margin:0 40px 40px;border:0}.res-menu-carousel .carousel .slide .legend{transition:all .5s ease-in-out;position:absolute;bottom:40px;left:50%;margin-left:-45%;width:90%;border-radius:10px;background:#000;color:#fff;padding:10px;font-size:12px;text-align:center;opacity:.25;transition:opacity .35s ease-in-out}.res-menu-carousel .carousel .control-dots{position:absolute;bottom:0;margin:10px 0;text-align:center;width:100%}@media (min-width:960px){.res-menu-carousel .carousel .control-dots{bottom:0}}.res-menu-carousel .carousel .control-dots .dot{transition:opacity .25s ease-in;opacity:.3;filter:alpha(opacity=30);box-shadow:1px 1px 2px rgba(0,0,0,.9);background:#fff;border-radius:50%;width:8px;height:8px;cursor:pointer;display:inline-block;margin:0 8px}.res-menu-carousel .carousel .control-dots .dot.selected,.res-menu-carousel .carousel .control-dots .dot:hover{opacity:1;filter:alpha(opacity=100)}.res-menu-carousel .carousel .carousel-status{position:absolute;top:0;right:0;padding:5px;font-size:10px;text-shadow:1px 1px 1px rgba(0,0,0,.9);color:#fff}.res-menu-carousel .carousel:hover .slide .legend{opacity:1}#modal-delivery-alert-MenuAlertModal{z-index:1055!important}#submitOrderConfirm div{white-space:pre-wrap}.menu-no-data{text-align:center}.menu-no-data .no-data-picture{width:99px;height:111px;-o-object-fit:contain;object-fit:contain}.menu-no-data .no-data-text{width:100%;height:40px;font-size:17px;font-weight:400;font-style:normal;font-stretch:normal;line-height:1.41;letter-spacing:normal;color:#707070;display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;text-align:center}.menu-no-data .no-data-text--bold{font-weight:600;color:#333}#modal-order-fee{background-color:rgba(0,0,0,.3);color:#333}#modal-order-fee .modal-dialog{margin-top:20vh}#modal-order-fee ::-webkit-scrollbar{width:6px;background-color:#d8d8d8}#modal-order-fee ::-webkit-scrollbar-thumb{background:#acacac;border-radius:2px}#modal-order-fee .modal-body{max-height:450px;overflow-y:auto}#modal-order-fee .title{text-align:center;font-size:16px;line-height:22px;letter-spacing:.257143px;font-weight:700;display:inline-block;padding:16px 0 12px}#modal-order-fee .fee:not(:first-of-type){margin-top:15px}#modal-order-fee .fee{border-bottom:1px solid #f2f2f2;padding-bottom:8px}#modal-order-fee .fee p{display:-ms-flexbox;display:flex;margin-bottom:6px}#modal-order-fee .fee__name{width:60%;font-size:14px;line-height:19px;color:#333}#modal-order-fee .fee__text{font-size:12px;line-height:16px;color:#999;mix-blend-mode:normal}#modal-order-fee .fee__text img{width:14px}#modal-order-fee .fee__value{width:40%;font-size:14px;line-height:19px;text-align:right;color:#333}#modal-order-fee .total{width:100%;font-weight:600;font-size:16px;line-height:22px;color:#333;display:inline-block;padding-top:25px}#modal-order-fee .total__name{float:left}#modal-order-fee .total__value{float:right}.modal-order .modal-order-detail .modal-footer .submit-order{color:#fff;background-color:#0288d1}.modal-order .modal-footer .submit-order{font-size:16px;font-weight:700;display:block;padding:10px 0;cursor:pointer;transition:all .2s ease;width:100%;border-radius:5px}.customMaker{width:30px;position:relative;border-radius:50%;border:2px solid #6abd45}.customMaker img{max-width:100%!important;border-radius:50%}.customMaker:before{content:"";position:absolute;width:0;height:0;border-style:solid;border-width:11px 5px 0;border-color:#6abd45 transparent transparent;top:100%;left:50%;transform:translateX(-50%)}#popup-order-add-new-address{color:#0288d1;cursor:pointer}.modal-order-promo-code{font-size:13px;padding-right:17px}.modal-order-promo-code .modal-dialog{max-width:885px;padding:0}.modal-order-promo-code .modal-content{height:600px}.modal-order-promo-code .modal-body{background:#ebebeb;padding:0}.modal-order-promo-code .icon-now-promo-code{width:32px;height:32px;background:hsla(0,0%,7%,.56);border-radius:50%;font-size:32px;color:#fff}.modal-order-promo-code__title{padding:10px 15px;font-size:14px;font-weight:600;color:#363636;background:#ebebeb}.modal-order-promo-code__container{background:#fff;padding:0 15px}.modal-order-promo-code__row{display:-ms-flexbox;display:flex;font-size:.75rem;border-bottom:1px solid #f0f0f0;-ms-flex-align:center;align-items:center;-ms-flex-flow:row wrap;flex-flow:row wrap;background:#fff}.modal-order-promo-code__row--head{font-size:13px}.modal-order-promo-code__row--head .promo-code-table__cell{color:red;font-weight:400}.modal-order-promo-code__cell{padding:8px 5px;-ms-flex:1 1;flex:1 1;font-size:14px}.modal-order-promo-code__cell--copy,.modal-order-promo-code__cell--icon{-ms-flex-negative:0;flex-shrink:0;-ms-flex-preferred-size:60px;flex-basis:60px;-ms-flex-positive:0;flex-grow:0}.modal-order-promo-code__cell--copy{cursor:pointer}.modal-order-promo-code__cell--code{color:#111;font-weight:600}.modal-order-promo-code__cell--code.expired{color:hsla(0,0%,7%,.56)}.modal-order-promo-code__cell--discount{color:#00a2d3;font-weight:600}.modal-order-promo-code__cell--min-order{color:#363636;font-weight:600}.modal-order-promo-code__cell--apply{text-align:right}.modal-order-promo-code__cell--apply>button{cursor:pointer;border-radius:4px;width:100px;background:#fff;border:1px solid #5aa953;color:#5aa953}.modal-order-promo-code__cell--status{font-weight:600}.modal-order-promo-code__cell--status.available{color:#4fa12e}.modal-order-promo-code__cell--status.expired{color:#b62a26}.modal-order-promo-code__cell--status.used{color:#6d6d64}.modal-order-promo-code__cell--action{cursor:pointer;-ms-flex-negative:0;flex-shrink:0;-ms-flex-preferred-size:100px;flex-basis:100px;-ms-flex-positive:0;flex-grow:0}.modal-order-promo-code__empty-code{padding:10px 0}.landing-page-wrapper .banner-img{display:block;width:100%}.landing-page-wrapper .title-nowship{font-size:2.813rem;color:#cf2127;text-align:center;font-weight:700;position:relative;padding-top:21px;padding-bottom:12px;margin-bottom:35px}.landing-page-wrapper .title-nowship:after{content:"";width:100px;height:1px;background-color:#cf2127;position:absolute;bottom:0;left:50%;transform:translate(-50%)}.landing-page-wrapper .title-nowship:before{content:"";width:17px;height:17px;background-color:#fff;border-radius:50%;border:1px solid #cf2127;position:absolute;bottom:0;left:50%;transform:translate(-50%,50%);margin-bottom:1px;z-index:1}.landing-page-wrapper .title-block-nowship{color:#fff;font-size:2.813rem;text-align:center;font-weight:700;background-color:#cf2127;padding-top:10px;padding-bottom:15px}.landing-page-wrapper .nowship-list-policy{counter-reset:b;padding-top:54px}.landing-page-wrapper .nowship-list-policy .policy-item{background-color:#ebebeb;margin-top:170px;border-radius:82px;padding:39px 126px 45px;display:-ms-flexbox;display:flex}.landing-page-wrapper .nowship-list-policy .policy-item:first-child .policy-text{margin-left:2rem}.landing-page-wrapper .nowship-list-policy .policy-item:nth-child(3){margin-top:200px}.landing-page-wrapper .nowship-list-policy .policy-text{counter-increment:b;position:relative;font-size:1.875rem;line-height:2.375rem;-ms-flex:0 0 75%;flex:0 0 75%;max-width:75%}.landing-page-wrapper .nowship-list-policy .policy-text:before{content:counter(b) ".";font-weight:700;font-size:4.063rem;margin-right:.5rem;line-height:1;position:absolute;top:11px;left:-60px;letter-spacing:-2px}.landing-page-wrapper .nowship-list-policy .policy-text+.policy-img img{left:50px}.landing-page-wrapper .nowship-list-policy .policy-img{position:relative;-ms-flex:0 0 25%;flex:0 0 25%;max-width:25%}.landing-page-wrapper .nowship-list-policy .policy-img img{position:absolute;bottom:-15px;left:-75px}.landing-page-wrapper .nowship-question{margin-bottom:30px}.landing-page-wrapper .nowship-question .card{border:0}.landing-page-wrapper .nowship-question .card:nth-child(odd) .card-header{background-color:#ebebeb}.landing-page-wrapper .nowship-question .card-header{font-size:1.875rem;text-align:center;border:0;border-bottom:1px solid #fff;cursor:pointer;background-color:#d7d7d7;position:relative}.landing-page-wrapper .nowship-question .card-header .fas{color:#6d6f71;font-size:22px;position:absolute;right:70px;top:26px;transition:transform .2s ease}.landing-page-wrapper .nowship-question .card-header[aria-expanded=true] .fas{transform:rotate(180deg)}.landing-page-wrapper .nowship-question .card-body{font-size:1.5rem}.map-incoming{position:relative;margin-bottom:120px}.map-incoming .map-incoming-detail{height:700px;height:calc(100vh - 160px)}.map-incoming .map-incoming-detail .customMaker{width:50px;height:50px;border:none}.map-incoming .map-incoming-detail .shipper-info .shipper-name{font-size:16px;font-weight:700}.map-incoming .map-incoming-detail .shipper-info .shipper-phone{font-size:15px}.map-incoming .map-incoming-order{width:1100px;height:180px;background-color:#fff;border:1px solid #cbcbcb;border-radius:6px;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:20px 50px;position:absolute;top:100%;left:50%;transform:translate(-50%,-50%)}.map-incoming .map-incoming-order .incoming-countdown{position:absolute;left:10px;border:2px solid #0288d1;border-radius:50%}.map-incoming .map-incoming-order .incoming-countdown .circle-rotate{margin:0 auto;position:relative;width:56px;height:56px;background:transparent;animation:a 30s linear 0s infinite normal none}.map-incoming .map-incoming-order .incoming-countdown .circle{position:absolute;top:4px;left:3px;width:8px;height:8px;border-radius:50%;border:2px solid #fff;background:#0288d1}.map-incoming .map-incoming-order .incoming-countdown .incoming-time{color:#252525;font-weight:700;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);text-align:center}.map-incoming .map-incoming-order .incoming-countdown .incoming-time-type{text-transform:uppercase}.map-incoming .order-time{-ms-flex:0 0 auto;flex:0 0 auto;width:90px;max-width:none}.map-incoming .circle-time{text-align:center;font-size:20px;color:#343434;font-weight:700;width:90px;height:90px;border:2px solid #1d93fb;border-radius:50%;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-pack:center;justify-content:center;-ms-flex-align:center;align-items:center;-ms-flex-direction:column;flex-direction:column}.map-incoming .circle-time .unit{font-size:15px;font-weight:700;text-transform:uppercase;display:block;position:static;margin-top:-5px}.map-incoming .order-detail{-ms-flex-preferred-size:0;flex-basis:0;-ms-flex-positive:1;flex-grow:1;max-width:100%;position:relative;padding-left:30px;padding-right:30px;overflow:hidden}.map-incoming .order-detail:after{content:"";position:absolute;top:26px;bottom:23px;left:42px;z-index:1;width:15px;border:1px dotted #707070;border-right:0}.map-incoming .order-detail:before{content:"";position:absolute;top:50%;left:35px;z-index:2;width:16px;height:32px;transform:translateY(-50%);background:url(/app/assets/img/bg-icon.png?2404d5c158d1d09104c34443b2fd5f44) -106px -328px}.map-incoming .order-detail-info{color:#343434;position:relative;padding-left:85px}.map-incoming .order-detail-info:first-child{margin-bottom:14px}.map-incoming .order-detail-info .icon{position:absolute;top:3px;left:33px}.map-incoming .order-detail-info .icon-restaurant{transform:scale(.9)}.map-incoming .order-detail-info .customMaker{height:30px;border-width:3px;top:9px;left:37px}.map-incoming .order-detail-info .customMaker:before{border-width:10px 9px 0}.map-incoming .order-detail-name{font-weight:700;font-size:19px}.map-incoming .order-detail-address,.map-incoming .order-detail-name{padding-left:5px;white-space:nowrap;max-width:100%;overflow:hidden;text-overflow:ellipsis}.map-incoming .order-detail-address{font-size:16px;font-style:italic}.map-incoming .order-status{font-size:15px;-ms-flex:0 0 auto;flex:0 0 auto;width:31%;max-width:none;padding:0 20px 0 60px;border-left:1px solid #cbcbcb}.map-incoming .order-status .btn{font-size:17px;font-weight:700;height:50px;background-color:#1592e6;border-color:#1592e6;margin-top:15px;border-radius:5px}.map-incoming .order-status .success{color:#6cc942}.map-incoming .order-status .failure{color:#cf2127}.map-incoming .order-status .icon{margin-left:5px;padding-bottom:2px}.map-incoming .status-row{margin-bottom:5px;line-height:20px}.free-ship{background:#f2f2f2;margin-top:-70px}.free-ship .icon-search{position:absolute;top:30px;right:420px}.free-ship__header{width:100%;height:80px;background-color:#fff}.free-ship__header__container{width:1100px;margin-left:auto;margin-right:auto}.free-ship__header__container__logo{width:120px;padding-top:15px}.free-ship__header__container__logo__img{display:block;margin-left:auto;margin-right:auto}.free-ship__banner{display:-ms-flexbox;display:flex;-ms-flex-pack:center;justify-content:center;-ms-flex-align:center;align-items:center;margin-bottom:35px}.free-ship__condition{font-size:26px;text-transform:uppercase;color:#58585a;text-align:center}.free-ship__condition:after{content:" ";display:block;margin:5px auto 30px;width:50px;height:2px;background:#58585a;border-radius:2px}.free-ship__container{height:400px;width:1200px;margin:0 auto}.free-ship__container__section{margin:0 20px 20px;background:#fff;padding:25px 20px 35px;box-shadow:2px 2px 4px 0 hsla(0,0%,71%,.2);border-radius:3px;width:30%;height:340px;float:left}.free-ship__container__section__img{display:block;width:180px;height:180px;margin:0 auto 40px}.free-ship__container__section__text{font-size:16px;color:#3a3a3b}.free-ship__download{height:550px;background-color:#fff}.free-ship__download__container{width:1200px;margin-left:auto;margin-right:auto}.free-ship__download__container__inside{position:relative}.free-ship__download__container__inside__text{font-size:26px;position:absolute;top:225px;left:620px;width:280px;text-align:center}.free-ship__download__container__inside__phone{position:absolute;top:45px;left:250px}.free-ship__download__container__inside__phone__img{display:block;width:306px;height:500px}.free-ship__download__container__inside__logo{position:absolute;top:90px;left:700px}.free-ship__download__container__inside__iTune{position:absolute;top:290px;left:610px}.free-ship__download__container__inside__ggplay{position:absolute;top:290px;left:770px}.free-ship__download__container__inside__qrIOs{position:absolute;top:370px;left:633px}.free-ship__download__container__inside__qrAndroid{position:absolute;top:370px;left:790px}.promo-code{margin-top:30px}.promo-code__title{font-size:26px;color:#363636;font-weight:700;margin-top:30px}.promo-code__container{background:#fff;padding:20px 15px}.promo-code__table{width:100%}.promo-code-table{font-size:13px;margin-top:30px}.promo-code-table .icon-now-promo-code{width:32px;height:32px;background:hsla(0,0%,7%,.56);border-radius:50%;font-size:32px;color:#fff}.promo-code-table__row{display:-ms-flexbox;display:flex;font-size:.75rem;border-bottom:1px solid #ebebeb;-ms-flex-align:center;align-items:center;-ms-flex-flow:row wrap;flex-flow:row wrap}.promo-code-table__row--head{font-size:13px}.promo-code-table__row--head .promo-code-table__cell{color:red;font-weight:400}.promo-code-table__cell{padding:8px 5px;-ms-flex:1 1;flex:1 1;font-size:14px}.promo-code-table__cell--copy,.promo-code-table__cell--icon{-ms-flex-negative:0;flex-shrink:0;-ms-flex-preferred-size:60px;flex-basis:60px;-ms-flex-positive:0;flex-grow:0}.promo-code-table__cell--copy{cursor:pointer}.promo-code-table__cell--code{color:#111;font-weight:600}.promo-code-table__cell--code.expired{color:hsla(0,0%,7%,.56)}.promo-code-table__cell--discount{color:#00a2d3;font-weight:600}.promo-code-table__cell--status{font-weight:600}.promo-code-table__cell--status.ready{color:#4fa12e}.promo-code-table__cell--status.expired{color:#b62a26}.promo-code-table__cell--status.used{color:#6d6d64}.promo-code-table__cell--action{cursor:pointer;-ms-flex-negative:0;flex-shrink:0;-ms-flex-preferred-size:100px;flex-basis:100px;-ms-flex-positive:0;flex-grow:0}.promo-code-table__no-data{color:#363636;font-weight:600;font-size:14px;text-align:center}.promo-code-detail .modal-dialog{width:500px;padding-bottom:20px}.promo-code-detail__title{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;width:320px;-ms-flex-pack:justify;justify-content:space-between;border:1.5px dashed #acacac;border-radius:8px;margin:0 auto 10px;font-size:20px;color:#464646;padding:10px 20px}.promo-code-detail__main-title{color:#00a2d3;font-size:16px;font-weight:600;text-align:center;margin-bottom:30px}.promo-code-detail__main-title *{font-size:16px!important;font-family:inherit!important}.promo-code-detail__remaining-quantity{margin-bottom:10px;text-align:center}.promo-code-detail__code,.promo-code-detail__remaining-quantity>span{color:#4fa12e;font-weight:600}.promo-code-detail__code{margin-left:8px}.promo-code-detail__label{color:#252525;font-size:18px;font-weight:600}.promo-code-detail__text{font-size:14px;color:#464646}.promo-code-detail__row{display:-ms-flexbox;display:flex;-ms-flex-pack:justify;justify-content:space-between;padding:5px 0}.promo-code-detail__divider{width:100%;height:1px;background:#ebebeb;margin-top:10px;margin-bottom:10px}.promo-code-detail__content{white-space:pre-line}.promo-code-detail .icon-now-copy{cursor:pointer}.promo-code-detail .modal-header{text-align:center;font-weight:600;font-size:16px;-ms-flex-pack:center;justify-content:center;position:absolute;top:-38px;color:#fff;border:0}.promo-code-detail .modal-footer{display:none}.collection-page-row{margin-top:50px}.collection-page-row .card-address{color:#0288d1}.collection-page-row .card-img-top{border-top-left-radius:5px;border-top-right-radius:5px}.collection-page-row .card-address,.collection-page-row .card-name{font-size:14px}.merchant-register{background-color:#fff}.merchant-register *{font-family:Shopee}.merchant-register .carousel .control-dots{padding-left:0}.merchant-register__header{position:relative}.merchant-register__header--img{width:100%;-o-object-fit:cover;object-fit:cover;z-index:5}.merchant-register__header--overlay{background:#000;opacity:.45;z-index:7;position:absolute;height:100%;width:100%;top:0;left:0}.merchant-register__header--content{position:absolute;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;-ms-flex-align:center;align-items:center;-ms-flex-pack:end;justify-content:flex-end;z-index:10;width:100%}.merchant-register__header--content__sub-title,.merchant-register__header--content__title{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.merchant-register__header--content__title{font-size:40px;color:#fff;margin-bottom:8px;font-weight:900}.merchant-register__header--content__sub-title{color:#fff;font-size:20px;font-weight:400;-o-object-fit:contain;object-fit:contain;margin-bottom:8px;width:100%}.merchant-register__body{padding-bottom:10px}.merchant-register__body__block{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;-ms-flex-align:center;align-items:center;width:100%}.merchant-register__body__block.block-background-gray{background:#f3f3f3}.merchant-register__body__block.block-background-gray .merchant-register__body--separator{background:#fff!important}.merchant-register__body__block .merchant-register__nav{-ms-flex-pack:end;justify-content:end}.merchant-register__body--sub-title,.merchant-register__body--title{color:#ee4d2d;font-weight:900;text-align:center;text-transform:uppercase}.merchant-register__body--separator{width:118px;height:6px;border-radius:3px;background:#f3f3f3}.merchant-register__body--list{display:-ms-flexbox;display:flex;width:100%}.merchant-register__body--item-title{padding:10px 20px 0;font-weight:700;color:#ee4d2d}.merchant-register__body--item-content{padding:10px 20px 20px}.merchant-register__body--sign-contract-item{width:378px;position:relative;padding-top:70px;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.merchant-register__body--sign-contract-item>img{position:absolute;height:125px;top:0;left:50%;transform:translateX(-50%)}.merchant-register__body--sign-contract-item--content{-ms-flex:1 1;flex:1 1;background:#fff;border-radius:20px;box-shadow:0 0 22px 0 rgba(0,0,0,.04)}.merchant-register__body--sign-contract-item--content img{width:100%;border-top-left-radius:20px;border-top-right-radius:20px}.merchant-register__body--block-online-register--subtitle-wrapper{width:100%;text-align:center;padding-bottom:20px}.merchant-register__body--block-online-register--extra-info{width:100%;text-align:center}.merchant-register__body--block-online-register--extra-info--content{margin-top:15px;font-style:italic}.merchant-register__body--online-register-icon-wrapper{position:relative;margin-bottom:16px}.merchant-register__body--online-register-icon-wrapper--icon{height:72px}.merchant-register__body--online-register-icon-wrapper--description{position:absolute;color:#fff;width:100%;font-size:25px;font-weight:700}.merchant-register__body--testimonial-item{width:376px;border-radius:20px;box-shadow:0 0 22px 0 rgba(0,0,0,.1);background-color:#fff;display:-ms-flexbox;display:flex}.merchant-register__body--testimonial-item>img{width:110px;height:110px;border-radius:50%;margin-top:46px;margin-left:24px;margin-bottom:20px;-o-object-fit:cover;object-fit:cover}.merchant-register__body--testimonial-item--content>img{height:21px;width:27px;margin-top:9px;margin-left:20px}.merchant-register__body--testimonial-item--content .merchant-register__body--item-title{text-transform:uppercase;font-weight:800}.merchant-register__body--answer-question-block .merchant-register__body--title{text-transform:unset!important}.merchant-register__body--answer-question-block .merchant-register__body--list{-ms-flex-direction:column;flex-direction:column;-ms-flex-align:unset;align-items:unset;-ms-flex-pack:unset;justify-content:unset}.merchant-register__body--answer-question-item{background:#fff;display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;border-radius:10px;box-shadow:0 0 22px 0 rgba(0,0,0,.1)}.merchant-register__body--answer-question-item--content{width:calc(100% - 50px)}.merchant-register__body--answer-question-item img{width:25px;height:25px;margin-right:25px}.merchant-register__body--answer-question-item img:hover{cursor:pointer}.merchant-register__body--answer-question-item.show-more{min-height:104px;height:auto!important}.merchant-register__body--answer-question-item.show-more img{transform:rotate(180deg)}.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content,.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content>span>span,.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-title{overflow:hidden;width:100%;word-break:break-word;text-overflow:ellipsis;white-space:nowrap}.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content>span:first-child>span:not(:first-child),.merchant-register__body--answer-question-item.show-less .merchant-register__body--item-content>span:not(:first-child){display:none}.merchant-register__body--answer-question-item:not(:last-child){margin-bottom:10px}.merchant-register__nav{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center}.merchant-register__nav-item{margin-right:30px}.merchant-register__nav-item div{width:146px;height:48px;background-size:cover}.merchant-register__nav-item:first-of-type{position:relative;width:168px;height:48px;border-radius:8px;overflow:hidden}.merchant-register__nav-item:first-of-type div{position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);width:170px;height:55px}.merchant-register__nav-item-app-store-vi{background-image:url(/app/assets/img/AppStore-vn.png?1afe809ef1884945ef4a05dacec7679e)}.merchant-register__nav-item-play-store-vi{background-image:url(/app/assets/img/PlayStore-vn.png?a5bc23fd384a415654c9115efebb67db)}.merchant-register__nav-item-app-store-en{background-image:url(/app/assets/img/AppStore.png?0809eeff5b532eee70c53aa11c7c53f5)}.merchant-register__nav-item-play-store-en{background-image:url(/app/assets/img/PlayStore.png?b66262e74c57f7665631f16d62da83ca)}.merchant-register--btn{display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;width:-webkit-fit-content;width:-moz-fit-content;width:fit-content;height:48px;padding:8px 24px 0;border-radius:8px;text-align:center;text-transform:uppercase;background:#ee4d2d;color:#fff;cursor:pointer}.merchant-register--btn-wrapper{display:inline-block}.merchant-register--btn-register{line-height:18px;font-size:17px;font-weight:700}.merchant-register--btn-download{font-size:12px}.merchant-register__header--content{padding-bottom:50px;top:0;margin-top:138px}.merchant-register__header--content__title{padding:0 55px;margin-bottom:25px}.merchant-register__header--content__sub-title{margin-bottom:30px;padding:0 55px}.merchant-register__body{padding:48px 0 26px}.merchant-register__body--list{-ms-flex-pack:justify;justify-content:space-between;-ms-flex-align:stretch;align-items:stretch}.merchant-register__body--list>div{height:inherit}.merchant-register__body__block{padding:32px calc((100% - 1200px) / 2) 34px}.merchant-register__body--separator{margin:25px 0}.merchant-register__body--title{font-size:36px;padding:0 100px}.merchant-register__body--sub-title{font-size:32px}.merchant-register__body--item-title{font-size:18px}.merchant-register__body--block-online-register{padding:32px calc((100% - 1200px) / 2 + 50px) 34px!important}.merchant-register__body--block-online-register--extra-info{text-align:right;margin-top:20px}.merchant-register__body--block-online-register--extra-info--content{width:500px;margin-left:auto}.merchant-register__body--online-register-icon-wrapper--description{top:20px;left:38px}.merchant-register__body--online-register-item{width:350px;position:relative;padding-top:90px;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column}.merchant-register__body--online-register-item>img{position:absolute;height:120px;top:0;left:50%;transform:translateX(-50%)}.merchant-register__body--online-register-item--content{padding-top:30px;border-radius:10px;background-color:#f3f3f3;-ms-flex:1 1;flex:1 1}.merchant-register__body--answer-question-item{width:100%;height:104px!important}.merchant-register__body--answer-question-block--list-wrapper{display:-ms-flexbox;display:flex;-ms-flex-pack:justify;justify-content:space-between;-ms-flex-align:stretch;align-items:stretch;width:100%}.merchant-register__body--answer-question-block .merchant-register__body--list{width:calc(50% - 20px)}.merchant-register__body--answer-question-block .merchant-register__body--list:last-child{-ms-flex-align:center;align-items:center}@media screen and (max-width:1200px){.merchant-register__body--list{-ms-flex-direction:column;flex-direction:column;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.merchant-register__body--list>div:not(:last-child){margin-bottom:20px}.merchant-register__body--block-online-register--extra-info{text-align:center}.merchant-register__body--block-online-register--extra-info>*{margin-left:auto;margin-right:auto}.merchant-register__body--answer-question-block--list-wrapper{-ms-flex-direction:column;flex-direction:column;-ms-flex-align:center;align-items:center;-ms-flex-pack:center;justify-content:center}.merchant-register__body--answer-question-block--list-wrapper .merchant-register__body--list:not(last-child){margin-bottom:20px}}.modal-new-app .btn-logout{margin-left:646px;margin-top:5px;background-color:transparent;border:0;color:#c2c2c2;cursor:pointer}.modal-new-app .btn-logout .icon-now-power-off{margin-left:5px;margin-bottom:6px;vertical-align:bottom;color:#0288d1!important;font-weight:700;font-size:17px}.modal-new-app .align-items-center{border:1px solid;border-color:#0288d1!important;padding:3px;margin-bottom:7px;border-radius:6px;color:#0288d1!important;margin-right:15px;margin-top:10px}.fa-rating{color:#f4d516}.ic,span.text{display:inline-block;vertical-align:middle}.ic-add{background-position:-42px -137px;width:36px;height:36px}.ic-add,.ic-menu{background-image:url(/assets/img/sprites/sprite-1536824951231.png);background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-menu{background-position:-80px -137px;width:30px;height:30px}.ic-ocha-white{background-image:url(/assets/img/sprites/sprite-1536824951231.png);background-position:-204px -68px;width:44px;height:44px;background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-merchant-airpay{background-position:-136px -69px}.ic-merchant-airpay,.ic-merchant-marketing{background-image:url(/assets/img/sprites/sprite-1536824951231.png);width:66px;height:66px;background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-merchant-marketing{background-position:-204px 0}.ic-merchant-shipper{background-position:-68px -69px}.ic-merchant-shipper,.ic-merchant-system{background-image:url(/assets/img/sprites/sprite-1536824951231.png);width:66px;height:66px;background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-merchant-system{background-position:-136px 0}.ic-icon-box{background-image:url(/assets/img/sprites/sprite-1536824951231.png);background-position:0 -69px;width:66px;height:66px;background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-icon-app-phone{background-position:0 0}.ic-icon-app-phone,.ic-icon-money{background-image:url(/assets/img/sprites/sprite-1536824951231.png);width:66px;height:67px;background-image:url(/assets/img/sprites/sprite-1536824951231@2x.png);background-size:270px 177px}.ic-icon-money{background-position:-68px 0}.wrapper input[type=color],.wrapper input[type=date],.wrapper input[type=datetime-local],.wrapper input[type=datetime],.wrapper input[type=email],.wrapper input[type=month],.wrapper input[type=number],.wrapper input[type=password],.wrapper input[type=search],.wrapper input[type=tel],.wrapper input[type=text],.wrapper input[type=time],.wrapper input[type=url],.wrapper input[type=week],.wrapper select:focus,.wrapper textarea{font-size:16px}.now-text{color:#d52f33;font-weight:700}.is-active{display:block!important}#modal-sorry.modal-alert .modal-body{background-image:none}.now-loading-restautants{background-color:#fff}.item-navigation a.active{color:#cf2127}.item-navigation a{color:#464646}.table-row .pagination{margin:0 auto}.input-field input.required-data{box-shadow:0 1px 0 0 #cf2127;border-color:#cf2127}.input-field input.required-data+label{color:#cf2127}.link-button{color:#0f76a9;cursor:pointer}.now-loading-restaurant{background-color:#fff}input.required-data,select.required-data{border-color:#cf2127!important;outline:none}.form-reg-app-merchant .input-group select{background-color:#f2f2f2;font-size:14px;border:1px solid #d7d7d7;border-radius:4px;padding:0 10px;margin-bottom:0;height:45px;width:100%}.pac-container{z-index:10000!important}.mar-right10{margin-right:10px}.mar-top30{margin-top:30px}.mar-bottom30{margin-bottom:30px}.menu-restaurant-detail .promotions-order{display:block!important}.list-service .service-image i{display:block;margin:auto}.now-detail-restaurant .link-merchant{margin-bottom:8px}.share-social-box{display:inline-block}.dropdown-menu .dropdown-item{position:relative}.now-bill-restaurant .cart-stats{border:0}.user-profile-update .not-validate,.user-profile-update .validate{right:10px!important;top:5px!important;background:#fff}.padding-0{padding:0!important}.navbar-default .navbar-nav>li{margin:30px 9px}@media (max-width:770px){.navbar-default .navbar-nav>li{margin:0}}
  </style>
</head>


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
            <div class="logo-now col-auto"><span><a href="${ pageContext.request.contextPath }/home"><img
                    src="<c:url value = "/static/img/shopeefoodvn.png"/>"
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

            <div class="main-nav col"><a class="nav-item active" href=""><spring:message code="food"/></a><a
                    class="nav-item " href="https://shopeefood.vn/ho-chi-minh/fresh"><spring:message code="fresh"/></a>
              <a class="nav-item "href="https://shopeefood.vn/ho-chi-minh/liquor"><spring:message code="liquor"/></a>
              <a class="nav-item " href="https://shopeefood.vn/ho-chi-minh/flowers"><spring:message code="flowers"/></a>
              <a class="nav-item " href="https://shopeefood.vn/ho-chi-minh/fmcg"><spring:message code="fmcg"/></a>
              <a class="nav-item " href="https://shopeefood.vn/ho-chi-minh/medicine"><spring:message code="medicine"/></a>
              <a class="nav-item " href="https://shopeefood.vn/ho-chi-minh/pets"><spring:message code="pets"/></a>
            </div>
<div class="dropdown">
  <button style="background-color: #f56043;"  class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Language
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="?language=en_US">English</a>|
	<a class="dropdown-item" href="?language=vi_VN">Viet Nam</a>|
	
  </div>
</div> 
&nbsp;
 &nbsp; &nbsp; 
<c:if test="${sessionScope.message == 'chua dang nhap'}">
            <div class="user-acc col-auto">
              <a href="${ pageContext.request.contextPath }/login"><button type="button" class="btn btn-none-bg btn-login">
                <span class="font14"><spring:message code="login"/></span>
              </button></a>
            </div>
            </c:if>
           
            <c:if test="${sessionScope.message != 'chua dang nhap'}">
            <div class="user-acc-contain">
                  <img class="user-acc-img" src="${ pageContext.request.contextPath }/static/storage/${sessionScope.avatar}" alt="avatar">
                  <span>${name}</span>
                  <div class="user-acc-dropdown">

                    
                    <c:if test="${sessionScope.role =='merchant'}">
                      <a class="user-acc-admin" style="font-size: 11px" href="${ pageContext.request.contextPath }/merchant"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop-window" viewBox="0 0 16 16">
  <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h12V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zm2 .5a.5.5 0 0 1 .5.5V13h8V9.5a.5.5 0 0 1 1 0V13a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.5a.5.5 0 0 1 .5-.5z"/>
</svg></i> Kênh bán</a>
                    </c:if>
                    <c:if test="${sessionScope.role =='user'}">
                      <a class="user-acc-admin" style="font-size: 11px" href="${ pageContext.request.contextPath }/register/merchant"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-plus" viewBox="0 0 16 16">
  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
  <path fill-rule="evenodd" d="M13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg></i>
                        Đăng ký bán</a>
                      <a class="user-acc-admin" style="font-size: 11px" href="${ pageContext.request.contextPath }/user-info"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
</svg></i> 
                        Cá nhân</a>
                    </c:if>


                    <c:if test="${sessionScope.role =='admin' }">
                      <a class="user-acc-admin" style="font-size: 11px" href="${ pageContext.request.contextPath }/admin"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-sunglasses" viewBox="0 0 16 16">
  <path d="M4.968 9.75a.5.5 0 1 0-.866.5A4.498 4.498 0 0 0 8 12.5a4.5 4.5 0 0 0 3.898-2.25.5.5 0 1 0-.866-.5A3.498 3.498 0 0 1 8 11.5a3.498 3.498 0 0 1-3.032-1.75zM7 5.116V5a1 1 0 0 0-1-1H3.28a1 1 0 0 0-.97 1.243l.311 1.242A2 2 0 0 0 4.561 8H5a2 2 0 0 0 1.994-1.839A2.99 2.99 0 0 1 8 6c.393 0 .74.064 1.006.161A2 2 0 0 0 11 8h.438a2 2 0 0 0 1.94-1.515l.311-1.242A1 1 0 0 0 12.72 4H10a1 1 0 0 0-1 1v.116A4.22 4.22 0 0 0 8 5c-.35 0-.69.04-1 .116z"/>
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-1 0A7 7 0 1 0 1 8a7 7 0 0 0 14 0z"/>
</svg></i> Kênh admin</a>
                    </c:if>

                    <hr>
                    <a style="font-size: 11px" href="${ pageContext.request.contextPath }/logout"><span ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
  <path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
</svg></i> Đăng xuất</span></a>
                  </div>


                </div>


                <c:if test="${sessionScope.role == 'user'&& page == 'merchant-detail.jsp'}">
          		<div class="nav-bar-cart">
             		 <a href="${ pageContext.request.contextPath }/cart/user/${sessionScope.userId}"><i class="fa-solid fa-cart-shopping" ></i></a>
              
                 </div>
             
           <!--          <div class="cart-detail">
                      <span class="cart-detail-span">Sản phẩm trong giỏ hàng</span>
                      <div
                        *ngIf="messagecart === 'khong co du lieu'; then thenBlockCartDetail else elseBlockACartDetail"></div>
                      <ng-template #thenBlockCartDetail>
                        <img class="nocart-img" src="https://taphoa.cz/static/media/cart-empty-img.8b677cb3.png" alt="">
                      </ng-template>
                      <ng-template #elseBlockACartDetail>
                        <div class="cart-detai-item-container">
                          <div class="cart-detai-item" *ngFor="let product of carts">
                            <img src="{{product.product.image}}" alt="">
                            <span class="cart-detai-item-span">{{product.product.name}}</span>
                            <span>{{product.product.newPrice}} đ</span>
                          </div>
                        </div>
                      </ng-template>
                      <div class="cart-detail-btn">
                        <span>Tổng: {{carts.length}} sản phẩm</span>
                        <button class="btn btn-cart" routerLink="/cart">Xem giỏ hàng</button>
                      </div>
                    </div> -->
       
                </c:if>
   
            </c:if>
            
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
    
 
    <jsp:include page="/WEB-INF/views/page/${page}"></jsp:include>
      

      <footer class="main-footer">
      <div id="footer-bottom">
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
  </footer>
</div>
<div id="modal">
  <div>
    <div class="modal fade modal-noti modal-alert">
      <div class="modal-dialog modal-noti" role="document">
        <div class="modal-content"><span class="close" data-dismiss="modal">x</span>
          <div class="modal-header">
            <div class="txt-bold font13"><span class="txt-red">ShopeeFood</span> Thông báo</div>
          </div>
          <div class="modal-body">
            <p class="font15"><span></span></p>
          </div>
          <div class="modal-footer"><button type="button" class="btn btn-red align-right">Ok</button>
          </div>
        </div>
      </div>
      <div class="modal-backdrop fade under-modal show"></div>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script></script>




</html>