<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="table-responsive container">
  <strong>Chi tiết đơn hàng</strong>
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

    <a class="btn btn-primary btn-orderDetail" href="/ShobaeFood/merchant/order/received/${sessionScope.orderId}">Nhận đơn</a>
    <a class="btn btn-primary btn-orderDetail" href="/ShobaeFood/merchant/order/refuse/${sessionScope.orderId}">Từ chối</a>


</div>