package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.service.IProductService;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
	@Autowired
	IProductService productService;
@RequestMapping("/")
public String merchant(Model model) {
	model.addAttribute("products",productService.findAll());
	return "merchant/merchant-page";
}
}
