package shopbae.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.Merchant;
import shopbae.food.service.IMerchantService;
import shopbae.food.service.IProductService;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	@Autowired
	IProductService productService;
	@Autowired
	IMerchantService merchantService;

	@RequestMapping("/")
	public String merchant(Model model) {
		model.addAttribute(merchantService.getAllByMerchantStatus("active"));
		return "merchant/merchant-page";
	}

	@GetMapping("/search")
	public String findMerchantByName(@RequestParam String name, Model model) {
		List<Merchant> merchant = merchantService.findAllMerchantAndNameContainer(name);
		model.addAttribute("merchant", merchant);
		return "merchant/merchant-list";
	}
	@GetMapping("/dashboard")
	public String chart( Model model) {
		model.addAttribute("page","dashboard.jsp");
		return "merchant/merchant-layout";
	}
	@GetMapping("/merchant-detail")
	public String info( Model model) {
		model.addAttribute("page","merchant-info.jsp");
		return "merchant/merchant-layout";
	}
}
