package shopbae.food.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.service.IMerchantService;
import shopbae.food.service.IProductService;

@Controller
public class LoginRegisterHomeController {
	@Autowired
	IMerchantService merchantService;
	@Autowired
	IProductService productService;
	@GetMapping("/login")
	public String showLoginForm(Model model) {
		model.addAttribute("page","login.jsp");
		return "account/account-layout";

	}
	@GetMapping("/register-user")
	public String showRegisUser(Model model) {
		model.addAttribute("page","register-user.jsp");
		return "account/account-layout";
	}
	@GetMapping("/register-merchant")
	public String showRegisMerchant(Model model) {
		model.addAttribute("page","register-merchant.jsp");
		return "account/account-layout";
	}
	@GetMapping
	public String homepage(Model model) {
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("active"));
		model.addAttribute("page","home.jsp");
		return "page/home-layout";
	}
	@GetMapping("/all-merchant")
	public String allMerchant( Model model) {
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("active"));
		model.addAttribute("page","all-merchant-list.jsp");
		return "page/home-layout";
	}
	@GetMapping("/merchant-detail/{id}")
	public String merchantDetail(@PathVariable Long id, Model model) {
		model.addAttribute("merchant",merchantService.findById(id));
		model.addAttribute("products",productService.getAllByDeleteFlagTrueAndMerchant(id));
		System.out.println(productService.getAllByDeleteFlagTrueAndMerchant(id));
		model.addAttribute("page","merchant-detail.jsp");
		return "page/home-layout";
	}
	@GetMapping("/merchant-detail/{id}/search")
	public String merchant(@PathVariable Long id,@RequestParam String name, Model model) {
		model.addAttribute("merchant",merchantService.findById(id));
		model.addAttribute("products",productService.fAllByDeleFlagTAndMerAndNameContai(id, name));
		model.addAttribute("page","merchant-detail.jsp");
		return "page/home-layout";
	}
	
}
