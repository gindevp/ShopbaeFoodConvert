package shopbae.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.Account;
import shopbae.food.service.IAccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired 
	private IAccountService accountService;
	@RequestMapping("/")
	public String find(Model model) {
		model.addAttribute("account",accountService.findAll());
		return "account/account-list";
	}
	@GetMapping("/login")
	public String loginForm() {
		return "account/login";
	}
	@GetMapping("/add")
	public String add(Model model) {
		model.addAttribute("account",new Account());
		return "account/account-save";
	}
	@RequestMapping("/update/{id}")
	  public String update(@PathVariable Long id, Model model) {
	    Account account = accountService.findById(id);
	    model.addAttribute("account", account);
	    return "account/account-update";
	  }
	  @PostMapping("/save")
	  public String doSave(@ModelAttribute("Account") Account account, Model model) {
	    accountService.save(account);
	    model.addAttribute("account", accountService.findAll());
	    return "redirect:/";
	  }
	  @PostMapping("/update")
	  public String doUpdate(@ModelAttribute("Account") Account account, Model model) {
	    accountService.update(account);
	    model.addAttribute("account", accountService.findAll());
	    return "redirect:/";
	  }
	  
	  @RequestMapping("/delete/{id}")
	  public String doDeleter(@PathVariable Long id, Model model) {
		  Account a= new Account();
		  a.setId(id);
	    accountService.delete(a);
	    model.addAttribute("account", accountService.findAll());
	    return "redirect:/";
	  }
	  @GetMapping("/search")
	  public String findAccountByName(@RequestParam(name= "name") String name, Model model) {
	    List<Account> account = accountService.findByName(name);
	    model.addAttribute("account", account);
	    return "account/account-list";
	  }
}
