package shopbae.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.service.IMerchantService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private IMerchantService merchantService;

	
	@GetMapping
	public String merActive(Model model) {
		model.addAttribute("page","merchant-manager/merchant-active.jsp");
		model.addAttribute("manager","người bán");
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("active"));
		return "admin/admin-layout";
	}
	@GetMapping("/merchant-pending")
	public String merPending(Model model) {
		model.addAttribute("page","merchant-pending.jsp");
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("pending"));
		return "admin/admin-layout";
	}
	@GetMapping("/merchant-block")
	public String merRefuse(Model model) {
		model.addAttribute("page","merchant-block.jsp");
		model.addAttribute("merchants",merchantService.getAllByMerchantStatus("active"));
		return "admin/admin-layout";
	}
	
}
