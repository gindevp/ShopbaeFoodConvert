package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.model.Account;
import shopbae.food.service.IAccountService;

@Controller
//@RequestMapping("/account")
public class AccountController {
	@Autowired 
	private IAccountService accountService;
	@RequestMapping("/")
	public String find(Model model) {
		Account a= new Account();
		a.setId(23L);
		accountService.delete(a);
		model.addAttribute("account",accountService.findAll());
		return "view";
	}
}
