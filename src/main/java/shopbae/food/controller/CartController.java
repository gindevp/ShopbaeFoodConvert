package shopbae.food.controller;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.AppUser;
import shopbae.food.model.Cart;
import shopbae.food.model.Order;
import shopbae.food.model.OrderDetail;
import shopbae.food.model.Product;
import shopbae.food.repository.cart.ICartRepository;
import shopbae.food.repository.order.IOrderRepository;
import shopbae.food.service.cart.ICartService;
import shopbae.food.service.merchant.IMerchantService;
import shopbae.food.service.order.IOrderService;
import shopbae.food.service.orderDetail.IOrderDetailService;
import shopbae.food.service.product.IProductService;
import shopbae.food.service.user.IAppUserService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	IOrderRepository orderRepo;
	@Autowired
	ICartService cartService;
	@Autowired
	IProductService productService;
	@Autowired
	IAppUserService appUserService;
	@Autowired
	IOrderService orderService;
	@Autowired
	IOrderDetailService orderDetailService;

	@GetMapping("/product/{productid}/user/{userid}")
	public String cart(Model model, @PathVariable Long productid, @PathVariable Long userid, HttpSession session) {
		Cart cart = new Cart();
		AppUser apUser = appUserService.findById(userid);
		Product product = new Product();
		product.setId(productid);
		cart.setPrice(productService.findById(productid).getNewPrice());
		cart.setProduct(product);
		cart.setUser(apUser);
		cartService.addToCart(cart);
		return "redirect:/merchantp/detail/"+session.getAttribute("merchantId");
	}
	@GetMapping("/user/{userId}")
	public String userCart(Model model, @PathVariable Long userId, HttpSession session) {
		long merId=(long) session.getAttribute("merchantId");
		List<Cart> cart1= cartService.findAllByUser(userId);
		List<Cart> cart2= cart1.stream().filter(c-> c.getProduct().getMerchant().getId()==merId).collect(Collectors.toList());
		model.addAttribute("products", cart2);
		double sum=0;
		for (Cart x : cart2) {
			sum+=x.getTotalPrice();
		}
		model.addAttribute("sum",sum);
		List<Order> orders= orderService.findByAppUserAndMer(userId,(Long) session.getAttribute("merchantId"));
		model.addAttribute("orders", orders);
		if(cart2.isEmpty()) {
			model.addAttribute("message","khong co du lieu");
		}else {
			model.addAttribute("message","co du lieu");
		}
		model.addAttribute("page", "cart.jsp");
		return "page/home-layout";
	}
	
	@PostMapping("/order/user/{userId}/merchant/{merchantId}")
	public String oder(Model model,@PathVariable Long userId, @PathVariable Long merchantId, @RequestParam String note, String address, double sum) {
		Order oder= new Order();
		oder.setOrderdate(java.time.LocalDateTime.now());
		oder.setNote(note);
		oder.setStatus("cho xac nhan");
		oder.setTotalPrice(sum);
		oder.setAppUser(appUserService.findById(userId));
		oder.setMerchant_id(merchantId);
		oder.setDeliveryAddress(address);
		Long orderId= (Long) orderService.savee(oder);
		List<Cart> carts= cartService.findAllByUser(userId);
		System.out.println("cart by userId:"+carts);
		List<Cart> oderDetail= carts.stream().filter(a-> a.getProduct().getMerchant().getId()== (long) merchantId).collect(Collectors.toList());
		System.out.println("cart by userId and merId:"+oderDetail);
		for (Cart cart : oderDetail) {
			OrderDetail orderDetail= new OrderDetail();
			oder.setId(orderId);
			orderDetail.setOrder(oder);
			orderDetail.setProduct(cart.getProduct());
			orderDetail.setQuantity(cart.getQuantity());
			orderDetailService.save(orderDetail);
			cart.setDeleteFlag(false);
			cartService.update(cart);
		}
		
		return "redirect:/cart/user/"+userId;
	}
	@GetMapping("/delete/order/{orderId}/user/{userId}")
	public String deleteOrder(Model model,@PathVariable Long userId, @PathVariable Long orderId) {
		Order order= orderService.findById(orderId);
		order.setFlag(false);
		orderService.update(order);
		return "redirect:/cart/user/"+userId;
	}
	@GetMapping("/remove-item/{id}")
	public String removeItem(@PathVariable Long id, HttpSession session) {
		Cart cart= cartService.findByProductAndFlag(id);
		cart.setDeleteFlag(false);
		cartService.update(cart);
		Long userId= (Long) session.getAttribute("userId");
		return "redirect:/cart/user/"+userId;
	}
	@GetMapping("/received/{id}")
	public String received(@PathVariable Long id, HttpSession session) {
		Order order= orderService.findById(id);
		order.setStatus("nguoi mua da nhan");
		orderService.update(order);
		Long userId= (Long) session.getAttribute("userId");
		return "redirect:/cart/user/"+userId;
	}
	@GetMapping("/receiveds/{id}")
	public String receiveds(Model model,@PathVariable Long id, HttpSession session) {
		Order order = orderService.findById(id);  
		order.setStatus("nguoi mua da nhan"); 
		orderService.update(order);
		Long userId= (Long) session.getAttribute("userId");
		return "redirect:/cart/user/"+userId;
	}
	@GetMapping("/refused/{id}")
	public String refused(Model model,@PathVariable Long id, HttpSession session) {
		Order order = orderService.findById(id);
		order.setStatus("nguoi mua tu choi");
		orderService.update(order);
		Long userId= (Long) session.getAttribute("userId");
		return "redirect:/cart/user/"+userId;
	}
}
