  package shopbae.food.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import shopbae.food.model.Account;
import shopbae.food.model.AppUser;
import shopbae.food.model.Merchant;
import shopbae.food.model.dto.ChangeDTO;
import shopbae.food.service.account.IAccountService;
import shopbae.food.service.user.IAppUserService;

@Controller
@RequestMapping("user-info")
public class UserController {
	@Autowired
	IAppUserService appUserService;
	@Autowired
	IAccountService accountService;
	@Value("${file-upload}")
	private String fileUpload;
	
	// Hiển thị thông tin user
	@GetMapping
	public String info( Model model, HttpSession httpSession) {
		model.addAttribute("page","user-info.jsp");
		AppUser user= (AppUser) httpSession.getAttribute("user");
		ChangeDTO changeDTO= new ChangeDTO();
		changeDTO.setName(user.getName());
		changeDTO.setEmail(user.getAccount().getEmail());
		changeDTO.setPhone(user.getPhone());
		model.addAttribute("changeDTO",changeDTO);
		// tạo changedto để binding dữ liệu của cả merchant và account
		return "page/home-layout";
	}
	// Sửa thông tin user
	@PostMapping
	public String infoSave( @ModelAttribute ChangeDTO changeDTO, Model model, HttpSession httpSession) {
		model.addAttribute("page","user-info.jsp");
		MultipartFile multipartFile = changeDTO.getAvatar();
		String fileName = multipartFile.getOriginalFilename();
		try {
			FileCopyUtils.copy(changeDTO.getAvatar().getBytes(), new File(fileUpload + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		AppUser user= (AppUser) httpSession.getAttribute("user");
		Account account= user.getAccount();
		user.setName(changeDTO.getName());
		user.setPhone(changeDTO.getPhone());
		user.setAvatar(fileName);
		appUserService.update(user);
		account.setEmail(changeDTO.getEmail());
		accountService.update(account);
		model.addAttribute("message","done");
		// tạo changedto để binding dữ liệu của cả merchant và account
		return "page/home-layout";
	}
}
