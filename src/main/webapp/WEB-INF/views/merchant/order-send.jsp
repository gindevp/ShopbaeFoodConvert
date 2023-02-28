<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<body onload="connect()">
<div class="table-responsive container">
  <table class="table table-striped table-sm">
    <thead style="background-color: #f16464">
    <tr>
      <th scope="col">Stt</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Người đặt </th>
      <th scope="col">Điện thoại</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Thời gian</th>
      <th scope="col">Ghi chú</th>
      <th scope="col">Chi tiết</th>
      <th scope="col">Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders }" varStatus="status">
        <tr >
          <td>${status.index+1}</td>
          <td><img src="${ pageContext.request.contextPath }/static/storage/${order.appUser.avatar}" alt="" style="height: 40px;
        width: 40px;
        border-radius: 50%;"></td>
          <td class="merchant-item">${order.appUser.name}</td>
          <td class="merchant-item">${order.appUser.phone}</td>
          <td class="merchant-item">${order.deliveryAddress}</td>
          <td class="merchant-item" size="50px">${order.orderdate} </td>
          <td class="merchant-item" size="50px">${order.note} </td>
          <td class="action-icon show-detail"><a href="${ pageContext.request.contextPath }/merchant/order/detail/${order.id}" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-arrow-up-right-square-fill" viewBox="0 0 16 16">
  <path d="M14 0a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12zM5.904 10.803 10 6.707v2.768a.5.5 0 0 0 1 0V5.5a.5.5 0 0 0-.5-.5H6.525a.5.5 0 1 0 0 1h2.768l-4.096 4.096a.5.5 0 0 0 .707.707z"/>
</svg></a></td>
 <td class="merchant-item" size="50px"><spring:message code="${order.status}"/> </td>
        </tr>
        </c:forEach>
    </tbody>
  </table>
</div>
</body>