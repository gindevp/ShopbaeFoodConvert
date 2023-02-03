<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="table-responsive container">
  <strong><c:if test="${a==2}">
    <a class="btn btn-primary btn-orderDetail" href="/ShobaeFood/cart/user/${sessionScope.userId}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
  <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
</svg> Quay lại danh sách đơn hàng</a>
</c:if>Chi tiết đơn hàng</strong>
  <table class="table table-striped table-sm">
    <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Ảnh món</th>
      <th scope="col">Tên món </th>
      <th scope="col">Số lượng</th>
      <th scope="col">Giá tiền</th>
      <th scope="col">Đơn giá</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="orderDetail" items="${oderDetail}">
    <tr >
      <td>${orderDetail.product.id}</td>
      <td><img src="/ShobaeFood/static/storage/${orderDetail.product.image}" alt="" style="height: 40px;
        width: 40px;
        border-radius: 50%;"></td>
      <td class="merchant-item">${orderDetail.product.name}</td>
      <td class="merchant-item">${orderDetail.quantity}</td>
      <td class="merchant-item">${orderDetail.product.newPrice}</td>
      <td class="merchant-item">${orderDetail.product.newPrice*orderDetail.quantity}</td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
  
  <h3 style="color: red">Tổng tiền ${sum} đ</h3>
<c:if test="${sessionScope.a==1}">
    <a class="btn btn-primary btn-orderDetail" href="/ShobaeFood/merchant/order/received/${sessionScope.orderId}">Nhận đơn</a>
    <a class="btn btn-primary btn-orderDetail" href="/ShobaeFood/merchant/order/refuse/${sessionScope.orderId}">Từ chối</a>
</c:if>

</div>