<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
<%@include file="/static/css/login.css"%>

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

</style>
<div class="now-detail-restaurant clearfix" style="width: 1200px;
    margin-right: auto;
    margin-left: auto;
    height: 41%;" >

  <div class="container">
    <div class="detail-restaurant-img"><img
      src="<c:url value = "/static/storage/${merchant.avatar}"/>"
      alt="Dồi Sụn Nướng &amp; Ăn Vặt - Shop Online" class=""></div>
    <div class="detail-restaurant-info">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a class="breadcrumb-link" rel="nofollow" href="/ShobaeFood/home">Home</a></li>
          <li class="breadcrumb-item"><a class="breadcrumb-link" rel="nofollow" href="/ShobaeFood/merchantp/all">list-merchant</a></li>
          <li class="breadcrumb-item"><a class="breadcrumb-link" rel="nofollow" >${merchant.name}</a></li>
        </ol>
      </nav>
      <div class="kind-restaurant">
        <div class="tag-preferred" data-toggle="modal" data-target="#modal-preferred-merchant"><i
          class="fa fa-thumbs-up" aria-hidden="true"></i>Yêu thích
        </div>
        <span> Shop Online</span></div>
      <h1 class="name-restaurant">${merchant.name}</h1>
      <div class="address-restaurant">${merchant.address}</div>
      <div class="rating">
        <div class="stars"><span class="full"><i class="fas fa-star"></i></span><span class="full"><i
          class="fas fa-star"></i></span><span class="full"><i class="fas fa-star"></i></span><span class="full"><i
          class="fas fa-star"></i></span><span class="half"><i class="fas fa-star-half-alt"></i></span></div>
        <span class="number-rating">999+</span>đánh giá trên ShopeeFood
      </div>
<!--      <div class="view-more-rating"><a href="https://foody.vn/ha-noi/doi-sun-pate-shop-online"-->
<!--                                       rel="noopener noreferrer nofollow" target="_blank" class="number-review">Xem thêm-->
<!--        lượt đánh giá từ Foody</a></div>-->
      <div class="status-restaurant">
        <div class="opentime-status"><span class="stt online" title="Mở cửa"></span></div>
        <div class="time"><i class="far fa-clock"></i>${merchant.openTime}-${merchant.closeTime}</div>
      </div>
<!--      <div class="cost-restaurant"><i class="fas fa-dollar-sign"></i>17,000 - 100,000</div>-->
      <div class="share-social clearfix">
        <div class="share-social-box">
          <div class="fb-like" data-layout="button" data-action="like" data-size="small" data-show-faces="false"
               data-share="true" data-colorscheme="light" data-kid-directed-site="false"></div>
        </div>
      </div>
      <div class="utility-restaurant clearfix">
        <div class="utility-item">
          <div class="utility-title">Phí dịch vụ</div>
          <div class="utility-content"><span class="txt-bold txt-red"> 0.0% Phí phục vụ </span></div>
          <span class="icon icon-partner-vi" data-toggle="modal" data-target="#modal-verify-merchant"></span></div>
        <div class="utility-item">
          <div class="utility-title">Dịch vụ bởi</div>
          <div class="utility-content"><span class="txt-bold txt-red">ShopeeFood</span></div>
        </div>
      </div>
    </div>
  </div>
</div>



