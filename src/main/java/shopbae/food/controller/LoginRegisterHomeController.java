package shopbae.food.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import shopbae.food.model.Account;
import shopbae.food.util.*;
import shopbae.food.model.AppUser;
import shopbae.food.model.Favorite;
import shopbae.food.model.Mail;
import shopbae.food.model.Merchant;
import shopbae.food.model.Product;
import shopbae.food.model.dto.AccountRegisterDTO;
import shopbae.food.service.account.IAccountService;
import shopbae.food.service.favorite.IFavoriteService;
import shopbae.food.service.mail.MailService;
import shopbae.food.service.merchant.IMerchantService;
import shopbae.food.service.product.IProductService;
import shopbae.food.service.role.IRoleService;
import shopbae.food.service.user.IAppUserService;

@Controller
public class LoginRegisterHomeController {
	Email messageMail = new Email();
	@Autowired
	IRoleService roleService;
	@Autowired
	IAccountService accountService;
	@Autowired
	IMerchantService merchantService;
	@Autowired
	IProductService productService;
	@Autowired
	IAppUserService userSevice;
	@Autowired
	MailService mailService;
	@Autowired
	PasswordEncoder encoder;
	@Autowired
	IFavoriteService favoriteService;
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	@Autowired
	private MessageSource messageSource;

// Vào trang login
	@GetMapping("/login")
	public String showLoginForm(Model model, HttpSession httpSession, @RequestParam(defaultValue = "") String mess,
			HttpServletResponse response) {
		Account account = (Account) httpSession.getAttribute("account");

		// xóa cache k lưu trang login vào cache
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.

		if (account != null) {
			if (account.getUser() != null) {
				if (account.getUserName().equals("admin")) {
					return "redirect:/admin";
				} else {
					return "redirect:/";
				}
			} else {
				return "redirect:/merchant";
			}

		} else {
			model.addAttribute("mess", mess);
			model.addAttribute("page", "login.jsp");
			return "account/account-layout";
		}

	}

// Vào trang đăng ký user
	@GetMapping("/register/{role}")
	public String showRegisUser(Model model, @PathVariable String role) {
		model.addAttribute("page", "register.jsp");
		model.addAttribute("title", "Đăng ký " + role);
		model.addAttribute("rolee", role);
		model.addAttribute("accountRegisterDTO", new AccountRegisterDTO());
		return "account/account-layout";
	}

// Vào trang hiển thị tất cả merchant
	@GetMapping("/merchantp/all")
	public String allMerchant(Model model, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "10") int pageSize) {
		List<Merchant> listMerchants = merchantService.getAllByMerchantStatus(AccountStatus.ACTIVE.toString());
		// tính toán số trang cần hiển thị
		int totalPages = listMerchants.size() / pageSize;
		if (listMerchants.size() % pageSize > 0) {
			totalPages++;
		}
		model.addAttribute("merchants", new Page().paging(page, pageSize, listMerchants));
		model.addAttribute("page", "all-merchant-list.jsp");
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", page);
		return "page/home-layout";
	}

// Vào trang merchant để mua sản phẩm
	@GetMapping("/merchantp/detail/{id}")
	public String merchantDetail(@PathVariable Long id, Model model, HttpSession httpSession) {
		httpSession.setAttribute("merchantId", id);
		httpSession.setAttribute("merId", id);
		return merchantService.detailMer(id, model, httpSession);
	}

// Tìm kiểm sản phẩm theo id và trả về kq ngay tại trang đó
	@GetMapping("/merchantp/detail/{id}/search")
	public String merchant(@PathVariable Long id, @RequestParam String name, Model model) {
		model.addAttribute("merchant", merchantService.findById(id));
		model.addAttribute("products", productService.fAllByDeleFlagTAndMerAndNameContai(id, name));
		model.addAttribute("page", "merchant-detail.jsp");
		return "page/home-layout";
	}

// Trang home show các merchant và set các thông tin session của người dùng
	@GetMapping("/home")
	public String home(Model model, HttpSession session, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "9") int pageSize) {
		merchantService.homePage(model, session, page, pageSize);
		return "page/home-layout";
	}

