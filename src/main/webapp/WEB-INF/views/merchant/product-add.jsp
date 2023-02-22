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
<form:form action="save" method="POST"
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

<a class="btn btn-dark" href="${ pageContext.request.contextPath }/merchant/product" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-90deg-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
</svg> Hủy</a>

&nbsp;
  <button class="btn btn-danger" type="submit" onclick="sw()"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square-dotted" viewBox="0 0 16 16">
  <path d="M2.5 0c-.166 0-.33.016-.487.048l.194.98A1.51 1.51 0 0 1 2.5 1h.458V0H2.5zm2.292 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zm1.833 0h-.916v1h.916V0zm1.834 0h-.917v1h.917V0zm1.833 0h-.917v1h.917V0zM13.5 0h-.458v1h.458c.1 0 .199.01.293.029l.194-.981A2.51 2.51 0 0 0 13.5 0zm2.079 1.11a2.511 2.511 0 0 0-.69-.689l-.556.831c.164.11.305.251.415.415l.83-.556zM1.11.421a2.511 2.511 0 0 0-.689.69l.831.556c.11-.164.251-.305.415-.415L1.11.422zM16 2.5c0-.166-.016-.33-.048-.487l-.98.194c.018.094.028.192.028.293v.458h1V2.5zM.048 2.013A2.51 2.51 0 0 0 0 2.5v.458h1V2.5c0-.1.01-.199.029-.293l-.981-.194zM0 3.875v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 5.708v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zM0 7.542v.916h1v-.916H0zm15 .916h1v-.916h-1v.916zM0 9.375v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .916v.917h1v-.917H0zm16 .917v-.917h-1v.917h1zm-16 .917v.458c0 .166.016.33.048.487l.98-.194A1.51 1.51 0 0 1 1 13.5v-.458H0zm16 .458v-.458h-1v.458c0 .1-.01.199-.029.293l.981.194c.032-.158.048-.32.048-.487zM.421 14.89c.183.272.417.506.69.689l.556-.831a1.51 1.51 0 0 1-.415-.415l-.83.556zm14.469.689c.272-.183.506-.417.689-.69l-.831-.556c-.11.164-.251.305-.415.415l.556.83zm-12.877.373c.158.032.32.048.487.048h.458v-1H2.5c-.1 0-.199-.01-.293-.029l-.194.981zM13.5 16c.166 0 .33-.016.487-.048l-.194-.98A1.51 1.51 0 0 1 13.5 15h-.458v1h.458zm-9.625 0h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zm1.834-1v1h.916v-1h-.916zm1.833 1h.917v-1h-.917v1zm1.833 0h.917v-1h-.917v1zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
</svg> Thêm</button>
</form:form>

</body>
</html>
<script type="text/javascript">
function sw() {
	title: "Thêm thành công",
	  icon: "success",
}
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js">
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>