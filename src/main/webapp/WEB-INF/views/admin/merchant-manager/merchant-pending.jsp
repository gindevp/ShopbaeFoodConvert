<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
<div class="table-responsive container">
  <table class="table table-striped table-sm">
  
    <tr style="text-align: center; background-color: #f16464">
      <th scope="col">Stt</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Tên</th>
      <th scope="col">Điện thoại</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col" >Thời gian</th>
      <th scope="col" colspan="2">Hành động</th>
    </tr>
  
    
    <c:forEach var="merchant" items="${merchants}" varStatus="status">
    <tr style="text-align: center;" >
      <td>${status.index+1}</td>
      <td><img src="${ pageContext.request.contextPath }/static/storage/${merchant.avatar}"  style="height: 40px;
    width: 40px;
    border-radius: 50%;"></td>
      <td class="merchant-item">${merchant.name}</td>
      <td class="merchant-item">${merchant.phone}</td>
      <td class="merchant-item">${merchant.address}</td>
      <td class="merchant-item" size="50px">Mở:${merchant.openTime}  Đóng:${merchant.closeTime}</td>
<!--      <td class="merchant-item">{{merchant.closeTime}}</td>-->
      <td class="action-icon" ><a class="btn btn-danger" href="${ pageContext.request.contextPath }/admin/merchant/active/${merchant.id}"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-check-square-fill" viewBox="0 0 16 16">
  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm10.03 4.97a.75.75 0 0 1 .011 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.75.75 0 0 1 1.08-.022z"/>
</svg></i> OK</td></a>
      <td class="action-icon" ><a class="btn btn-danger" href="${ pageContext.request.contextPath }/admin/merchant/refuse/${merchant.id}"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-x-square-fill" viewBox="0 0 16 16">
  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
</svg></i> NO</td></a>
    </tr>
</c:forEach>
<tr id="add"></tr>
  </table>
  <div class="txt-center mt-2"><button (click)="plus()" class="btn-none btn-load-more link"><span
    class="pr-1">Xem thêm</span><i class="fas fa-redo font12 "></i></button></div>
</div>