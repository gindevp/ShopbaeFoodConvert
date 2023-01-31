package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.model.AppUser;
import shopbae.food.model.Merchant;
import shopbae.food.service.merchant.IMerchantService;
import shopbae.food.service.user.IAppUserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private IMerchantService merchantService;
    @Autowired
    private IAppUserService appUserService;
    
    @GetMapping("")
    public String defaultt() {
    	return "redirect:/admin/merchant";
    }
	
	@GetMapping("/merchant")
	public String merActive(Model model) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","merchant");
		model.addAttribute("nav",1);
		model.addAttribute("nav2",2);
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("active"));
		return "admin/admin-layout";
	}
	@GetMapping("/merchant/pending")
	public String merPending(Model model) {
		model.addAttribute("page","merchant-manager/merchant-pending.jsp");
		model.addAttribute("manager","merchant");
		model.addAttribute("nav",1);
		model.addAttribute("nav2",1);
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("pending"));
		return "admin/admin-layout";
	}
	@GetMapping("/merchant/block")
	public String merblock(Model model) {
		model.addAttribute("page","merchant-manager/merchant-block.jsp");
		model.addAttribute("manager","merchant");
		model.addAttribute("nav",1);
		model.addAttribute("nav2",3);
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("block"));
		return "admin/admin-layout";
	}
	@GetMapping("/merchant/active/{id}")
	public String merSuccess(Model model, @PathVariable Long id) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","merchant");
		Merchant merchant= merchantService.findById(id);
		
		merchant.setStatus("active");
		merchantService.update(merchant);
		return "redirect:/admin/merchant/pending";
	}
	@GetMapping("/merchant/refuse/{id}")
	public String merRefuse(Model model, @PathVariable Long id) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","merchant");
		Merchant merchant= merchantService.findById(id);
		
		merchant.setStatus("refuse");
		merchantService.update(merchant);
		return "redirect:/admin/merchant/pending";
	}
	@GetMapping("/merchant/block/{id}")
	public String merBlock(Model model, @PathVariable Long id) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","merchant");
		Merchant merchant= merchantService.findById(id);
		
		merchant.setStatus("block");
		merchantService.update(merchant);
		return "redirect:/admin/merchant";
	}
	@GetMapping("/merchant/unblock/{id}")
	public String merUnblock(Model model, @PathVariable Long id) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","merchant");
		Merchant merchant= merchantService.findById(id);
		
		merchant.setStatus("active");
		merchantService.update(merchant);
		return "redirect:/admin/merchant/block";
	}
	
	
	
	//user 
	
	
	@GetMapping("/user")
	public String userActive(Model model) {
		model.addAttribute("page","user-manager/user-active.jsp");
		model.addAttribute("manager","user");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",2);
		model.addAttribute("merchants",appUserService.getAllByStatus("active"));
		return "admin/admin-layout";
	}
	@GetMapping("/user/pending")
	public String userPending(Model model) {
		model.addAttribute("page","user-manager/user-pending.jsp");
		model.addAttribute("manager","user");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",1);
		model.addAttribute("merchants",appUserService.getAllByStatus("pending"));
		return "admin/admin-layout";
	}
	@GetMapping("/user/block")
	public String userblock(Model model) {
		model.addAttribute("page","user-manager/user-block.jsp");
		model.addAttribute("manager","user");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",3);
		model.addAttribute("merchants",appUserService.getAllByStatus("block"));
		return "admin/admin-layout";
	}
	@GetMapping("/user/active/{id}")
	public String userSuccess(Model model, @PathVariable Long id) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","user");
		AppUser merchant= appUserService.findById(id);
		
		merchant.setStatus("active");
		appUserService.update(merchant);
		return "redirect:/admin/user/pending";
	}
	@GetMapping("/user/refuse/{id}")
	public String userRefuse(Model model, @PathVariable Long id) {
		model.addAttribute("page","user-manager/user-active.jsp");
		model.addAttribute("manager","user");
		AppUser merchant= appUserService.findById(id);
		
		merchant.setStatus("refuse");
		appUserService.update(merchant);
		return "redirect:/admin/user/pending";
	}
	@GetMapping("/user/block/{id}")
	public String userBlock(Model model, @PathVariable Long id) {
		model.addAttribute("page","user-manager/user-active.jsp");
		model.addAttribute("manager","user");
		AppUser merchant= appUserService.findById(id);
		
		merchant.setStatus("block");
		appUserService.update(merchant);
		return "redirect:/admin/user";
	}
	@GetMapping("/user/unblock/{id}")
	public String userUnblock(Model model, @PathVariable Long id) {
		model.addAttribute("page","user-manager/user-active.jsp");
		model.addAttribute("manager","user");
		AppUser merchant= appUserService.findById(id);
		
		merchant.setStatus("active");
		appUserService.update(merchant);
		return "redirect:/admin/user/block";
	}
	
}
