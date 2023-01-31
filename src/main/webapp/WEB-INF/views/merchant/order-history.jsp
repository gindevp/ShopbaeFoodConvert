<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="table-responsive container">
  <table class="table table-striped table-sm">
    <thead>
    <tr>
      <th scope="col">id</th>
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
    <c:forEach var="order" items="${orders }">
        <tr >
          <td>${order.id}</td>
          <td><img src="/ShobaeFood/static/storage/${order.appUser.avatar}" alt="" style="height: 40px;
        width: 40px;
        border-radius: 50%;"></td>
          <td class="merchant-item">${order.appUser.name}</td>
          <td class="merchant-item">${order.appUser.phone}</td>
          <td class="merchant-item">${order.deliveryAddress}</td>
          <td class="merchant-item" size="50px">${order.orderdate} </td>
          <td class="merchant-item" size="50px">${order.note} </td>
          <td class="action-icon show-detail"><a href="/ShobaeFood/merchant/order/detail/${order.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-left-square" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.096 3.146a.5.5 0 1 1 .707.708L6.707 9.95h2.768a.5.5 0 1 1 0 1H5.5a.5.5 0 0 1-.5-.5V6.475a.5.5 0 1 1 1 0v2.768l4.096-4.097z"/>
</svg></a></td>
          <%-- <td class="action-icon show-detail"><a href="/ShobaeFood/merchant/order/received/${order.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-left-square" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.096 3.146a.5.5 0 1 1 .707.708L6.707 9.95h2.768a.5.5 0 1 1 0 1H5.5a.5.5 0 0 1-.5-.5V6.475a.5.5 0 1 1 1 0v2.768l4.096-4.097z"/>
</svg></a></td> --%>
 <td class="merchant-item" size="50px">${order.status} </td>
        </tr>
        </c:forEach>
    </tbody>
  </table>
</div>