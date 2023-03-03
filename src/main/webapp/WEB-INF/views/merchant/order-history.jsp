<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<body onload="connect()">
<div class="table-responsive container">
  <table class="table table-sm">
    <thead style=" background-color: #fb3b3b82;text-align: center; color: white;">
    <tr>
      <th scope="col" style=" padding: 10px;border:5px solid white">Stt</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Ảnh</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Người đặt </th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Điện thoại</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Địa chỉ</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Thời gian</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Ghi chú</th>
      <th scope="col" style=" padding: 10px;border:5px solid white">Chi tiết</th>
       <th scope="col" style="padding: 10px;border:5px solid white">Trạng thái</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders }" varStatus="status">
        <tr >
          <td style=" border:5px solid white">${status.index+1}</td>
          <td style=" border:5px solid white"><img src="${ pageContext.request.contextPath }/static/storage/${order.appUser.avatar}" alt="" style="height: 40px;
        width: 40px;
        border-radius: 50%;"></td>
          <td style=" border:5px solid white" class="merchant-item">${order.appUser.name}</td>
          <td style=" border:5px solid white" class="merchant-item">${order.appUser.phone}</td>
          <td style=" border:5px solid white" class="merchant-item">${order.deliveryAddress}</td>
          <td style=" border:5px solid white" class="merchant-item" size="50px">${order.orderdate} </td>
          <td style=" border:5px solid white" class="merchant-item" size="50px">${order.note} </td>
          <td style=" border:5px solid white" class="action-icon show-detail"><a href="${ pageContext.request.contextPath }/merchant/order/detail/${order.id}" class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-arrow-up-right-square-fill" viewBox="0 0 16 16">
  <path d="M14 0a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12zM5.904 10.803 10 6.707v2.768a.5.5 0 0 0 1 0V5.5a.5.5 0 0 0-.5-.5H6.525a.5.5 0 1 0 0 1h2.768l-4.096 4.096a.5.5 0 0 0 .707.707z"/>
</svg></a></td>
          <%-- <td class="action-icon show-detail"><a href="/ShobaeFood/merchant/order/received/${order.id}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-left-square" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 2a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2zM0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.096 3.146a.5.5 0 1 1 .707.708L6.707 9.95h2.768a.5.5 0 1 1 0 1H5.5a.5.5 0 0 1-.5-.5V6.475a.5.5 0 1 1 1 0v2.768l4.096-4.097z"/>
</svg></a></td> --%>
 <td class="merchant-item" size="50px" style=" border:5px solid white"><spring:message code="${order.status}"/> </td>
        </tr>
        </c:forEach>
    </tbody>
  </table>
</div>
</body>