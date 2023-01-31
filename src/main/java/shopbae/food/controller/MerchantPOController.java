package shopbae.food.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import shopbae.food.model.Account;
import shopbae.food.model.Merchant;
import shopbae.food.model.Order;
import shopbae.food.model.OrderDetail;
import shopbae.food.model.Product;
import shopbae.food.model.dto.AccountRegisterDTO;
import shopbae.food.model.dto.ChangeDTO;
import shopbae.food.model.dto.ProductForm;
import shopbae.food.service.account.AccountService;
import shopbae.food.service.merchant.IMerchantService;
import shopbae.food.service.order.IOrderService;
import shopbae.food.service.orderDetail.IOrderDetailService;
import shopbae.food.service.product.IProductService;

@Controller
@RequestMapping("/merchant")
public class MerchantPOController {
	@Autowired
	private IOrderService orderService;
	@Autowired
	private IOrderDetailService detailService;
	@Autowired
	private IProductService productService;
	@Autowired
	private IMerchantService merchantService;
	@Autowired
	AccountService accountService;
	@Value("${file-upload}")
	private String fileUpload;

	@GetMapping
	public String chart( Model model, HttpSession httpSession) {
		List<Product> product= new ArrayList<>();
		try {
			product= productService.getAllByDeleteFlagTrueAndMerchant(((Merchant) httpSession.getAttribute("merchant")).getId());
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/home";
		}
		List<Object> name= new ArrayList<>() ;
		List<Object> num= new ArrayList<>();
		product.stream().forEach(c -> name.add("'"+c.getName()+"'"));
		product.stream().forEach(c -> num.add(c.getNumberOrder()));
		model.addAttribute("name", name);
		System.out.println(name);
		model.addAttribute("num", num);
		model.addAttribute("page","dashboard.jsp");
		model.addAttribute("nav",1);
		return "merchant/merchant-layout";
	}
	@GetMapping("/detail")
	public String info( Model model, HttpSession httpSession) {
		model.addAttribute("page","merchant-info.jsp");
		Merchant merchant= (Merchant) httpSession.getAttribute("merchant");
		ChangeDTO changeDTO= new ChangeDTO();
		changeDTO.setName(merchant.getName());
		changeDTO.setEmail(merchant.getAccount().getEmail());
		changeDTO.setPhone(merchant.getPhone());
		changeDTO.setOpenTime(merchant.getOpenTime());
		changeDTO.setCloseTime(merchant.getCloseTime());
		model.addAttribute("changeDTO",changeDTO);
		model.addAttribute("nav",5);
		// tạo changedto để binding dữ liệu của cả merchant và account
		return "merchant/merchant-layout";
	}
	@PostMapping("/detail")
	public String infoSave( @ModelAttribute ChangeDTO changeDTO, Model model, HttpSession httpSession) {
		model.addAttribute("page","merchant-info.jsp");
		MultipartFile multipartFile = changeDTO.getAvatar();
		String fileName = multipartFile.getOriginalFilename();
		try {
			FileCopyUtils.copy(changeDTO.getAvatar().getBytes(), new File(fileUpload + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Merchant merchant= (Merchant) httpSession.getAttribute("merchant");
		Account account= merchant.getAccount();
		merchant.setName(changeDTO.getName());
		merchant.setPhone(changeDTO.getPhone());
		merchant.setOpenTime(changeDTO.getOpenTime());
		merchant.setCloseTime(changeDTO.getCloseTime());
		merchant.setAvatar(fileName);
		merchantService.update(merchant);
		account.setEmail(changeDTO.getEmail());
		accountService.update(account);
		model.addAttribute("message","done");
		// tạo changedto để binding dữ liệu của cả merchant và account
		return "merchant/merchant-layout";
	}
	@RequestMapping("/product")
	public String product(Model model, HttpSession httpSession) {
		try {
			model.addAttribute("products", productService.getAllByDeleteFlagTrueAndMerchant(((Merchant) httpSession.getAttribute("merchant")).getId()));
		} catch (Exception e) {
			// TODO: handle exception
			return "redirect:/home";
		}
		
		model.addAttribute("page", "product-list.jsp");
		model.addAttribute("nav",3);
		return "merchant/merchant-layout";
	}

	@RequestMapping("/product/add")
	public String productAdd(Model model) {
		model.addAttribute("productForm", new ProductForm());
		model.addAttribute("page", "product-add.jsp");
		return "merchant/merchant-layout";
	}

	@PostMapping("/product/save")
	public String saveProduct(@ModelAttribute ProductForm productForm, HttpSession httpSession) {
		System.out.println("Upload");
		MultipartFile multipartFile = productForm.getImage();
		String fileName = multipartFile.getOriginalFilename();
		try {
			FileCopyUtils.copy(productForm.getImage().getBytes(), new File(fileUpload + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Product product = new Product(productForm.getName(), productForm.getShortDescription(),
				productForm.getNewPrice(), productForm.getOldPrice(), fileName);
		product.setDeleteFlag(true);
		Merchant merchant = new Merchant();
		merchant.setId( ((Merchant) httpSession.getAttribute("merchant")).getId());
		product.setMerchant(merchant);
		productService.save(product);
//		ModelAndView modelAndView = new ModelAndView("merchant/merchant-layout");
//		modelAndView.addObject("products",productService.getAllByDeleteFlagTrueAndMerchant(1L));
//		modelAndView.addObject("page","merchant/product-list.jsp");
//		modelAndView.addObject("message", "Created new product success !");
		return "redirect:/merchant/product/";
	}

	@RequestMapping("/product/delete/{id}")
	public String doDeleter(@PathVariable Long id, Model model) {
		Product a = productService.findById(id);
		a.setId(id);
		a.setDeleteFlag(false);
		productService.update(a);
		model.addAttribute("products", productService.findAll());
		return "redirect:/merchant/product/";
	}

	@RequestMapping("/product/edit/{id}")
	public String update(@PathVariable Long id, Model model) {
		Product product = productService.findById(id);
		ProductForm productForm = new ProductForm(product.getId(), product.getName(), product.getShortDescription(),
				product.getNewPrice(), product.getOldPrice(), null);
		model.addAttribute("productForm", productForm);
		model.addAttribute("page", "product-edit.jsp");
		return "merchant/merchant-layout";
	}

	@PostMapping("/product/edit/save")
	public String editProduct(@ModelAttribute ProductForm productForm, HttpSession httpSession) {
		System.out.println("eidt " + productForm);
		MultipartFile multipartFile = productForm.getImage();
		String fileName = multipartFile.getOriginalFilename();
		try {
			FileCopyUtils.copy(productForm.getImage().getBytes(), new File(fileUpload + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Product product = new Product(productForm.getId(), productForm.getName(), productForm.getShortDescription(),
				productForm.getNewPrice(), productForm.getOldPrice(), fileName);
		product.setDeleteFlag(true);
		Merchant merchant = new Merchant();
		merchant.setId(((Merchant) httpSession.getAttribute("merchant")).getId());
		product.setMerchant(merchant);
		productService.update(product);
//		ModelAndView modelAndView = new ModelAndView("merchant/merchant-layout");
//		modelAndView.addObject("products",productService.findAll());
//		modelAndView.addObject("message", "Created new product success !");
		return "redirect:/merchant/product/";
	}

	@GetMapping("/product/search")
	public String findProductByName(@RequestParam String name, Model model, HttpSession httpSession) {
		List<Product> product = productService.fAllByDeleFlagTAndMerAndNameContai(((Merchant) httpSession.getAttribute("merchant")).getId(), name);
		model.addAttribute("products", product);
		model.addAttribute("page", "product-list.jsp");
		return "merchant/merchant-layout";
	}
	@GetMapping("/order")
	public String order( Model model, HttpSession httpSession) {
		List<Order> orders=orderService.findByFlagAndStatus("cho xac nhan"); 
		long merId= (long)((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2= orders.stream().filter(c->c.getMerchant_id()==merId).collect(Collectors.toList());
		model.addAttribute("orders",orders2);
		model.addAttribute("page2","order-pending.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",1);
		return "merchant/merchant-layout";
	}
	@GetMapping("/order/pending")
	public String orderP( Model model) {
		return "redirect:/merchant/order";
	}
	@GetMapping("/order/received/{id}")
	public String received(Model model, @PathVariable Long id) {
		Order order=orderService.findById(id);
		order.setStatus("nguoi ban da nhan");
		orderService.update(order);
		model.addAttribute("orders",orderService.findByFlagAndStatus("nguoi ban da nhan"));
		model.addAttribute("page2","order-received.jsp");
		model.addAttribute("page", "order-layout.jsp");
		return "merchant/merchant-layout";
	}
	@GetMapping("/order/received")
	public String receivedP(Model model) {
		model.addAttribute("orders",orderService.findByFlagAndStatus("nguoi ban da nhan"));
		model.addAttribute("page2","order-received.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",2);
		return "merchant/merchant-layout";
	}
	@GetMapping("/order/detail/{id}")
	public String detail(Model model, @PathVariable Long id, HttpSession httpSession) {
		List<OrderDetail> details= detailService.findByOrder(id);
		double sum=0;
		for (OrderDetail orderDetail : details) {
			sum+=orderDetail.getProduct().getQuantity()*orderDetail.getProduct().getNewPrice();
		}
		httpSession.setAttribute("orderId", id);
		model.addAttribute("sum",sum);
		model.addAttribute("oderDetail",details);
		model.addAttribute("page2","order-detail.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav",2);
		return "merchant/merchant-layout";
	}
	@GetMapping("/order/refuse/{id}")
	public String refuse(Model model,@PathVariable Long id) {
		Order order = orderService.findById(id);
		order.setStatus("nguoi ban tu choi");
		orderService.update(order);
		return "redirect:/merchant/order";
	}
	@GetMapping("/order/history")
	public String history(Model model) {
		List<Order> order = orderService.findAll();
		model.addAttribute("orders",order);
		model.addAttribute("page2","order-history.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",4);
		return "merchant/merchant-layout";
	}
	@GetMapping("/order/send")
	public String send(Model model) {
		List<Order> order = orderService.findByFlagAndStatus("nguoi mua da nhan");
		model.addAttribute("orders",order);
		model.addAttribute("page2","order-send.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav",2);
		model.addAttribute("nav2",3);
		return "merchant/merchant-layout";
	}
}
