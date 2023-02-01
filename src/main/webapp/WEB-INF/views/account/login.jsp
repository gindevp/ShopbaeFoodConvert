 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

 <!--form login-->
    <div class="now-login">
      <div class="content">
        <div class="title">Đăng nhập</div>
        <div class="login-via">
          <div class="item phone"><span class="fas fa-mobile-alt"></span>Số điện thoại</div>
          <div class="item fb"><span class="fab fa-facebook-f"></span>Facebook</div>
          <div class="item plus"><i class="fab fa-google-plus-g"></i>Google</div>
        </div>
        <p class="text">Hoặc đăng nhập bằng tài khoản của bạn</p>

        <!--        form login-->
        

      <%--   <p style="color:red">[[${session.SPRING_SECURITY_LAST_EXCEPTION.message}]]</p> --%>
        
   
        
        <form action="${ pageContext.request.contextPath }/login" method="post">
          <div class="form-login-input">
             <span style="">${mess}</span>
            <div class="field-group">
              <div class="input-group">
              <i class="far fa-user"></i>
              <input type="text" name="userName" placeholder="Tên đăng nhập">
              </div>
            </div>
             <div class="field-group">
                <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="Mật khẩu">
                </div>
             </div>
            <c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
    <!-- Display error message --> 
    <p style="color:red">${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</p>
 <script>

 swal({
	  title: "${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}",
	  text: "Hãy nhập lại đi nào!",
	  icon: "error",
	});
</script>
</c:if>
        
    

            <div class="form-group clearfix">
              <div class="float-left"><input type="checkbox" id="RememberMe" checked=""><label for="RememberMe">Lưu
                thông tin đăng nhập</label></div>
              <span class="float-right"><a href="${ pageContext.request.contextPath }/forgotpass">Quên mật
                                    khẩu?</a></span>
            </div>
            <button class="btn btn-block btn-submit" type="submit">Đăng nhập</button>

         <!--    <a th:href="@{/register/merchant}" class="btn btn-block btn-dark">Đăng ký</a> -->
            <a href="${ pageContext.request.contextPath }/register/user" class="btn btn-block btn-dark">Đăng ký</a>
          </div>
          <br>

        </form>

        <div class="login-mess-policy">Chúng tôi không sử dụng thông tin của bạn với bất kỳ mục đích nào. Bằng cách đăng
          nhập hoặc đăng ký, bạn đồng ý với <a
            style="color: #0495ba; border-bottom: 2px solid; text-decoration: none !important;" target="_blank"
            href="https://shopeefood.vn/gioi-thieu#footer-bottom">Chính sách quy định của Foody</a></div>
      </div>
    </div>
    <!-- end form login -->