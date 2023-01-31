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
      <th scope="col">Duyệt</th>
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
          <td class="action-icon show-detail"><a href="/ShobaeFood/merchant/order/received/${order.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-through-heart" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2.854 15.854A.5.5 0 0 1 2 15.5V14H.5a.5.5 0 0 1-.354-.854l1.5-1.5A.5.5 0 0 1 2 11.5h1.793l.53-.53c-.771-.802-1.328-1.58-1.704-2.32-.798-1.575-.775-2.996-.213-4.092C3.426 2.565 6.18 1.809 8 3.233c1.25-.98 2.944-.928 4.212-.152L13.292 2 12.147.854A.5.5 0 0 1 12.5 0h3a.5.5 0 0 1 .5.5v3a.5.5 0 0 1-.854.354L14 2.707l-1.006 1.006c.236.248.44.531.6.845.562 1.096.585 2.517-.213 4.092-.793 1.563-2.395 3.288-5.105 5.08L8 13.912l-.276-.182a21.86 21.86 0 0 1-2.685-2.062l-.539.54V14a.5.5 0 0 1-.146.354l-1.5 1.5Zm2.893-4.894A20.419 20.419 0 0 0 8 12.71c2.456-1.666 3.827-3.207 4.489-4.512.679-1.34.607-2.42.215-3.185-.817-1.595-3.087-2.054-4.346-.761L8 4.62l-.358-.368c-1.259-1.293-3.53-.834-4.346.761-.392.766-.464 1.845.215 3.185.323.636.815 1.33 1.519 2.065l1.866-1.867a.5.5 0 1 1 .708.708L5.747 10.96Z"/>
</svg></a></td>
        </tr>
        </c:forEach>
    </tbody>
  </table>
</div>