<div class="container relative clearfix" style="padding: 0 25px 0 0;">
  <div class="now-menu-restaurant">
    <div class="menu-restaurant-tab">
      <div class="item active">Thực đơn</div>
    </div>
    <div class="menu-restaurant-content-tab">
      <div class="menu-restaurant-container">
        <div class="menu-restaurant-category">
          <div class="list-category" id="scroll-spy">
            <div class="scrollbar-container ps">
              <div class="item"><span id="1001658" title="HÔM NAY CÓ GÌ HOT"
                                      class="item-link active">HÔM NAY CÓ GÌ HOT</span></div>
              <div class="item"><span id="772307" title="Đồ Uống siêu hot ngày hè" class="item-link ">Đồ Uống siêu hot ngày hè</span>
              </div>
              <div class="item"><span id="4764644" title="Ăn vặt mê ly" class="item-link ">Ăn vặt mê ly</span></div>
              <div class="item"><span id="767328" title="Mỳ Trộn (0963408143)"
                                      class="item-link ">Mỳ Trộn (0963408143)</span></div>
              <div class="item"><span id="767329" title="Đồ Ăn Vặt (0963408143)" class="item-link ">Đồ Ăn Vặt (0963408143)</span>
              </div>
              <div class="item"><span id="767332" title="Combo (0963408143)"
                                      class="item-link ">Combo (0963408143)</span></div>
              <div class="item"><span id="767333" title="Món Gà" class="item-link ">Món Gà</span></div>
              <div class="item"><span id="1421506" title="Đồ đông lạnh chưa chế biến" class="item-link ">Đồ đông lạnh chưa chế biến</span>
              </div>
              <div class="item"><span id="1009282" title="Gia vị chấm" class="item-link ">Gia vị chấm</span></div>
              <div class="ps__rail-x" style="left: 0px; bottom: 0px;">
                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
              </div>
              <div class="ps__rail-y" style="top: 0px; right: 0px;">
                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="menu-restaurant-detail">
          <div class="promotions-order">
            <div class="promotion-item">
              <div><img src="https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
                        alt="Thanh toán thẻ tín dụng Sacombank: Giảm 60K cho đơn từ 150K" class="icon-promotion">
                <div class="content">Thanh toán thẻ tín dụng Sacombank: Giảm 60K cho đơn từ 150K</div>
              </div>
              <button class="code-copy"><span class="promo_STB60">Copy code</span><span
                class="fa fa-copy"></span></button>
            </div>
            <div class="promotion-item">
              <div><img src="https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
                        alt="Thanh toán thẻ tín dụng VIB: Giảm 60K cho đơn từ 200K" class="icon-promotion">
                <div class="content">Thanh toán thẻ tín dụng VIB: Giảm 60K cho đơn từ 200K</div>
              </div>
              <button class="code-copy"><span class="promo_VIB60">Copy code</span><span
                class="fa fa-copy"></span></button>
            </div>
            <div class="promotion-item">
              <div><img src="https://images.foody.vn/icon/discount/s/shopeefood_voucher_14.png"
                        alt="Thanh toán thẻ tín dụng Techcombank: Giảm 50K cho đơn từ 150K từ thứ 4 đến chủ nhật hàng tuần"
                        class="icon-promotion">
                <div class="content">Thanh toán thẻ tín dụng Techcombank: Giảm 50K cho đơn từ 150K từ thứ 4 đến chủ nhật
                  hàng tuần
                </div>
              </div>
              <button class="code-copy"><span class="promo_TECHCOMBANK">Copy code</span><span
                class="fa fa-copy"></span></button>
            </div>
          </div>
          <div class="menu-restaurant-list">
          <form action="/ShobaeFood/merchantp/detail/${merchant.id}/search">
            <div class="search-items"><p class="input-group"><i class="fas fa-search"></i>
            <input type="search"
                                                                                                 name="name"
                                                                                                 placeholder="Tìm món"
                                                                                                 ></p>
                                                                                                </div></form> 
            <div id="restaurant-item">
              <div aria-label="grid" aria-readonly="true" class="ReactVirtualized__Grid ReactVirtualized__List"
                   role="grid" tabindex="0"
                   style="box-sizing: border-box; direction: ltr; height: auto; position: relative; width: 100%; will-change: transform; outline: none;">
                <div class="ReactVirtualized__Grid__innerScrollContainer" role="rowgroup"
                     style="width: 100%; height: auto; max-height: 6097px; position: relative;">
                  <div class="menu-group" id="section-group-menu-1001658"
                       style="height: 56px; left: 0px; position: absolute; top: 0px; width: 100%;">
                    <div class="title-menu">HÔM NAY CÓ GÌ HOT</div>
                  </div>

                  <table style="width: 100%">
                  <c:forEach var="product" items="${products}">
                  <tr ><td><div class="item-restaurant-row "
                       style="height: 88px; left: 0px; position: inherit; top: 144px; width: 100%;"
                               style="height: 81px; left: 0px;  top: 50px; width: 100%;">
                    <div class="row" style="width: 750px">
                      <div class="col-auto item-restaurant-img" >
                        <button class="inline"><img
                          src="/ShobaeFood/static/storage/${product.image}"
                          alt="Set lẩu tok full topping 2-3 người ăn" width="60" height="60"></button>
                      </div>
                      <div class="col item-restaurant-info"><h2 class="item-restaurant-name">${product.name}</h2>
                        <div class="item-restaurant-desc">${product.shortDescription}
                        </div>
                      </div>
                      <div class="col-auto item-restaurant-more" style="margin-right: 161px; flex-wrap: wrap-reverse">
                        <div class="row ">
                          <div class="col-auto product-price">
                            <div class="old-price">${product.oldPrice}<span
                              style="font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;">đ</span>
                            </div>
                            <div class="current-price">${product.newPrice}<span
                              style="font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;">đ</span>
                            </div>
                          </div>
                          <a href="/ShobaeFood/cart/product/${product.id}/user/${sessionScope.userId}">
                          <div class="col-auto adding-food-cart txt-right">
                            <div class="btn-adding" >+</div>
                          </div></a>
                        </div>
                      </div>
                    </div>
                  </div>
                  </td>
                    </tr>
                  </c:forEach>
                    <br>
                    <br>
                    <br>
<!--                  end for-->
                  </table>
                  <div class="txt-center mt-2"><button (click)="plus()" class="btn-none btn-load-more link"><span
                    class="pr-1">Xem thêm</span><i class="fas fa-redo font12 "></i></button></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
<br>