// redirect
	@GetMapping({ "", "/" })
	public String redirect() {
		return "redirect:/home";
	}

// Thực hiện đăng ký cho user
	@PostMapping("/register/{role}")
	public String addUser(@Valid @ModelAttribute AccountRegisterDTO accountRegisterDTO, BindingResult bindingResult,
			Model model, HttpServletResponse response, HttpServletRequest request, @PathVariable String role) {
		try {
			boolean valid = true;
			String err = null;

			String gRecaptchaResponse = request.getParameter("g-recaptcha-response");

			System.out.
			println("gRecaptchaResponse=" + gRecaptchaResponse);

			// Verify CAPTCHA.
			valid = VerifyUtils.verify(gRecaptchaResponse);
			System.out.println("validddd" + valid);
			if (!valid) {
				err = "Captcha invalid!";
				model.addAttribute("err", err);
				model.addAttribute("rolee", role);
				model.addAttribute("page", "register.jsp");
				return "account/account-layout";
			}
			if (!bindingResult.hasErrors()) {

				boolean isEnabled = true;
				String pass = encoder.encode(accountRegisterDTO.getPassword());
				Account account = new Account(accountRegisterDTO.getUserName(), pass, isEnabled,
						accountRegisterDTO.getEmail());
				accountService.save(account);
				Account account2 = accountService.findByName(accountRegisterDTO.getUserName());

				if (role.equals("user")) {
					roleService.setDefaultRole(account2.getId(), 2L);
					String avatar = "tet.jpg";
					userSevice.save(new AppUser(accountRegisterDTO.getName(), accountRegisterDTO.getAddress(),
							accountRegisterDTO.getPhone(), avatar, AccountStatus.PENDING.toString(), account2));
				} else {
					roleService.setDefaultRole(account2.getId(), 3L);
					String avatar = "tet.jpg";
					merchantService.save(new Merchant(accountRegisterDTO.getName(), accountRegisterDTO.getPhone(),
							accountRegisterDTO.getAddress(), avatar, AccountStatus.PENDING.toString(), account2));
				}

				String status = messageSource.getMessage("register_success", null, LocaleContextHolder.getLocale());

				messagingTemplate.convertAndSend("/topic/register", status);
				Mail mail = new Mail();
				mail.setMailTo(accountRegisterDTO.getEmail());
				mail.setMailFrom(messageMail.MAIL);
				mail.setMailSubject(messageMail.MESS);
				mail.setMailContent(messageMail.MESSAGE);
				mailService.sendEmail(mail);
				if (role.equals("user")) {
					return "redirect:/login";
				} else {
					return "redirect:/home";
				}

			} else {
				model.addAttribute("rolee", role);
				model.addAttribute("page", "register.jsp");
				return "account/account-layout";
			}

		} catch (Exception e) {
			model.addAttribute("page", "register.jsp");
			return "account/account-layout";
		}

	}

// Hiển thị trang quên mật khẩu
	@GetMapping("/forgotpass")
	public String forgot(Model model) {
		model.addAttribute("page", "forgotpass.jsp");
		return "account/account-layout";
	}

// Thực hiện nhận username và bắt xác nhận one time password (otp) để đổi pass
	@PostMapping("/forgotpass")
	public String fogot(Model model, @RequestParam String username, HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		Account account = accountService.findByName(username);
		
		boolean valid = true;

		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");

		System.out.println("gRecaptchaResponse=" + gRecaptchaResponse);

		// Verify CAPTCHA.
		valid = VerifyUtils.verify(gRecaptchaResponse);
		System.out.println("validddd" + valid);
		if (!valid) {
			model.addAttribute("messagee", "Capcha valid");
			model.addAttribute("page", "forgotpass.jsp");
			return "account/account-layout";
		}
		
		if (account != null) {
			double randomDouble = Math.random();
			randomDouble = randomDouble * 1000000 + 1;
			int OTP = (int) randomDouble;
			account.setOtp(String.valueOf(OTP));
			accountService.update(account);
			Mail mail = new Mail();
			mail.setMailTo(account.getEmail());
			mail.setMailFrom(messageMail.MAIL);
			mail.setMailSubject(messageMail.CONFIRM);
			mail.setMailContent(messageMail.messageOTP(String.valueOf(OTP)));
			mailService.sendEmail(mail);
			model.addAttribute("page", "confirm-otp.jsp");
			session.setAttribute("name", username);
			return "account/account-layout";

		} else {
			model.addAttribute("messagee", messageMail.USER_EMPTY);
			model.addAttribute("page", "forgotpass.jsp");
			return "account/account-layout";
		}

	}

