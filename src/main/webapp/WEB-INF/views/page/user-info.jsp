<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>

.desc{
  font-weight: 200;
  padding-bottom: 10px;
  border-bottom: 1px solid #ddd;
}

.title-strong{
  font-size: 20px;
  font-weight: 500;
}
.title{
  width: 158px;
}
.subtitle{
  word-wrap: 500px;
  word-wrap: break-word;
}

.shopee-icon svg{
  width: 30px;
  margin-right: 15px;
}
.shopee-icon-i{
  font-size: 25px;
  margin:0 15px 0 3px;
}
.account-profile-avatar{
  width: 30px;
  height: 30px;
  margin-left: 100px;
  border-radius: 50%;
}

.main{
  margin: 20px 0;
  display: flex;
}

.right-button{
  width: 90px;
  border: 1px solid #e7e7e7;
  background-color: white;
  border-radius: 3px;
  margin: 10px 20px 30px 400px;
}
.right-button-2{
  width: 90px;
  border: 1px solid #e7e7e7;
  background-color: white;
  border-radius: 3px;
  margin: 10px 20px 30px 0;
}

.info-input{
  border: none;
  margin-left: 100px;
  width: 300px;
  padding-left: 38px;
  border-radius: 3px;
}

.info-input:focus{
  outline-color: #f56043;
}


.account-profile-text{
  border: none;
  width: 260px;
  border-radius: 3px;
}
.account-profile-text:focus{
  outline-color: #f56043;
}
.info-input-opentime{
  width: 110px;
}
.info-input-closetime{
  width: 190px;
  padding-left: 10px;
  margin-left: 0 !important;
}
.img{
  border-radius: 4px;
  box-shadow:4px 4px 3px #ddd;
  margin:16px 100px;
}
</style>
<div class="container m-md-5 border" style=" width: 800px;">

  <div class="row">
    <div class="title title-strong">Tài Khoản</div>

  </div>
  <form:form modelAttribute="changeDTO" method="post" action="user-info" enctype="multipart/form-data">
  <div class="setting-card">
    <div class="setting-card-inner">
      <div class="">
        <div class="setting-card-row desc">
          <div class="main"><i data-v-0e576418="" class="icon shopee-icon">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
              <path
                d="M8 1a4 4 0 0 1 2.126 7.389A5.999 5.999 0 0 1 14 14v.5a.5.5 0 1 1-1 0V14a5 5 0 0 0-10 0v.5a.5.5 0 1 1-1 0V14a6.002 6.002 0 0 1 3.874-5.612A4 4 0 0 1 8 1zm0 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6z"></path>
            </svg>
          </i>
            <div class=" width-info ">
              <div class="title">Hồ sơ của tôi</div> <!----></div>
            <div class="info">
              <div class="account-profile">
                <div class="account-profile-item">
                  <label for="image">
                    
                  </label>
                  <form:input path="avatar" type="file" id="image"   ></form:input>
                  <form:input path="name" class="text" style="margin-left: 8px" ></form:input>

                </div>
              </div>
            </div>
            <div class="shopee-popover shopee-popover--light">
              <div class="shopee-popover__ref">
              </div>
            </div>
          </div>
        </div>



        <div class="setting-card-row desc">
          <div class="main">
            <i class="icon shopee-icon">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
              <path
                d="M13.473 10.365c2.035 1.298 1.368 2.653-1.092 4.015-2.337 1.294-5.135-.642-7.889-3.396l-.417-.424-.413-.436c-2.29-2.47-3.72-4.93-2.561-7.024C2.462.64 3.818-.027 5.116 2.007c1.119 1.754.801 2.468.432 3.065l-.176.28c-.278.463-.675.85-.566 1.316.045.192.47.876 1.596 2.027l.184.186c1.263 1.263 2.048 1.752 2.227 1.794.424.1.782-.22 1.19-.488l.478-.298.143-.08.151-.075c.546-.24 1.284-.271 2.698.63zm-2.355.313l-.107.06-.46.286-.387.263-.177.108c-.452.26-.897.372-1.402.254-.463-.109-1.3-.715-2.302-1.666l-.408-.4-.385-.393c-.959-1.005-1.545-1.812-1.658-2.295-.105-.448-.028-.85.173-1.25l.125-.226.305-.457.31-.498c.243-.424.234-.743-.263-1.58l-.21-.339-.137-.204c-.65-.91-1.106-.66-2.16 1.243-.808 1.462.13 3.498 2.813 6.275l.411.418c2.997 2.997 5.163 4.078 6.697 3.228l.37-.21c1.62-.94 1.73-1.376.776-2.018l-.286-.181c-.923-.566-1.3-.598-1.638-.418z"></path>
            </svg>
          </i>
            <div class=" width-info">
              <div class="title">Số điện thoại</div>
            </div>
            <div class="info">
              <form:input class="info-input" path="phone"></form:input>
            </div>
          </div>
        </div>

        <div class="setting-card-row desc ">
          <div class="main"><i class="icon shopee-icon">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
              <path
                d="M14 3a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h12zm0 1.6L8.277 8.416a.5.5 0 0 1-.467.047l-.087-.047L2 4.601V12h12V4.6zm-.903-.6H2.902L8 7.4 13.097 4z"></path>
            </svg>
          </i>
            <div class="width-info">
              <div class="title">Email</div>
            </div>
            <div class="info">
              <form:input class="info-input"  path="email"></form:input>
            </div>
          </div>
        </div>

        <div class="setting-card-row desc">
          <div class="main"><i class="icon shopee-icon">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16">
              <path fill-rule="evenodd"
                    d="M8 1a4 4 0 0 1 4 4v1h1a1 1 0 0 1 1 1v7a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h1V5a4 4 0 0 1 4-4zm5 6H3v7h10V7zM8 9a.5.5 0 0 1 .5.5v2a.5.5 0 1 1-1 0v-2A.5.5 0 0 1 8 9zm0-7a3 3 0 0 0-2.995 2.824L5 5v1h6V5a3 3 0 0 0-2.824-2.995L8 2z"></path>
            </svg>
          </i>
            <div class=" width-info">
              <div class="title">Mật khẩu đăng nhập</div>
            </div>
            <div class="info">
              <a class="info-input subtitle btn btn-dark" href="${ pageContext.request.contextPath }/change-pass"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-exclamation" viewBox="0 0 16 16">
                <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
                <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1.5a.5.5 0 0 1-1 0V11a.5.5 0 0 1 1 0Zm0 3a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z"/>
              </svg>  Nhận otp để đổi mật khẩu</a>
            </div>
          </div>
        </div>

 
      </div>
    </div>
  </div>
  <div style="align-content: center">
  <button   type="submit" class="right-button-2">
    <span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-save" viewBox="0 0 16 16">
  <path d="M2 1a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H9.5a1 1 0 0 0-1 1v7.293l2.646-2.647a.5.5 0 0 1 .708.708l-3.5 3.5a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L7.5 9.293V2a2 2 0 0 1 2-2H14a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h2.5a.5.5 0 0 1 0 1H2z"/>
</svg>   Lưu</span>
  </button></div>
</form:form>
<p style="color:red">${message }</p>
</div>