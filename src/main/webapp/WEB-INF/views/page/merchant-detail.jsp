<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
      src="<c:url value = "/image/${merchant.avatar}"/>"
      alt="Dồi Sụn Nướng &amp; Ăn Vặt - Shop Online" class=""></div>
    <div class="detail-restaurant-info">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a class="breadcrumb-link" rel="nofollow" href="${ pageContext.request.contextPath }/home">Home</a></li>
          <li class="breadcrumb-item"><a class="breadcrumb-link" rel="nofollow" href="${ pageContext.request.contextPath }/merchantp/all">list-merchant</a></li>
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
        <span class="number-rating">999+</span><spring:message code="review"/>
      </div>
<!--      <div class="view-more-rating"><a href="https://foody.vn/ha-noi/doi-sun-pate-shop-online"-->
<!--                                       rel="noopener noreferrer nofollow" target="_blank" class="number-review">Xem thêm-->
<!--        lượt đánh giá từ Foody</a></div>-->
      <div class="status-restaurant">

        
        <c:if test="${statusMerchant=='true'}">
                <div class="opentime-status"><span class="stt online" title="Mở cửa"></span></div>
        </c:if>
        <c:if test="${statusMerchant=='false'}">
        <div class="opentime-status"><span class="stt offline" title="Đóng cửa"></span></div>
        </c:if>
        
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
      <div class="item active"><spring:message code="menu"/></div>
    </div>
    <div class="menu-restaurant-content-tab">
      <div class="menu-restaurant-container">
        <div class="menu-restaurant-category">
          <div class="list-category" id="scroll-spy">
            <div class="scrollbar-container ps">
              <div class="item"><span id="1001658" title="<spring:message code="hot"/>"
                                      class="item-link active"><spring:message code="hot"/></span></div>
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
          <form action="${ pageContext.request.contextPath }/merchantp/detail/${merchant.id}/search">
            <div class="search-items"><p class="input-group"><i class="fas fa-search"></i>
            <input type="search"
                                                                                                 name="name"
                                                                                                 placeholder="<spring:message code="find_food"/>"
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
                    <div class="title-menu"><spring:message code="hot"/></div>
                  </div>

                  <table style="width: 100%">
                  <c:forEach var="product" items="${products}">
                  <tr title="Kho còn ${product.quantity}"><td><div class="item-restaurant-row "
                       style="height: 88px; left: 0px; position: inherit; top: 144px; width: 100%;"
                               style="height: 81px; left: 0px;  top: 50px; width: 100%;">
                    <div class="row" style="width: 750px">
                      <div class="col-auto item-restaurant-img" >
                        <button class="inline"><img
                          src="${ pageContext.request.contextPath }/image/${product.image}"
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
                          <a >
                          <div class="col-auto adding-food-cart txt-right">
                          
                            <div class="btn-adding" 
                            <c:if test="${statusMerchant=='false'||role=='merchant'||role=='admin'|| product.quantity==0}">
                            style="pointer-events: none;opacity: 0.5;"
                            </c:if>
                            onclick="addToCart(${sessionScope.userId},${product.id})">+</div>
                            
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
<script>
	function addToCart(user_id,product_id) {
		if(user_id == 0){
			swal({
				  title: "Cần đăng nhập?",
				  text: "Bạn chưa đăng nhập cần đăng nhập để đặt hàng!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
					  $.ajax({
						    type: "GET",
						    url: `/ShobaeFood/saveMerProToSession?merchant_old_id=${sessionScope.merchantId}&product_old_id=`+product_id, // URL của API để lưu product_id vào session
						     // dữ liệu cần gửi lên server
						    success: function (response) {
						      // xử lý khi request thành công
						      window.location="https://localhost:8443/ShobaeFood/login?mess=chua-dang-nhap";
						    },
						    error: function (xhr, status, error) {
						      // xử lý khi request thất bại
						      console.log("Lỗi khi gửi request: " + error);
						    }
						  });
				  } else {
				    swal("Bạn chọn không!");
				  }
				});

			
			
		}else{
			console.log(user_id);
		    console.log(product_id);
		    $.ajax({
		    	headers: {
		             'Accept': 'application/json',
		             'Content-Type': 'application/json'
		         },
		        type: "POST",

		        //tên API
		        url:`/ShobaeFood/cart/product/`+product_id+`/user/${sessionScope.userId}`,
		        //xử lý khi thành công
		        success: function (data) {
		      	console.log("suss");  
		      	swal({title:"<spring:message code="cartSuccess"/>",
		      		icon: "success",
		      	});
		        }

		      });
		}
		}

	/*     let producer = $('#producer').val();
	    let model = $('#model').val();
	    let price = $('#price').val(); */
	/*     console.log(price); */
	    

</script>
    <c:if test="${sessionScope.ss}">
    <script type="text/javascript">
    swal({title:"<spring:message code="login_success"/>",
    	icon: "success"})
    	setTimeout(() => {
    		  swal({title:"<spring:message code="cartSuccess"/>",
    		    	icon: "success"})
		},4000);
    	</script></c:if>
    <%
    session.removeAttribute("ss");
    %>
