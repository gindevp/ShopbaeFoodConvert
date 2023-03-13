<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<link rel="stylesheet" href="${ pageContext.request.contextPath }/static/css/bootstrap.css">
<style>
<%@include file="/static/css/login.css"%>
</style>

       <div style="    border-radius: 20px;
    margin-left: 340px;
    margin-right: 340px;
    background-color: #2827271a"><h1 style="margin-left: 250px;margin-top: 50px">Favorite</h1>
       <table style="width: 100%" class="" >
                  <c:forEach var="product" items="${products}">
                  <tr title="Kho còn ${product.quantity}"><td><div class="item-restaurant-row "
                       style="height: 88px; left: 0px; position: inherit; top: 144px; width: 100%;"
                               style="height: 81px; left: 0px;  top: 50px; width: 100%;">
                    <div class="row" style="width: 750px;     margin-left: -3px;">
                      <div class="col-auto item-restaurant-img" >
                        <button class="inline"><img
                          src="${ pageContext.request.contextPath }/image/${product.image}"
                          alt="Set lẩu tok full topping 2-3 người ăn" width="60" height="60"></button>
                      </div>
                      <div class="col item-restaurant-info"><h2 class="item-restaurant-name">${product.name}</h2>
                        <div class="item-restaurant-desc">${product.shortDescription}
                        </div>
                      </div>
                      <div class="col-auto item-restaurant-more" style="margin-right: 161px; flex-wrap: wrap-reverse">
                        <div class="row ">
                          <div class="col-auto product-price">
                            <div class="old-price">${product.oldPrice}<span
                              style="font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;">đ</span>
                            </div>
                            <div class="current-price">${product.newPrice}<span
                              style="font-weight: 400;position: relative;top: -9px;font-size: 10px;right: 0;">đ</span>
                            </div>
                          </div>
                          <a >
                          <div class="col-auto adding-food-cart txt-right">
                          
                            <div class="btn-adding" title="Đi đến cửa hàng có món ăn này"
                            <c:if test="${statusMerchant=='false'||role=='merchant'||role=='admin'|| product.quantity==0}">
                            style="pointer-events: none;opacity: 0.5;"
                            </c:if>
                            onclick="checkoutMer(${product.merchant.id})"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-shop" viewBox="0 0 16 16">
  <path d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
</svg></div>
                          </div></a>
                        </div>
                      </div>
                    </div>
                  </div>
                  </td>
                    </tr>
                  </c:forEach>
                    <br>
                    <br>
                    <br>
<!--                  end for-->
                  </table>
</div>
<script>
function checkoutMer(mer_id) {
	swal({
		  title: "Bạn có chắc muốn đến gian hàng không",
		  text: "Ấn ok để đến gian hàng chứa sản phẩm này",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		
			        	window.location.replace("/ShobaeFood/merchantp/detail/"+mer_id)
			
			       
		  } else {
		    swal("Bạn chọn không!");
		  }
		});
}	

</script>
