 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="${ pageContext.request.contextPath }/static/js/sweetalert.js"></script>

 <!--form login-->
    <div class="now-login">
      <div class="content">
        <div class="title"><spring:message code="login"/></div>
        <div class="login-via">
          <div class="item phone"><span class="fas fa-mobile-alt"></span>Phone</div>
          <div class="item fb"><span class="fab fa-facebook-f"></span>Facebook</div>
          <div class="item plus"><i class="fab fa-google-plus-g"></i>Google</div>
        </div>
        <p class="text"><spring:message code="or_login"/></p>

        <!--        form login-->
        

      <%--   <p style="color:red">[[${session.SPRING_SECURITY_LAST_EXCEPTION.message}]]</p> --%>
        
   
        
        <form action="${ pageContext.request.contextPath }/login" method="post">
          <div class="form-login-input">
             <span style="">${mess}</span>
            <div class="field-group">
              <div class="input-group">
              <i class="far fa-user"></i>
              <input type="text" name="userName" placeholder="<spring:message code="name_login"/>">
              </div>
            </div>
             <div class="field-group">
                <div class="input-group">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" placeholder="<spring:message code="pass"/>">
                </div>
             </div>
            <c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
    <!-- Display error message --> 
    
 <script>

 swal({
	  title: "<spring:message code="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}"/>",
	  text: "<spring:message code="Please"/>",
	  icon: "error",
	});
</script>
</c:if>
        
    

            <div class="form-group clearfix">
              <div class="float-left"><input type="checkbox" id="RememberMe" checked=""><label for="RememberMe"><spring:message code="save_login"/></label></div>
              <span class="float-right"><a href="${ pageContext.request.contextPath }/forgotpass"><spring:message code="forgotpass"/></a></span>
            </div>
            <button class="btn btn-block btn-submit" type="submit"><spring:message code="login"/></button>
            <a href="${ pageContext.request.contextPath }/register/user" class="btn btn-block btn-dark"><spring:message code="register"/></a>
          </div>
          <br>

        </form>


      </div>
    </div>
    <!-- end form login -->