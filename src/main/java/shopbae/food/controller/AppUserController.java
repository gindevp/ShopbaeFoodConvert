package shopbae.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.AppUser;
import shopbae.food.service.IAppUserService;



@Controller
@RequestMapping("/appuser")
public class AppUserController {
	@Autowired
	private IAppUserService appUserService;
	@GetMapping("/search")
	public String findUserByName(@RequestParam String name, Model model) {
		List<AppUser> appUsers = appUserService.findByName(name);
		model.addAttribute("appuser", appUsers);
		return "user/user-list";
	}
}
