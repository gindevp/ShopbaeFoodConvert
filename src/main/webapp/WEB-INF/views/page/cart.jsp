<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="${ pageContext.request.contextPath }/static/js/sockjs-0.3.4.js"></script>
<script src="${ pageContext.request.contextPath }/static/js/stomp.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
<style>
tr.highlight {
  background-color: yellow;
}
.gradient-custom {
  /* fallback for old browsers */
  background: #6a11cb;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: rgba(20, 22, 25, 0.16)
}
.btn{
  background-color: #f56043;
  border: #f56043;
}
.row{
  margin-bottom: 20px;
}
.bg-image{
  box-shadow: 5px 5px 5px #ddd;
}
.bg-image-img{
  border-radius: 5px;
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

.logo-now-name{
  margin: 7px 15px;
  position: absolute;
  font-size: 25px;
  color: #ee4d2d;
  padding-left: 10px;
  border-left: 1px solid #ee4d2d;
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
  z-index: 999;
  display: none;
  box-shadow: 5px 5px 8px #ddd;
  border: 1px solid #ddd;
}
.user-acc-admin{
  text-decoration: none;
  display: block;
  margin-bottom: 15px;
}
.user-acc-admin:hover{
  cursor: pointer;
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


.nav-bar-cart{
  font-size: 20px;
  color: #525252;
  margin: 0 20px;
  position: relative;
}

.nav-bar-cart:hover{
  cursor: pointer;
}

.cart-detail{
  position: absolute;
  width: 400px;
  left: -180px;
  background-color: #ffffff;
  display: none;
  border-radius: 5px;
  box-shadow: 5px 5px 8px #ddd;
  border: 1px solid #ddd;
  z-index: 999;
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
}
.cart-detai-item:hover{
  cursor: pointer;
  background-color: #ededed;
}
.nav-bar-cart:hover .cart-detail{
  display: block;

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
/*.cart-detai-item span:last-child {*/
/*  position: absolute;*/
/*  right: 0;*/
/*  color: #fe6333;*/
/*  margin-right: 15px;*/
/*}*/
.cart-detail-btn{
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 15px 0 20px 0 ;
  border-top: 1px solid #ddd;
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
/*ẩn scroll bar*/
.cart-detai-item-container{
  margin-bottom: 90px;
  max-height: 300px;
  overflow-y: scroll;
  scrollbar-width: none;
}
.cart-detai-item-container::-webkit-scrollbar {
  width: 0 !important;
  display: none;
}
/*ẩn scroll bar*/

.card-body-noimage{
  margin-left: 190px;
}


/*footer*/
.now-container-coporation {
  background-color: #fff;
  box-shadow: 0 2px 2px 0 rgba(50, 50, 50, .1);
  -moz-box-shadow: 0 2px 2px 0 rgba(50, 50, 50, .1);
  -webkit-box-shadow: 0 2px 2px 0 rgba(50, 50, 50, .1);
  padding: 20px 150px 50px;
  border-radius: 4px;
  margin-top: 60px;
  position: relative
}

.now-container-coporation.img-right {
  padding: 50px 350px 50px 150px
}

.now-container-coporation .title {
  font-size: 22px;
  font-weight: 700;
  margin-bottom: 10px
}

.now-container-coporation .bg-corporation {
  position: absolute;
  bottom: -1px;
  right: 0;
  z-index: 2;
  line-height: 0;
  text-align: center;
  width: 350px
}


.seo-footer-link {
  margin: 50px 0
}

.seo-footer-link__head {
  color: rgba(0, 0, 0, .54);
  font-weight: 700;
  text-transform: uppercase
}

.seo-footer-link__body {
  column-count: 4
}

.seo-footer-link__item {
  padding-right: 10px;
  break-inside: avoid
}
.seo-footer-link__item a{
  text-decoration: none;
}

.seo-footer-link__title {
  font-weight: 700;
  margin: 0 0 .125rem;
  padding: .125rem 0;
  text-transform: uppercase;
  color: rgba(0, 0, 0, .54);
  font-size: 13px
}

.seo-footer-link__title:hover {
  color: #0288d1
}

.seo-footer-link__sub-item-wrapper {
  list-style-type: none;
  padding: 0;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap
}

.seo-footer-link__sub-item {
  font-size: 13px;
  color: rgba(0, 0, 0, .54)
}

.seo-footer-link__sub-item:after {
  content: "|";
  color: rgba(0, 0, 0, .54) !important;
  padding: 0 3px
}

.seo-footer-link__sub-item:last-child:after {
  content: ""
}

.seo-footer-link__sub-item:hover {
  color: #0288d1
}
/*footer*/

.btn-order{
  border: 1px solid #ddd;
  border-radius: 10px;
}
.btn-order:hover{
  background-color: white;
}
.note{
  width: 100%;
  padding-left: 15px;
  border-radius: 5px;
}
</style>
<script src="${ pageContext.request.contextPath }/static/js/sweetalert.js"></script>
<script>
var stompClient = null;
function connect() {
	var socket = new SockJS('${ pageContext.request.contextPath }/chat');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
	    console.log('Connected: ' + frame);
	    stompClient.subscribe('/topic/order', function(data) {
	        var dataOrder = JSON.parse(data.body);
	        console.log('data', dataOrder);
	        var elementOrder = document.getElementById('order_' + dataOrder.id);
	        elementOrder.innerHTML = `<td class="merchant-item " style="background-color: yellow;" size="50px" id="order_${dataOrder.id}">`+dataOrder.status+` </td>`;
	        swal({title:dataOrder.status,
	      		icon: "success",
	      	});
	    });
	});

}</script>
     <body class="portal" style="font-size:calc(8px + 0.5vw);" onload="connect()">
<section class="h-100 gradient-custom">
  <div class="container py-5">
  <a class="btn btn-primary btn-orderDetail" href="${ pageContext.request.contextPath }/merchantp/detail/${sessionScope.merchantId}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
  <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
</svg>Quay lại quán</a>
    <div class="row d-flex justify-content-center my-4">
      <div class="col-md-8">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">  Sản phẩm</h5>
          </div>
          <div class="card-body">

<c:if test="${message == 'khong co du lieu' }">

              <img class="card-body-noimage" src="https://taphoa.cz/static/media/cart-empty-img.8b677cb3.png" alt="">
</c:if>
            
            
            
            <!-- Single item -->
            <c:if test="${message != 'khong co du lieu' }">
<c:forEach var="product" items="${products}">
                <div class="row" >
                  <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                    <!-- Image -->
                    <div class="bg-image hover-overlay hover-zoom ripple rounded" data-mdb-ripple-color="light">
                      <img src="${ pageContext.request.contextPath }/static/storage/${product.product.image}"
                           class="w-100 bg-image-img" alt="Blue Jeans Jacket" />
                      <a href="#!">
                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
                      </a>
                    </div>
                    <!-- Image -->
                  </div>

                  <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                    <!-- Data -->
                    <p><strong>${product.product.name}</strong></p>
                    <p>Mô tả: ${product.product.shortDescription}</p>
                    <p>Đơn giá: ${product.product.newPrice} đ</p>
                    <a href="${ pageContext.request.contextPath }/cart/remove-item/${product.product.id}"><button type="button" class="btn btn-primary btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
                            title="Remove item" style="font-size: 1.45rem;" >
                      <i class="fas fa-trash"></i>
                    </button></a>
                    <button type="button" class="btn btn-danger btn-sm mb-2" data-mdb-toggle="tooltip"
                            title="Move to the wish list" style="font-size: 1.45rem;">
                      <i class="fas fa-heart"></i>
                    </button>
                    <!-- Data -->
                  </div>

                  <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <!-- Quantity -->
                    <div class="d-flex mb-4" style="max-width: 300px">

                      <div class="form-outline">
                        <label class="form-label" for="form1">Số lượng</label>
                        <input id="form1" min="0" name="quantity"value="${product.quantity}" type="number" class="form-control" />

                      </div>
                    </div>
                    <!-- Quantity -->

                    <!-- Price -->
                    <p class="text-start text-md-center">
                      <strong>Giá tiền: </strong>
                      <strong>${product.totalPrice } đ</strong>
                    </p>
                    <!-- Price -->
                  </div>
                </div>
                <!-- Single item -->
</c:forEach>

              </c:if>

          </div>
          
        </div>


        <div class="card mb-4" style="width: 1110px;">
        
        
        <c:if test="${page2!='order-detail.jsp'}">
          <div class="card-body">
            <p><strong>Lịch sử mua hàng</strong></p>

            <div class="table-responsive container">
              <table class="table table-sm">
                <thead>
                <tr>
                <th scope="col" colspan="3" style="text-align: center;">Hành động</th>
                 
                  <th scope="col">Tên quán </th>
                  <th scope="col">Chi tiết</th>
                  <th scope="col">Tổng tiền</th>
                  <th scope="col">Thời gian đặt mua hàng</th>
                  
                  <th scope="col" >Trạng thái</th>
                  
                </tr>
                </thead>
                <tbody>
                <c:forEach  var="order" items="${orders}">
                <tr >
                
                <td class="merchant-item" size="150px" style="width: 101px;"><c:if test="${order.status=='MERCHANT_RECEIVED' }"><a class="btn btn-order" href="${ pageContext.request.contextPath }/cart/received/${order.id}">Nhận hàng</a></c:if><c:if test="${order.status!='MERCHANT_RECEIVED' }"><button class="btn btn-order" disabled="disabled">Nhận hàng</button></c:if></td>
                    <td class="merchant-item" size="150px" style="width: 80px;"><a class="btn btn-order" href="${ pageContext.request.contextPath }/cart/refuse/${order.id}">Từ chối</a></td>

                  

                  <td class="merchant-item" size="50px"><a class="btn-order" href="${ pageContext.request.contextPath }/cart/delete/order/${order.id}/user/${sessionScope.userId}"><i class="fa-solid fa-trash"></i></a></td>
                
                  
                  <td class="merchant-item">${order.merchant_id}</td>
                  <td class="action-icon show-detail"><a href="${ pageContext.request.contextPath }/cart/order/detail/${order.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-left-square" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.096 3.146a.5.5 0 1 1 .707.708L6.707 9.95h2.768a.5.5 0 1 1 0 1H5.5a.5.5 0 0 1-.5-.5V6.475a.5.5 0 1 1 1 0v2.768l4.096-4.097z"/>
</svg></a></td>
                  <td class="merchant-item">${order.totalPrice} đ</td>
                  <td class="merchant-item">${order.orderdate}</td>
                  
                  <td class="merchant-item" size="50px" id="order_${order.id}"><spring:message code="${order.status}"/> </td>
              
                    </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>

          </div>
</c:if>
<c:if test="${page2=='order-detail.jsp'}">
<jsp:include page="/WEB-INF/views/merchant/${page2}"></jsp:include>
</c:if>

          <div class="card-body">
            <p><strong>We accept</strong></p>
            <img class="me-2" width="45px"
                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                 alt="Visa" />
            <img class="me-2" width="45px"
                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                 alt="American Express" />
            <img class="me-2" width="45px"
                 src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                 alt="Mastercard" />
          </div>

        </div>

      </div>
      <div class="col-md-4">
        <div class="card mb-4">
          <div class="card-header py-3">
            <h5 class="mb-0">Hóa đơn</h5>
          </div>
          <div class="card-body">


            <div class="table-responsive container">

<c:if test="${message =='khong co du lieu' }">
       
                <table class="table table-striped table-sm">
                  <thead>
                  <tr>
                    <th scope="col">Tên </th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Đơn giá</th>
                  </tr>
                  </thead>
                </table>
               </c:if>
              <form action="${ pageContext.request.contextPath }/cart/order/user/${sessionScope.userId}/merchant/${sessionScope.merchantId}" method="post">
              <c:if test="${message !='khong co du lieu' }">
      
             
                <table class="table table-striped table-sm">
                  <thead>
                  <tr>
                    <th scope="col">Tên </th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Đơn giá</th>
                  </tr>
                  </thead>
                  <tbody>
                  
                  <c:forEach var="cart" items="${products}">
                  <tr >
                    <td class="merchant-item">${cart.product.name}</td>
                    <td class="merchant-item">${cart.quantity}</td>
                    <td class="merchant-item">${cart.price} đ</td>
                  </tr>
                  </c:forEach>
                  
                  <tr>
                    <th scope="col" colspan="2">Tổng tiền </th>
                    <th scope="col" >${sum} đ</th>
                  </tr>
                  <tr>
                    <td scope="col">Ghi chú </td>
                    <td scope="col" colspan="2"><input class="note" type="text" placeholder="Ghi chú" name="note"></td>
                  </tr>
                  <tr>
                    <td scope="col">Địa chỉ</td>
                    <td scope="col" colspan="2"><input class="note" type="text" placeholder="Địa chỉ giao hàng" name="address" ></td>
                  </tr>
                  </tbody>
                </table>
           <input name="sum" value="${sum}" hidden="true"/> 
           <button type="submit" class="btn btn-primary btn-lg btn-block" style="margin-left: 8px">
              Đặt hàng
            </button>
</c:if> 


</form>
            </div>
           
            </div>
            </div>
          </div>
        </div>
      </div>
</section>
</body>