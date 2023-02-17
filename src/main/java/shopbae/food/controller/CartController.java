package shopbae.food.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.Cart;
import shopbae.food.model.Order;
import shopbae.food.model.OrderDetail;
import shopbae.food.model.Product;
import shopbae.food.service.cart.ICartService;
import shopbae.food.service.order.IOrderService;
import shopbae.food.service.orderDetail.IOrderDetailService;
import shopbae.food.service.product.IProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	IOrderDetailService detailService;
	@Autowired
	ICartService cartService;
	@Autowired
	IProductService productService;
	@Autowired
	IOrderService orderService;
	@Autowired
	IOrderDetailService orderDetailService;
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	@Autowired
	private MessageSource messageSource;


	// Thêm rỏ hàng cho người mua
	@PostMapping("/product/{productid}/user/{userid}")
	public String cart(@PathVariable Long productid, @PathVariable Long userid, HttpSession session) {
		cartService.addCart(productid, userid);
		return "redirect:/merchantp/detail/" + session.getAttribute("merchantId");
	}

	// Chuyển sang trang cart detail và xem các thông tin về đơn hàng
	@GetMapping("/user/{userId}")
	public String userCart(Model model, @PathVariable Long userId, HttpSession session) {
		cartService.cartDetail(model, userId, session);
		return "page/home-layout";
	}

	// Đặt hàng
	@PostMapping("/order/user/{userId}/merchant/{merchantId}")
	public String oder(Model model, @PathVariable Long userId, @PathVariable Long merchantId, @RequestParam String note,
			String address, double sum) {
		cartService.ordeing(userId, merchantId, note, address, sum);
		String status = messageSource.getMessage("order_new", null, LocaleContextHolder.getLocale());

		messagingTemplate.convertAndSend("/topic/ordeing", status);
		return "redirect:/cart/user/" + userId;
	}

	// Xóa đơn hàng theo userId
	@GetMapping("/delete/order/{orderId}/user/{userId}")
	public String deleteOrder(Model model, @PathVariable Long userId, @PathVariable Long orderId) {
		Order order = orderService.findById(orderId);
		order.setFlag(false);
		orderService.update(order);
		return "redirect:/cart/user/" + userId;
	}

	// Xóa rỏ hàng theo id sản phẩm
	@GetMapping("/remove-item/{id}")
	public String removeItem(@PathVariable Long id, HttpSession session) {
		Cart cart = cartService.findByProductAndFlag(id);
		cart.setDeleteFlag(false);
		cartService.update(cart);
		Long userId = (Long) session.getAttribute("userId");
		return "redirect:/cart/user/" + userId;
	}

	/*
	 * Xác nhận cho đơn hàng người mua đã nhận được và tăng số lượng sản phẩm đã
	 * được bán theo từng sản phẩm riêng biệt để thống kê cho người bán xem
	 */
	@GetMapping("/received/{id}")
	public String received(@PathVariable Long id, HttpSession session) {
		Order order = orderService.findById(id);
		List<OrderDetail> o = orderDetailService.findByOrder(id);
		for (OrderDetail orderDetail : o) {
			Product pro = orderDetail.getProduct();
			pro.setNumberOrder(orderDetail.getProduct().getNumberOrder() + orderDetail.getQuantity());
			productService.update(pro);
		}
		order.setStatus("USER_RECEIVED");
		orderService.update(order);
		Long userId = (Long) session.getAttribute("userId");
		return "redirect:/cart/user/" + userId;
	}

	// Xác nhận người mua đã từ chối nhận đơn hàng
	@GetMapping("/refuse/{id}")
	public String refused(Model model, @PathVariable Long id, HttpSession session) {
		Order order = orderService.findById(id);
		order.setStatus("USER_REFUSE");
		orderService.update(order);
		Long userId = (Long) session.getAttribute("userId");
		return "redirect:/cart/user/" + userId;
	}

	// Xem chi tiết đơn hàng ở phần lịch sử đơn, thông tin gồm những sản phẩm đã mua
	// giá tiền ...
	@GetMapping("/order/detail/{id}")
	public String oderDetail(Model model, @PathVariable Long id, HttpSession session) {
		List<OrderDetail> details = detailService.findByOrder(id);
		double sum = 0;
		for (OrderDetail orderDetail : details) {
			sum += orderDetail.getQuantity() * orderDetail.getProduct().getNewPrice();
		}
		session.setAttribute("orderId", id);
		model.addAttribute("sum", sum);
		model.addAttribute("oderDetail", details);
		model.addAttribute("page2", "order-detail.jsp");
		model.addAttribute("page", "cart.jsp");
		model.addAttribute("a", 2);
		model.addAttribute("message", "khong co du lieu");
		return "page/home-layout";
	}
}
