<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
<div class="table-responsive container">
  <table class="table table-striped table-sm">
  
    <tr style="text-align: center">
      <th scope="col">Stt</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Tên</th>
      <th scope="col">Điện thoại</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col" >Thời gian</th>
      <th scope="col" colspan="2">Mở Khóa</th>
    </tr>
  
    
    <c:forEach var="merchant" items="${merchants}">
    <tr >
      <td>${merchant.id}</td>
      <td><img src="${ pageContext.request.contextPath }/static/storage/${merchant.avatar}"  style="height: 40px;
    width: 40px;
    border-radius: 50%;"></td>
      <td class="merchant-item">${merchant.name}</td>
      <td class="merchant-item">${merchant.phone}</td>
      <td class="merchant-item">${merchant.address}</td>
      <td class="merchant-item" size="50px">Mở:${merchant.openTime}  Đóng:${merchant.closeTime}</td>
<!--      <td class="merchant-item">{{merchant.closeTime}}</td>-->
      <td class="action-icon"><a href="${ pageContext.request.contextPath }/admin/merchant/unblock/${merchant.id}"><i class="fa-regular fas fa-unlock"></i></a></td>
    </tr>
</c:forEach>
  </table>
  <div class="txt-center mt-2"><button (click)="plus()" class="btn-none btn-load-more link"><span
    class="pr-1">Xem thêm</span><i class="fas fa-redo font12 "></i></button></div>
</div>