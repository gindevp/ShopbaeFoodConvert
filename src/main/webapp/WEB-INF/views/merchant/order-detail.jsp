<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div class="table-responsive container">
	<strong><c:if test="${a==2}">
			<a class="btn btn-primary btn-orderDetail"
				href="${ pageContext.request.contextPath }/cart/user/${sessionScope.userId}"><svg
					xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-arrow-left-circle-fill"
					viewBox="0 0 16 16">
  <path
						d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
&nbsp;
</svg> <spring:message code="back_list_order" /></a>
		</c:if> <spring:message code="detail_order" /></strong> <br> &nbsp;
	<table class="table table-striped table-sm">
		<thead style="background-color: #f16464">
			<tr>
				<th scope="col">Stt</th>
				<th scope="col"><spring:message code="img" /></th>
				<th scope="col"><spring:message code="name" /></th>
				<th scope="col"><spring:message code="quantity" /></th>
				<th scope="col"><spring:message code="price" /></th>
				<th scope="col"><spring:message code="total_price" /></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="orderDetail" items="${oderDetail}" varStatus="status">
				<tr>
					<td>${status.index+1}</td>
					<td><img
						src="${ pageContext.request.contextPath }/image/${orderDetail.product.image}"
						alt="" style="height: 40px; width: 40px; border-radius: 50%;"></td>
					<td class="merchant-item">${orderDetail.product.name}</td>
					<td class="merchant-item">${orderDetail.quantity}</td>
					<td class="merchant-item">${orderDetail.product.newPrice}</td>
					<td class="merchant-item">${orderDetail.product.newPrice*orderDetail.quantity}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<h3 style="color: red">
		<spring:message code="total_price" />
		${sum} đ
	</h3>
	<c:if test="${sessionScope.a==1}">
		<a class="btn btn-warning btn-orderDetail"
			onclick="checkoutAndOpenNewPage('${ pageContext.request.contextPath }/merchant/order/received/${sessionScope.orderId}')"><svg
				xmlns="http://www.w3.org/2000/svg" width="23" height="23"
				fill="currentColor" class="bi bi-filetype-pdf" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
					d="M14 4.5V14a2 2 0 0 1-2 2h-1v-1h1a1 1 0 0 0 1-1V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v9H2V2a2 2 0 0 1 2-2h5.5L14 4.5ZM1.6 11.85H0v3.999h.791v-1.342h.803c.287 0 .531-.057.732-.173.203-.117.358-.275.463-.474a1.42 1.42 0 0 0 .161-.677c0-.25-.053-.476-.158-.677a1.176 1.176 0 0 0-.46-.477c-.2-.12-.443-.179-.732-.179Zm.545 1.333a.795.795 0 0 1-.085.38.574.574 0 0 1-.238.241.794.794 0 0 1-.375.082H.788V12.48h.66c.218 0 .389.06.512.181.123.122.185.296.185.522Zm1.217-1.333v3.999h1.46c.401 0 .734-.08.998-.237a1.45 1.45 0 0 0 .595-.689c.13-.3.196-.662.196-1.084 0-.42-.065-.778-.196-1.075a1.426 1.426 0 0 0-.589-.68c-.264-.156-.599-.234-1.005-.234H3.362Zm.791.645h.563c.248 0 .45.05.609.152a.89.89 0 0 1 .354.454c.079.201.118.452.118.753a2.3 2.3 0 0 1-.068.592 1.14 1.14 0 0 1-.196.422.8.8 0 0 1-.334.252 1.298 1.298 0 0 1-.483.082h-.563v-2.707Zm3.743 1.763v1.591h-.79V11.85h2.548v.653H7.896v1.117h1.606v.638H7.896Z" />
</svg> <spring:message code="receive" /></a>
		<a class="btn btn-danger btn-orderDetail"
			href="${ pageContext.request.contextPath }/merchant/order/refuse/${sessionScope.orderId}"><svg
				xmlns="http://www.w3.org/2000/svg" width="23" height="23"
				fill="currentColor" class="bi bi-x-octagon" viewBox="0 0 16 16">
  <path
					d="M4.54.146A.5.5 0 0 1 4.893 0h6.214a.5.5 0 0 1 .353.146l4.394 4.394a.5.5 0 0 1 .146.353v6.214a.5.5 0 0 1-.146.353l-4.394 4.394a.5.5 0 0 1-.353.146H4.893a.5.5 0 0 1-.353-.146L.146 11.46A.5.5 0 0 1 0 11.107V4.893a.5.5 0 0 1 .146-.353L4.54.146zM5.1 1 1 5.1v5.8L5.1 15h5.8l4.1-4.1V5.1L10.9 1H5.1z" />
  <path
					d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
</svg> <spring:message code="refuse" /></a>
	</c:if>
<c:if test="${status=='USER_RECEIVED'||status=='MERCHANT_REFUSE'||status=='USER_REFUSE' }">

<a class="btn btn-warning btn-orderDetail"
			onclick="reOrder(${orderId})"> <spring:message code="re-order" /></a>
</c:if>
</div>
<script>
	function checkout() {
		// xử lý khi request thành công
		window.location = "https://localhost:8443/ShobaeFood/merchant/order/received";
	}
	function checkoutAndOpenNewPage(url) {
		window.open(url, '_blank');
		setTimeout(() => {
			checkout();
		}, 1000);
	

	}
	function reOrder(order_id) {
		swal({
			  title: "Bạn có chắc muốn đặt lại",
			  text: "Nếu ok thì sẽ đặt lại nhé ???",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true
			})
			.then((willDelete) => {
			  if (willDelete) {
				  $.ajax({
					    type: "GET",
					    url: `/ShobaeFood/cart/re-order/`+order_id,
					     // dữ liệu cần gửi lên server
					    success: function (response) {
					      // xử lý khi request thành công
					    	// Lấy vị trí hiện tại của trang
					    	

					    	// Reload trang
					    	window.location = "https://localhost:8443/ShobaeFood/cart/user/${userId}";

					    	// Cuộn đến vị trí trước khi trang được tải lại
					    	
					    },
					    error: function (xhr, status, error) {
					      // xử lý khi request thất bại
					      console.log("Lỗi khi gửi request: " + error)
					    }
					  });
			  } else {
			    swal("Bạn chọn không!")
			  }
			});
	}
	
</script>