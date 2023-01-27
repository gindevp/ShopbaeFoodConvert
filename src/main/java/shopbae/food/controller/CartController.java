package shopbae.food.controller;

import java.util.List;

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
import shopbae.food.service.IAppUserService;
import shopbae.food.service.ICartService;
import shopbae.food.service.IMerchantService;
import shopbae.food.service.IOrderService;
import shopbae.food.service.IProductService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	ICartService cartService;
	@Autowired
	IProductService productService;
	@Autowired
	IAppUserService appUserService;
	@Autowired
	IOrderService orderService;

	@GetMapping("/product/{productid}/user/{userid}")
	public String cart(Model model, @PathVariable Long productid, @PathVariable Long userid) {
		Cart cart = new Cart();
		AppUser apUser = appUserService.findById(userid);
		Product product = new Product();
		product.setId(productid);
		cart.setPrice(productService.findById(productid).getNewPrice());
		cart.setProduct(product);
		cart.setUser(apUser);
		cartService.addToCart(cart);
		List<Cart> cart1= cartService.findAllByUser(userid);
		model.addAttribute("products", cart1);
		double sum=0;
		for (Cart x : cart1) {
			sum+=x.getTotalPrice();
		}
		model.addAttribute("sum",sum);
		if(cart1.isEmpty()) {
			model.addAttribute("message","khong co du lieu");
		}else {
			model.addAttribute("message","co du lieu");
		}
		model.addAttribute("page", "cart.jsp");
		return "page/home-layout";
	}
	@GetMapping("/user/{userid}")
	public String userCart(Model model, @PathVariable Long userid) {
		List<Cart> cart1= cartService.findAllByUser(userid);
		model.addAttribute("products", cart1);
		double sum=0;
		for (Cart x : cart1) {
			sum+=x.getTotalPrice();
		}
		model.addAttribute("sum",sum);
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
		orderService.save(oder);
		model.addAttribute("page", "cart.jsp");
		return "page/home-layout";
	}
}
