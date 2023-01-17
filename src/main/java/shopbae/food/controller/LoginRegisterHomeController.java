package shopbae.food.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.Account;
import shopbae.food.model.AppUser;
import shopbae.food.model.Merchant;
import shopbae.food.model.dto.AccountRegisterDTO;
import shopbae.food.service.IAccountService;
import shopbae.food.service.IAppUserService;
import shopbae.food.service.IMerchantService;
import shopbae.food.service.IProductService;
import shopbae.food.service.IRoleService;

@Controller
public class LoginRegisterHomeController {
	@Autowired
	IRoleService roleService;
	@Autowired
	IAccountService accountService;
	@Autowired
	IMerchantService merchantService;
	@Autowired
	IProductService productService;
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	IAppUserService userSevice;

	@GetMapping("/login")
	public String showLoginForm(Model model,HttpSession httpSession) {
		model.addAttribute("page", "login.jsp");
		return "account/account-layout";

	}

	@GetMapping("/register/user")
	public String showRegisUser(Model model) {
		model.addAttribute("page", "register-user.jsp");
		model.addAttribute("title", "Đăng ký người dùng");
		model.addAttribute("accountRegisterDTO", new AccountRegisterDTO());
		return "account/account-layout";
	}

	@GetMapping("/register/merchant")
	public String showRegisMerchant(Model model) {
		model.addAttribute("page", "register-merchant.jsp");
		model.addAttribute("title", "Đăng ký người bán");
		model.addAttribute("accountRegisterDTO", new AccountRegisterDTO());
		return "account/account-layout";
	}

	

	@GetMapping("/merchantp/all")
	public String allMerchant(Model model) {
		model.addAttribute("merchants", merchantService.getAllByMerchantStatus("active"));
		model.addAttribute("page", "all-merchant-list.jsp");
		return "page/home-layout";
	}

	@GetMapping("/merchantp/detail/{id}")
	public String merchantDetail(@PathVariable Long id, Model model) {
		System.out.println(merchantService.findById(id).getStatus());
		if("active".equals(merchantService.findById(id).getStatus())) {
		model.addAttribute("merchant", merchantService.findById(id));
		model.addAttribute("products", productService.getAllByDeleteFlagTrueAndMerchant(id));
		model.addAttribute("page", "merchant-detail.jsp");
		}else {
			return "redirect:/home";
		}
		
		return "page/home-layout";
	}

	@GetMapping("/merchantp/detail/{id}/search")
	public String merchant(@PathVariable Long id, @RequestParam String name, Model model) {
		model.addAttribute("merchant", merchantService.findById(id));
		model.addAttribute("products", productService.fAllByDeleFlagTAndMerAndNameContai(id, name));
		model.addAttribute("page", "merchant-detail.jsp");
		return "page/home-layout";
	}

	@GetMapping("/home")
	public String home(Model model, HttpSession session) {
		String userName = (String) session.getAttribute("username");
		Account account = accountService.findByName(userName);

		String message = "";
		String name = "";
		String avatar = "";
		String role = "";

		if (account == null) {
			message = "chua dang nhap";
		} else {
			if (account.getUser() != null) {
				name = account.getUser().getName();
				avatar = account.getUser().getAvatar();
				role = "user";
			}
			if (isAdmin(session)) {
				name = account.getUser().getName();
				avatar = account.getUser().getAvatar();
				role = "admin";
			}
			if (account.getMerchant() != null) {
				name = account.getMerchant().getName();
				avatar = account.getMerchant().getAvatar();
				role = "merchant";
			}
		}
		model.addAttribute("name", name);
		model.addAttribute("avatar", avatar);
		model.addAttribute("role", role);
		model.addAttribute("message", message);
		model.addAttribute("merchants", merchantService.getAllByMerchantStatus("active"));
		model.addAttribute("page", "home.jsp");
		return "page/home-layout";
	}

	private boolean isAdmin(HttpSession session) {
		Collection<? extends GrantedAuthority> authorities = (Collection<? extends GrantedAuthority>) session
				.getAttribute("authorities");
		List<String> roles = new ArrayList<String>();
		for (GrantedAuthority a : authorities) {
			roles.add(a.getAuthority());
		}
		if (roles.contains("ROLE_ADMIN")) {
			return true;
		}
		return false;
	}

	@PostMapping("/register/user")
	public String addUser(@ModelAttribute AccountRegisterDTO accountRegisterDTO,Model model) {
try {
	String status = "pending";
		boolean isEnabled = true;
		String pass = passwordEncoder.encode(accountRegisterDTO.getPassword());
		Account account = new Account(accountRegisterDTO.getUserName(), pass, isEnabled, accountRegisterDTO.getEmail());
		accountService.save(account);
		Account account2 = accountService.findByName(accountRegisterDTO.getUserName());
		roleService.setDefaultRole(account2.getId(), 2L);
		String avatar = "tet.jpg";

		userSevice.save(new AppUser(accountRegisterDTO.getName(), accountRegisterDTO.getAddress(),
				accountRegisterDTO.getPhone(), avatar, status, account2));

		return "redirect:/login";
} catch (Exception e) {
	// TODO: handle exception
	model.addAttribute("page", "register-user.jsp");
	model.addAttribute("err", "trùng username");
	return "account/account-layout";
}
		
	}
	@PostMapping("/register/merchant")
	public String addMerchant(@ModelAttribute AccountRegisterDTO accountRegisterDTO, Model model) {
try {
		String status = "pending";
		boolean isEnabled = true;
		String pass = passwordEncoder.encode(accountRegisterDTO.getPassword());
		Account account = new Account(accountRegisterDTO.getUserName(), pass, isEnabled, accountRegisterDTO.getEmail());
		accountService.save(account);
		Account account2 = accountService.findByName(accountRegisterDTO.getUserName());
		roleService.setDefaultRole(account2.getId(), 3L);
		String avatar = "tet.jpg";

		merchantService.save(new Merchant(accountRegisterDTO.getName(), accountRegisterDTO.getPhone(), accountRegisterDTO.getAddress(), avatar, status, account2));

		return "redirect:/login";
} catch (Exception e) {
	// TODO: handle exception
	model.addAttribute("page", "register-merchant.jsp");
	model.addAttribute("err", "trùng username");
	return "account/account-layout";
}
	}
}
