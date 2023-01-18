package shopbae.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {
@GetMapping
public String cart(Model model) {
	model.addAttribute("page","cart.jsp");
	return "page/home-layout";
}
}
