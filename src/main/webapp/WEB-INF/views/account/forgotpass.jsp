 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="now-login">
      <div class="content">
        <div class="title">Quên mật khẩu</div>

        <p class="text">Hãy nhập địa chỉ tài khoản của bạn</p>

       
        <form action="${ pageContext.request.contextPath }/forgotpass" method="post">
          <div class="form-login-input">
            <div class="field-group">
              <div class="input-group"><i class="far fa-user"></i><input class="input100" id="username" type="text" name="username" placeholder="Tên tài khoản của bạn"  >

                </div>     
              </div><div class="g-recaptcha"
          data-sitekey="6LfkOOYkAAAAAIk_OSwp1hSH6DL0pfsEgNDvv6zg"></div><button class="btn btn-danger" >Gửi</button>        
           <span style="color: red">${messagee}</span> 
            </div>

        </form>

        <div class="login-mess-policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng
          nhập hoặc đăng ký, bạn đồng ý với <a
            style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank"
            href="https://shopeefood.vn/gioi-thieu#footer-bottom">Chính sách quy định của Foody</a></div>
      </div>
    </div>