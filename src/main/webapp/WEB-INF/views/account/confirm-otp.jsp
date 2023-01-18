 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="now-login">
      <div class="content">
        <div class="title">Xác thực và đổi mật khẩu</div>
     
        <p class="text">Hãy nhập thông tin</p>

        <!--        form login-->
        <form action="${ pageContext.request.contextPath }/forgotpass/confirm" method="post">
          <div class="form-login-input">
            <div class="field-group">
              <div class="input-group"><i class="far fa-clock"></i><input class="input100"  type="text" name="otp" placeholder="Mời nhập mã otp"  ></div>

              <div class="input-group"><i class="fas fa-lock"></i><input class="input100"  type="password" name="pass" placeholder="Mời nhập mật khẩu mới" ></div>
            </div>
            <button class="btn btn-danger" >Gửi</button>
            &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp;
            &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <button [disabled]="disable" (click)="sotp()" >Gửi lại mã</button>
          </div>

          <!--            <div class="form-group clearfix">-->
          <!--              <div class="float-left"><input type="checkbox" id="RememberMe" checked=""><label for="RememberMe">Lưu-->
          <!--                thông tin đăng nhập</label></div><span class="float-right"><a routerLink="/forgotPassword">Quên mật-->
          <!--                                    khẩu?</a></span>-->
          <!--            </div><button class="btn btn-block btn-submit">Đăng nhập</button>-->
          <!--            {{message}}-->
          <!--            <a routerLink="/register" class="btn btn-block btn-dark">Đăng ký</a>-->
          <!--          </div><br>-->

        </form>

        <div class="login-mess-policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng
          nhập hoặc đăng ký, bạn đồng ý với <a
            style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank"
            href="https://shopeefood.vn/gioi-thieu#footer-bottom">Chính sách quy định của Foody</a></div>
      </div>
    </div>