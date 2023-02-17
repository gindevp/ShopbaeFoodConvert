package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.util.*;
import shopbae.food.model.AppUser;
import shopbae.food.model.Mail;
import shopbae.food.model.Merchant;
import shopbae.food.service.mail.MailService;
import shopbae.food.service.merchant.IMerchantService;
import shopbae.food.service.user.IAppUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	Email messageMail = new Email();
	@Autowired
	private IMerchantService merchantService;
	@Autowired
	private IAppUserService appUserService;
	@Autowired
	MailService mailService;
	@GetMapping("")
	public String defaultt() {
		return "redirect:/admin/merchant";
	}

	// manager merchant
	// display merchant active
	@GetMapping("/merchant")
	public String merActive(Model model) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "merchant");
		model.addAttribute("nav", 1);
		model.addAttribute("nav2", 2);
		model.addAttribute("merchants", merchantService.getAllByMerchantStatus(AccountStatus.ACTIVE.toString()));
		return "admin/admin-layout";
	}

	// display merchant pending
	@GetMapping("/merchant/pending")
	public String merPending(Model model) {
		model.addAttribute("page", "merchant-manager/merchant-pending.jsp");
		model.addAttribute("manager", "merchant");
		model.addAttribute("nav", 1);
		model.addAttribute("nav2", 1);
		model.addAttribute("merchants", merchantService.getAllByMerchantStatus(AccountStatus.PENDING.toString()));
		return "admin/admin-layout";
	}

	// display merchant block
	@GetMapping("/merchant/block")
	public String merblock(Model model) {
		model.addAttribute("page", "merchant-manager/merchant-block.jsp");
		model.addAttribute("manager", "merchant");
		model.addAttribute("nav", 1);
		model.addAttribute("nav2", 3);
		model.addAttribute("merchants", merchantService.getAllByMerchantStatus(AccountStatus.BLOCK.toString()));
		return "admin/admin-layout";
	}

	// perform active merchant
	@GetMapping("/merchant/active/{id}")
	public String merSuccess(Model model, @PathVariable Long id) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "merchant");
		Merchant merchant = merchantService.findById(id);

		merchant.setStatus(AccountStatus.ACTIVE.toString());
		Mail mail = new Mail();
		mail.setMailTo(merchant.getAccount().getEmail());
		mail.setMailFrom(messageMail.MAIL);
		mail.setMailSubject(messageMail.MESS);
		mail.setMailContent(messageMail.MESSAGE);
		mailService.sendEmail(mail);
		merchantService.update(merchant);
		return "redirect:/admin/merchant/pending";
	}

	// Thực hiện việc từ chối thành merchant
	@GetMapping("/merchant/refuse/{id}")
	public String merRefuse(Model model, @PathVariable Long id) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "merchant");
		Merchant merchant = merchantService.findById(id);

		merchant.setStatus(AccountStatus.REFUSE.toString());
		merchantService.update(merchant);
		return "redirect:/admin/merchant/pending";
	}

	// Thực hiện block merchant
	@GetMapping("/merchant/block/{id}")
	public String merBlock(Model model, @PathVariable Long id) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "merchant");
		Merchant merchant = merchantService.findById(id);

		merchant.setStatus(AccountStatus.BLOCK.toString());
		merchantService.update(merchant);
		return "redirect:/admin/merchant";
	}

	// Thực hiện bỏ block merchant
	@GetMapping("/merchant/unblock/{id}")
	public String merUnblock(Model model, @PathVariable Long id) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "merchant");
		Merchant merchant = merchantService.findById(id);

		merchant.setStatus(AccountStatus.ACTIVE.toString());
		merchantService.update(merchant);
		return "redirect:/admin/merchant/block";
	}

	// Manager user

	// Hiển thị user active
	@GetMapping("/user")
	public String userActive(Model model) {
		model.addAttribute("page", "user-manager/user-active.jsp");
		model.addAttribute("manager", "user");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 2);
		model.addAttribute("merchants", appUserService.getAllByStatus(AccountStatus.ACTIVE.toString()));
		return "admin/admin-layout";
	}

	// Hiển thị user pending
	@GetMapping("/user/pending")
	public String userPending(Model model) {
		model.addAttribute("page", "user-manager/user-pending.jsp");
		model.addAttribute("manager", "user");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 1);
		model.addAttribute("merchants", appUserService.getAllByStatus(AccountStatus.PENDING.toString()));
		return "admin/admin-layout";
	}

// Hiển thị user block 
	@GetMapping("/user/block")
	public String userblock(Model model) {
		model.addAttribute("page", "user-manager/user-block.jsp");
		model.addAttribute("manager", "user");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 3);
		model.addAttribute("merchants", appUserService.getAllByStatus(AccountStatus.BLOCK.toString()));
		return "admin/admin-layout";
	}

	// THực hiện active cho user
	@GetMapping("/user/active/{id}")
	public String userSuccess(Model model, @PathVariable Long id) {
		model.addAttribute("page", "merchant-manager/merchant-active.jsp");
		model.addAttribute("manager", "user");
		AppUser merchant = appUserService.findById(id);

		merchant.setStatus(AccountStatus.ACTIVE.toString());
		appUserService.update(merchant);
		Mail mail = new Mail();
		mail.setMailTo(merchant.getAccount().getEmail());
		mail.setMailFrom(messageMail.MAIL);
		mail.setMailSubject(messageMail.MESS);
		mail.setMailContent(messageMail.MESSAGE);
		mailService.sendEmail(mail);
		return "redirect:/admin/user/pending";
	}

	// Thực hiện từ chối thành user
	@GetMapping("/user/refuse/{id}")
	public String userRefuse(Model model, @PathVariable Long id) {
		model.addAttribute("page", "user-manager/user-active.jsp");
		model.addAttribute("manager", "user");
		AppUser merchant = appUserService.findById(id);

		merchant.setStatus(AccountStatus.REFUSE.toString());
		appUserService.update(merchant);
		return "redirect:/admin/user/pending";
	}

	// Thực hiện block user
	@GetMapping("/user/block/{id}")
	public String userBlock(Model model, @PathVariable Long id) {
		model.addAttribute("page", "user-manager/user-active.jsp");
		model.addAttribute("manager", "user");
		AppUser merchant = appUserService.findById(id);

		merchant.setStatus(AccountStatus.BLOCK.toString());
		appUserService.update(merchant);
		return "redirect:/admin/user";
	}

	// Thực hiện việc bỏ block
	@GetMapping("/user/unblock/{id}")
	public String userUnblock(Model model, @PathVariable Long id) {
		model.addAttribute("page", "user-manager/user-active.jsp");
		model.addAttribute("manager", "user");
		AppUser merchant = appUserService.findById(id);

		merchant.setStatus(AccountStatus.ACTIVE.toString());
		appUserService.update(merchant);
		return "redirect:/admin/user/block";
	}

}
