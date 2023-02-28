<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="connect()">
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<form:form action="${ pageContext.request.contextPath }/merchant/product/edit/save" method="POST"
    modelAttribute="productForm" class="container" enctype="multipart/form-data">

  
<form:input path="id" type="hidden"/>
  <div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label">Tên</label>
    <div class="col-sm-10">
       <form:input path="name" type="text" class="form-control" id="name" /> <br/>
      <!-- <div *ngIf="!name?.valid && (name?.dirty || name?.touched)">
        <div [hidden]="!name?.errors?.['required']">
          <p style="color: red"> Tên không được trống </p>
        </div>
        <div [hidden]="!name?.errors?.['minlength']">
          <p style="color: red"> Tên phải nhiều hơn 3 ký tự </p>
        </div>
      </div>
           <div [hidden]="!name?.errors?.['pattern']">
             <p style="color: red"> Tên chữ không được dùng ký tự khác  </p>
           </div> -->

    </div>

  </div>
  <div class="mb-3 row">
    <label for="customFile" class="col-sm-2 col-form-label">Thêm ảnh</label>
    <div class="col-sm-10">
      <form:input path="image" type="file" class="form-control" id="customFile"/><br>
      
    </div>
  </div>
  <div class="mb-3 row">
    <label for="newPrice" class="col-sm-2 col-form-label">Giá mới</label>
    <div class="col-sm-10">
      <form:input path="newPrice" type="number" class="form-control" id="newPrice"/>
      <!-- <div *ngIf="!newPrice?.valid && (newPrice?.dirty || newPrice?.touched)">
        <div [hidden]="!newPrice?.errors?.['required']">
          <p style="color: red">Giá mới không được trống </p>
        </div>
      </div> -->
    </div>
  </div>

  <div class="mb-3 row">
    <label for="oldPrice" class="col-sm-2 col-form-label">Giá cũ</label>
    <div class="col-sm-10">
      <form:input path="oldPrice" type="number" class="form-control" id="oldPrice"/>
      <!-- <div *ngIf="!oldPrice?.valid && (oldPrice?.dirty || oldPrice?.touched)">
        <div [hidden]="!oldPrice?.errors?.['required']">
          <p style="color: red">Giá cũ không được trống </p>
        </div>
      </div> -->
    </div>
  </div>

  <div class="mb-3 row">
    <label for="shortDescription" class="col-sm-2 col-form-label">Mô tả</label>
    <div class="col-sm-10">
      <form:textarea path="shortDescription" type="text" rows="5" class="form-control" id="shortDescription" /><br/> <br/>
      <!-- <div *ngIf="!shortDescription?.valid && (shortDescription?.dirty || shortDescription?.touched)">
        <div [hidden]="!shortDescription?.errors?.['required']">
          <p style="color: red"> Mô tả không được trống </p>
        </div>
        <div [hidden]="!shortDescription?.errors?.['minlength']">
          <p style="color: red"> Mô tả ít nhất có 3 ký tự </p>
        </div>
    </div> -->
  </div>

   <!-- <div [hidden]="!shortDescription?.errors?.['pattern']">
     <p style="color: red"> Only characters are allowed </p>
   </div> -->
  </div> 

 <a class="btn btn-dark" href='${ pageContext.request.contextPath }/merchant/product/'><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-90deg-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
</svg> Hủy</a>
&nbsp;
  <button class="btn btn-danger" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
  <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
</svg> Sửa</button>
</form:form>

</body>
</html>