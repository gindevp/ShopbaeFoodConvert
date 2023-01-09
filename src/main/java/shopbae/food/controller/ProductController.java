package shopbae.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("/")
	public String product() {
		return "merchant/merchant-page";
	}
	@RequestMapping("/add")
	public String productAdd() {
		return "merchant/product-add";
	}
	
}
