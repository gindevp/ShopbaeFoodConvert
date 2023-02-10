package shopbae.food.service.merchant;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import shopbae.food.model.Account;
import shopbae.food.util.*;
import shopbae.food.model.Merchant;
import shopbae.food.repository.merchant.IMerchantRepository;
import shopbae.food.service.account.IAccountService;
import shopbae.food.service.product.IProductService;

@Service
public class MerchantService implements IMerchantService {
	@Autowired
	private IMerchantRepository merchantRepository;
	@Autowired
	private IProductService productService;
	@Autowired
	IAccountService accountService;

	@Override
	public Merchant findById(Long id) {
		return merchantRepository.findById(id);
	}

	@Override
	public void save(Merchant t) {
		merchantRepository.save(t);
	}

	@Override
	public void update(Merchant t) {
		merchantRepository.update(t);
	}

	@Override
	public void delete(Merchant t) {
		merchantRepository.delete(t);
	}

	@Override
	public List<Merchant> findAll() {
		return merchantRepository.findAll();
	}

	@Override
	public Merchant findByName(String name) {
		return merchantRepository.findByName(name);
	}

	@Override
	public List<Merchant> getAllByMerchantStatus(String status) {
		return merchantRepository.getAllByMerchantStatus(status);
	}

	@Override
	public List<Merchant> findAllMerchantAndNameContainer(String name) {
		return merchantRepository.findAllMerchantAndNameContainer(name);
	}

	@Override
	public Merchant findByAccount(Long id) {
		return merchantRepository.findByAccount(id);
	}

	@Override
	public String detailMer(Long id, Model model, HttpSession httpSession) {
		httpSession.setAttribute("merchantId", id);
		if (httpSession.getAttribute("userId") == null) {
			httpSession.setAttribute("userId", 0);
		}
		if (AccountStatus.ACTIVE.toString().equals(this.findById(id).getStatus())) {
			model.addAttribute("merchant", this.findById(id));
			model.addAttribute("products", productService.getAllByDeleteFlagTrueAndMerchant(id));
			model.addAttribute("page", "merchant-detail.jsp");
		} else {
			return "redirect:/home";
		}

		return "page/home-layout";
	}

	// Kiểm tra đăng nhập của admin
	public boolean isAdmin(HttpSession session) {
		@SuppressWarnings("unchecked")
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

	public void homePage(Model model, HttpSession session) {
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
			if (new MerchantService().isAdmin(session)) {
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
		session.setAttribute("name", name);
		session.setAttribute("avatar", avatar);
		session.setAttribute("role", role);
		session.setAttribute("message", message);
		model.addAttribute("merchants", this.getAllByMerchantStatus(AccountStatus.ACTIVE.toString()));
		model.addAttribute("page", "home.jsp");
	}
}
