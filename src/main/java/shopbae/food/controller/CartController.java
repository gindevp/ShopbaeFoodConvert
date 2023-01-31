package shopbae.food.controller;

import java.util.List;

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
import shopbae.food.model.Product;
import shopbae.food.repository.ICartRepository;
import shopbae.food.repository.IOrderRepository;
import shopbae.food.service.IAppUserService;
import shopbae.food.service.ICartService;
import shopbae.food.service.IMerchantService;
import shopbae.food.service.IOrderService;
import shopbae.food.service.IProductService;

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
		System.out.println((Long) session.getAttribute("merchantId"));
		List<Cart> cart1= cartService.findAllByUser(userId);
		model.addAttribute("products", cart1);
		double sum=0;
		for (Cart x : cart1) {
			sum+=x.getTotalPrice();
		}
		model.addAttribute("sum",sum);
		List<Order> orders= orderService.findByAppUserAndMer(userId,(Long) session.getAttribute("merchantId"));
		model.addAttribute("orders", orders);
		if(cart1.isEmpty()) {
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
		oder.setStatus("pending");
		oder.setTotalPrice(sum);
		oder.setAppUser(appUserService.findById(userId));
		oder.setMerchant_id(merchantId);
		oder.setDeliveryAddress(address);
//		orderService.save(oder);
		Long orderId=(Long) orderRepo.savee(oder);
		cartService.deletesByUser(userId);
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
}
