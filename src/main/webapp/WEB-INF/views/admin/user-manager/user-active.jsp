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
      <th scope="col" colspan="2">Khóa</th>
    </tr>
  
    
    <c:forEach var="merchant" items="${merchants}" varStatus="status">
    <c:if test="${merchant.id != 1 }">
    <tr style="text-align: center;">
      <td>${status.index+1}</td>
      <td><img src="${ pageContext.request.contextPath }/static/storage/${merchant.avatar}"  style="height: 40px;
    width: 40px;
    border-radius: 50%;"></td>
      <td class="merchant-item">${merchant.name}</td>
      <td class="merchant-item">${merchant.phone}</td>
      <td class="merchant-item">${merchant.address}</td>
<!--      <td class="merchant-item">{{merchant.closeTime}}</td>-->
      <td class="action-icon"><a href="${ pageContext.request.contextPath }/admin/user/block/${merchant.id}"><i class="btn btn-danger"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
</svg> Block</i></a></td>
    </tr>
    </c:if>
</c:forEach>
  </table>
  <div class="txt-center mt-2"><button (click)="plus()" class="btn-none btn-load-more link"><span
    class="pr-1">Xem thêm</span><i class="fas fa-redo font12 "></i></button></div>
</div>