// Đổi pass cần nhập otp và new password
	@PostMapping("/forgotpass/confirm")
	public String confirmOtp(Model model, HttpSession session, @RequestParam String otp, String pass) {
		String name = (String) session.getAttribute("name");
		Account account = accountService.findByName(name);
		if (otp.equals(account.getOtp())) {
			account.setPassword(encoder.encode(pass));
			account.setOtp(null);
			accountService.update(account);
			session.removeAttribute("name");
			model.addAttribute("page", "login.jsp");
			return "account/account-layout";
		} else {
			model.addAttribute("message", messageMail.USER_ERORR);
			model.addAttribute("page", "confirm-otp.jsp");
			return "account/account-layout";
		}
	}

// Đổi pass cho người dùng đã đăng nhập
	@GetMapping("/change-pass")
	public String change(HttpSession session, Model model) {
		Account account = accountService.findByName(((Account) session.getAttribute("account")).getUserName());
		if (account != null) {
			double randomDouble = Math.random();
			randomDouble = randomDouble * 1000000 + 1;
			int OTP = (int) randomDouble;
			account.setOtp(String.valueOf(OTP));
			accountService.update(account);
			Mail mail = new Mail();
			mail.setMailTo(account.getEmail());
			mail.setMailFrom(messageMail.MAIL);
			mail.setMailSubject(messageMail.CONFIRM);
			mail.setMailContent(messageMail.messageOTP(String.valueOf(OTP)));
			mailService.sendEmail(mail);
			model.addAttribute("page", "confirm-otp.jsp");
			session.setAttribute("name", ((Account) session.getAttribute("account")).getUserName());
			return "account/account-layout";

		} else {
			model.addAttribute("message", messageMail.USER_EMPTY);
			model.addAttribute("page", "forgotpass.jsp");
			return "redirect:/merchant/detail";
		}
	}

// Tìm kiểm merchant theo name gần đúng
	@GetMapping("home/search/merchant")
	public String searchMerchant(Model model, @RequestParam String search, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "10") int pageSize) {
		List<Merchant> listMerchants = merchantService.findAllMerchantAndNameContainer(search);
		// tính toán số trang cần hiển thị
		int totalPages = listMerchants.size() / pageSize;
		if (listMerchants.size() % pageSize > 0) {
			totalPages++;
		}
		model.addAttribute("merchants", new Page().paging(page, pageSize, listMerchants));
		model.addAttribute("page", "all-merchant-list.jsp");
		model.addAttribute("totalPages", totalPages + 1);
		model.addAttribute("currentPage", page);
		return "page/home-layout";
	}

	@GetMapping("/saveMerProToSession")
	public String saveToSession(HttpSession httpSession, @RequestParam Long merchant_old_id, Long product_old_id) {
		System.out.println("to session" + merchant_old_id + "  " + product_old_id);
		httpSession.setAttribute("product_old_id", product_old_id);
		httpSession.setAttribute("merchant_old_id", merchant_old_id);
		return "redirect:/";
	}
	@GetMapping("/favorite")
	private String favorite(HttpSession session, Model model ) {
		Long id= (Long) session.getAttribute("userId");
		List<Product> products= new ArrayList<>();
		List<Favorite> favorites= favoriteService.findAll();
		for (Favorite favorite : favorites) {
			if(id.equals(favorite.getAppUser().getId())) {
				products.add(favorite.getProduct());
			}
		}
		model.addAttribute("page", "favorite.jsp");
		model.addAttribute("products", products);
		return "page/home-layout";
	}
}
