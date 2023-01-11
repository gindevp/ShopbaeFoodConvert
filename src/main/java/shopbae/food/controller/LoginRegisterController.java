package shopbae.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginRegisterController {
	@GetMapping(value = { "/login" })
	public String showLoginForm() {
		return "account/login";

	}
}
