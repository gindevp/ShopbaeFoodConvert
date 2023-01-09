<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<form [formGroup]="createForm" (ngSubmit)="create()" class="container" >
  <div class="mb-3 row">
    <label for="name" class="col-sm-2 col-form-label">Tên</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" formControlName="name"><br>
      <div *ngIf="!name?.valid && (name?.dirty || name?.touched)">
        <div [hidden]="!name?.errors?.['required']">
          <p style="color: red"> Tên không được trống </p>
        </div>
        <div [hidden]="!name?.errors?.['minlength']">
          <p style="color: red"> Tên phải nhiều hơn 3 ký tự </p>
        </div>
      </div>
        <!--    <div [hidden]="!name?.errors?.['pattern']">-->
        <!--      <p style="color: red"> Tên chữ không được dùng ký tự khác  </p>-->
        <!--    </div>-->

    </div>

  </div>
  <div class="mb-3 row">
    <label for="customFile" class="col-sm-2 col-form-label">Thêm ảnh</label>
    <div class="col-sm-10">
      <input type="file" class="form-control" id="customFile" #fileUploader (change)="showPreview($event)"/><br>
      <img [src]="imgSrc" class="img" height="125" width="100" alt="Img" (click)="fileUploader.click()"><br>
    </div>
  </div>
  <div class="mb-3 row">
    <label for="newPrice" class="col-sm-2 col-form-label">Giá mới</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="newPrice" formControlName="newPrice"><br>
      <div *ngIf="!newPrice?.valid && (newPrice?.dirty || newPrice?.touched)">
        <div [hidden]="!newPrice?.errors?.['required']">
          <p style="color: red">Giá mới không được trống </p>
        </div>
      </div>
    </div>
  </div>

  <div class="mb-3 row">
    <label for="oldPrice" class="col-sm-2 col-form-label">Giá cũ</label>
    <div class="col-sm-10">
      <input type="number" class="form-control" id="oldPrice" formControlName="oldPrice"><br>
      <div *ngIf="!oldPrice?.valid && (oldPrice?.dirty || oldPrice?.touched)">
        <div [hidden]="!oldPrice?.errors?.['required']">
          <p style="color: red">Giá cũ không được trống </p>
        </div>
      </div>
    </div>
  </div>

  <div class="mb-3 row">
    <label for="shortDescription" class="col-sm-2 col-form-label">Mô tả</label>
    <div class="col-sm-10">
      <textarea type="text" rows="5" class="form-control" id="shortDescription" formControlName="shortDescription"></textarea><br>
      <div *ngIf="!shortDescription?.valid && (shortDescription?.dirty || shortDescription?.touched)">
        <div [hidden]="!shortDescription?.errors?.['required']">
          <p style="color: red"> Mô tả không được trống </p>
        </div>
        <div [hidden]="!shortDescription?.errors?.['minlength']">
          <p style="color: red"> Mô tả ít nhất có 3 ký tự </p>
        </div>
    </div>
  </div>

<!--    <div [hidden]="!shortDescription?.errors?.['pattern']">-->
<!--      <p style="color: red"> Only characters are allowed </p>-->
<!--    </div>-->
  </div>


  <button class="btn btn-dark" routerLink="/merchant/product-list">Hủy</button>
&nbsp;
  <button class="btn btn-danger" [disabled]="disable">Thêm</button>
</form>

</body>
</html>