 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="now-login">
      <div class="content">
        <div class="title">Đăng ký người dùng</div>
        <div class="login-via">
          <div class="item phone"><span class="fas fa-mobile-alt"></span>Số điện thoại</div>
          <div class="item fb"><span class="fab fa-facebook-f"></span>Facebook</div>
          <form id="google-login-form" action="https://accounts.google.com/o/oauth2/v2/auth" method="GET"><input
            type="hidden" name="client_id"
            value="229327170580-69v69v4s94p2tvf4qi3g0qb901b2pg99.apps.googleusercontent.com"><input
            type="hidden" name="redirect_uri" value="https://shopeefood.vn/account/login"><input type="hidden"
                                                                                                 name="scope"
                                                                                                 value="email profile openid"><input
            type="hidden" name="state" value="/"><input
            type="hidden" name="response_type" value="permission id_token"><input type="hidden"
                                                                                  name="fetch_basic_profile"
                                                                                  value="true"><input type="hidden"
                                                                                                      name="nonce"
                                                                                                      value="AO9thoqUvirPjVc4KOM61c001.snqMhG">
            <div class="item plus"><i class="fab fa-google-plus-g"></i>Google</div>
          </form>
        </div>
        <!--        <p class="text">Hoặc đăng nhập bằng tài khoản của bạn</p>-->
        <form:form action="${ pageContext.request.contextPath }/register/user" modelAttribute="accountRegisterDTO" method="post">
          <div class="form-login-input"><span style="color: red">${err}</span>
            <div class="field-group">
              <div class="input-group"><i class="far fa-user"></i><form:input type="text"
                                                                         placeholder="Tên đăng ký" value=""
                                                                         path="userName"></form:input>
          <form:errors path="userName" style="color: red"/>
                  
<!--                  <div [hidden]="!userName?.errors?.['pattern']">-->
<!--                    <p style="color: red"> Tên phải đúng định dạng</p>-->
<!--                  </div>-->
                </div>
              </div>
              <div class="field-group">
              <div class="input-group"><i class="fas fa-lock"></i><form:input type="password" placeholder="Mật khẩu"
                                                                         value="" path="password"></form:input>
                                                                         <form:errors path="password" style="color: red"/>
                <!-- <div *ngIf="!password?.valid && (password?.dirty || password?.touched)">
                  <div [hidden]="!password?.errors?.['required']">
                    <p style="color: red"> Mật khẩu không được trống </p>
                  </div>
                  <div [hidden]="!password?.errors?.['minlength']">
                    <p style="color: red"> Mật khẩu phải nhiều hơn 3 ký tự </p>
                  </div>
                </div> -->
              </div>
</div>
<div class="field-group">
              <div class="input-group"><i class="far fa-envelope"></i><form:input type="text" placeholder="Nhập email"
                                                                             value="" path="email"></form:input>
                                                                             <form:errors path="email" style="color: red"/>
                <!-- <div *ngIf="!email?.valid && (email?.dirty || email?.touched)">
                  <div [hidden]="!email?.errors?.['required']">
                    <p style="color: red"> Email không được trống </p>
                  </div>
                  <div [hidden]="!email?.errors?.['minlength']">
                    <p style="color: red"> Email phải nhiều hơn 3 ký tự </p>
                  </div>
                  <div [hidden]="!email?.errors?.['pattern']">
                    <p style="color: red"> Email phải đúng định dạng </p>
                  </div>

                </div> -->
                </div>
              </div>
              <div class="field-group">
              <div class="input-group"><i class="far fa-user"></i><form:input type="text"
                                                                         placeholder="Nhập tên chủ tài khoản"
                                                                         value="" path="name"></form:input>
                                                                         <form:errors path="name" style="color: red"/>
                <!-- <div *ngIf="!name?.valid && (name?.dirty || name?.touched)">
                  <div [hidden]="!name?.errors?.['required']">
                    <p style="color: red"> Tên không được trống </p>
                  </div>
                  <div [hidden]="!name?.errors?.['minlength']">
                    <p style="color: red"> Tên phải nhiều hơn 3 ký tự </p>
                  </div>
                </div> -->
                </div>
              </div>
              <div class="field-group">
              <div class="input-group"><i class="fas fa-phone"></i><form:input type="text" placeholder="Nhập số điện thoại"
                                                                          value="" path="phone"></form:input>
                                                                          <form:errors path="phone" style="color: red"/>
               <!--  <div *ngIf="!phone?.valid && (phone?.dirty || phone?.touched)">
                  <div [hidden]="!phone?.errors?.['required']">
                    <p style="color: red"> Số điện thoại không được trống </p>
                  </div>
                  <div [hidden]="!phone?.errors?.['minlength']">
                    <p style="color: red"> Số điện thoại phải nhiều hơn 9 ký tự </p>
                  </div><div [hidden]="!phone?.errors?.['pattern']">
                    <p style="color: red"> Số điện thoại không đúng định dạng </p>
                  </div>
                </div> -->
                </div>
              </div>
              <div class="field-group">
              <div class="input-group"><i class="fas fa-home"></i><form:input type="text" placeholder="Nhập địa chỉ"
                                                                         value="" path="address"></form:input>
                                                                         <form:errors path="address" style="color: red"/>
                <!-- <div *ngIf="!address?.valid && (address?.dirty || address?.touched)">
                  <div [hidden]="!address?.errors?.['required']">
                    <p style="color: red"> Địa chỉ không được trống </p>
                  </div>
                  <div [hidden]="!address?.errors?.['minlength']">
                    <p style="color: red"> Địa chỉ phải nhiều hơn 3 ký tự </p>
                  </div>
                </div> -->
              </div>
              </div>
            </div>
            <!--          <div class="form-group clearfix">-->
            <!--            <div class="float-left"><input type="checkbox" id="RememberMe" checked=""><label for="RememberMe">Lưu-->
            <!--              thông tin đăng nhập</label></div>-->
            <!--            <span class="float-right"><a href="/forgotPassword">Quên mật-->
            <!--                                    khẩu?</a></span>-->
            <!--          </div>-->
            <button class="btn btn-block btn-submit">Đăng ký</button>
          </div>
        </form:form>
        
        <br>
        <div class="login-mess-policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng
          nhập hoặc đăng ký, bạn đồng ý với <a
            style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank"
            href="https://shopeefood.vn/gioi-thieu#footer-bottom">Chính sách quy định của Foody</a></div>
      </div>
    </div>
    <!-- end form login -->