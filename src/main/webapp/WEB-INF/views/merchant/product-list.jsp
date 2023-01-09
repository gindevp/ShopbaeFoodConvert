<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<div class="container">
  <div class="row" >
    <a type="button" class="col-2 btn btn-outline-danger" href="">
      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"></path>
        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"></path>
      </svg>
      Thêm sản phẩm
    </a>
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <form method="get" class="col-2 " role="search" style="width: 17% ; margin-left: 700px">
      <input type="search" class="form-control form-control-search" placeholder="Search..." aria-label="Search" name="name" (input)="search()" [(ngModel)]="nameSearch">
<!--      <button type=""-->
    </form>
  </div>


<div class="table-responsive">
  <table class="table table-striped table-sm">
    <thead>
    <tr>
      <th scope="col">Stt</th>
      <th scope="col">Ảnh</th>
      <th scope="col">Tên</th>
      <th scope="col">Giá sản phẩm</th>
      <th scope="col">Mô tả</th>
      <th scope="col" colspan="2">Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="p" items="${products}">
    <tr>
      <td>${p.id}</td>
      <td><img src="${p.image}" alt="" style="height: 40px;
    width: 40px;
    border-radius: 50%;"></td>
      <td class="merchant-item">${p.name}</td>
      <td class="merchant-item-price">${p.newPrice} đ</td>
      <td class="merchant-item">${p.shortDescription}</td>
      <td class="merchant-item-btn"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
</svg><i class="bi bi-pen-fill"></i></a></td>
      <td class="merchant-item-btn"><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
  <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
</svg><i class="fa-solid fa-trash action-icon"></i></a></td>
    </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</div>
<div class="txt-center mt-2"><button  class="btn-none btn-load-more link"><span
  class="pr-1">Xem thêm</span><i class="fas fa-redo font12 "></i></button></div>
