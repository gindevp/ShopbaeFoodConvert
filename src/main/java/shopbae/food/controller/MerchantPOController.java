package shopbae.food.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Stack;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import shopbae.food.model.Account;
import shopbae.food.model.Cart;
import shopbae.food.model.Merchant;
import shopbae.food.model.Order;
import shopbae.food.model.OrderDetail;
import shopbae.food.util.*;
import shopbae.food.model.Product;
import shopbae.food.model.dto.ChangeDTO;
import shopbae.food.model.dto.ProductForm;
import shopbae.food.service.account.IAccountService;
import shopbae.food.service.cart.ICartService;
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
	IAccountService accountService;
	@Autowired
	private SimpMessagingTemplate messagingTemplate;
	@Autowired
	ICartService cartService;
	@Value("${file-upload}")
	private String fileUpload;

// Hi???n th??? trang dashboard th???ng k?? doanh s??? ???? b??n ra c???a t???ng s???n ph???m 
	@GetMapping
	public String chart(Model model, HttpSession httpSession, @RequestParam(defaultValue = "bar") String type) {
		List<Product> product = new ArrayList<>();
		try {
			product = productService
					.getAllByDeleteFlagTrueAndMerchant(((Merchant) httpSession.getAttribute("merchant")).getId());
			List<Object> name = new ArrayList<>();
			List<Object> num = new ArrayList<>();
			product.stream().forEach(c -> name.add("'" + c.getName() + "'"));
			product.stream().forEach(c -> num.add(c.getNumberOrder()));
			model.addAttribute("name", name);
			System.out.println(name);
			model.addAttribute("num", num);
			model.addAttribute("page", "dashboard.jsp");
			model.addAttribute("nav", 1);
			System.out.println("chart" + type);
			model.addAttribute("chart", "'" + type + "'");
			return "merchant/merchant-layout";
		} catch (Exception e) {
			return "redirect:/home";
		}

	}

// Hi???n th??? trang th??ng tin merchant c?? nh??n
	@GetMapping("/detail")
	public String info(Model model, HttpSession httpSession) {
		model.addAttribute("page", "merchant-info.jsp");
		Merchant merchant = (Merchant) httpSession.getAttribute("merchant");
		ChangeDTO changeDTO = new ChangeDTO();
		changeDTO.setName(merchant.getName());
		changeDTO.setEmail(merchant.getAccount().getEmail());
		changeDTO.setPhone(merchant.getPhone());
		changeDTO.setOpenTime(merchant.getOpenTime());
		changeDTO.setCloseTime(merchant.getCloseTime());
		model.addAttribute("changeDTO", changeDTO);
		httpSession.setAttribute("merchantAvt", merchant.getAvatar());
		model.addAttribute("nav", 5);
		// t???o changedto ????? binding d??? li???u c???a c??? merchant v?? account
		return "merchant/merchant-layout";
	}

// Th???c hi???n thay ?????i th??ng tin merchant c?? nh??n 
	@PostMapping("/detail")
	public String infoSave(@ModelAttribute ChangeDTO changeDTO, Model model, HttpSession httpSession)
			throws IOException {
		model.addAttribute("page", "merchant-info.jsp");
		String fileName = new UploadFile().uploadFile(changeDTO.getAvatar(),
				(String) httpSession.getAttribute("merchantAvt"),fileUpload);
		Merchant merchant = (Merchant) httpSession.getAttribute("merchant");
		Account account = merchant.getAccount();
		merchant.setName(changeDTO.getName());
		merchant.setPhone(changeDTO.getPhone());
		merchant.setOpenTime(changeDTO.getOpenTime());
		merchant.setCloseTime(changeDTO.getCloseTime());
		merchant.setAvatar(fileName);
		merchantService.update(merchant);
		account.setEmail(changeDTO.getEmail());
		accountService.update(account);
		model.addAttribute("message", "done");
		return "merchant/merchant-layout";
	}

// Hi???n th??? trang list product 
	@RequestMapping("/product")
	public String product(Model model, HttpSession httpSession, @RequestParam(defaultValue = "0") int page,
			@RequestParam(defaultValue = "5") int pageSize) {
		try {

			List<Product> listProducts1 = productService
					.getAllByDeleteFlagTrueAndMerchant(((Merchant) httpSession.getAttribute("merchant")).getId());
			List<Product> listProducts = new ArrayList<>();
			Stack<Product> stackPr = new Stack<>();
			for (Product product : listProducts1) {
				stackPr.push(product);
			}
			for (@SuppressWarnings("unused")
			Product product : listProducts1) {
				listProducts.add(stackPr.pop());
			}
			// t??nh to??n s??? trang c???n hi???n th???
			int totalPages = listProducts.size() / pageSize;
			if (listProducts.size() % pageSize > 0) {
				totalPages++;
			}

			model.addAttribute("products", new Page().paging(page, pageSize, listProducts));
			model.addAttribute("page", "product-list.jsp");
			model.addAttribute("nav", 3);
			model.addAttribute("totalPages", totalPages);
			model.addAttribute("currentPage", page);
			return "merchant/merchant-layout";
		} catch (Exception e) {
			return "redirect:/home";
		}

	}

// Hi???n th??? trang add product
	@RequestMapping("/product/add")
	public String productAdd(Model model) {
		model.addAttribute("productForm", new ProductForm());
		model.addAttribute("page", "product-add.jsp");
		return "merchant/merchant-layout";
	}

// Th???c hi???n vi???c th??m s???n ph???m
	@PostMapping("/product/save")
	public String saveProduct(@ModelAttribute ProductForm productForm, HttpSession httpSession) throws IOException {
		System.out.println("Upload" + fileUpload);
		String fileName = new UploadFile().uploadFile(productForm.getImage(),fileUpload);
		System.out.println("value"+productForm.getImage());
		Product product = new Product(productForm.getName(), productForm.getShortDescription(),
				productForm.getOldPrice(), productForm.getNewPrice(), fileName, productForm.getQuantity());
		product.setDeleteFlag(true);
		Merchant merchant = new Merchant();
		merchant.setId(((Merchant) httpSession.getAttribute("merchant")).getId());
		product.setMerchant(merchant);
		productService.save(product);
		return "redirect:/merchant/product/";
	}

// Th???c hi???n vi???c x??a product
	@RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
	public String doDeleter(@PathVariable Long id, Model model, HttpSession httpSession) {
		Product a = productService.findById(id);
		a.setId(id);
		a.setDeleteFlag(false);
		productService.update(a);
		List<Cart> cart = cartService.findAllByProduct(id);
		for (Cart cart2 : cart) {
			cart2.setDeleteFlag(false);
			cartService.update(cart2);
		}
		Long merchantId = ((Merchant) httpSession.getAttribute("merchant")).getId();
		messagingTemplate.convertAndSend("/topic/product/" + merchantId,
				"Ng?????i b??n ???? x??a product c?? name: " + a.getName());
		System.out.println("/topic/product/" + merchantId);
		model.addAttribute("products", productService.findAll());
		return "redirect:/merchant/product/";
	}

// Hi???n th??? trang edit product v?? th??ng tin product c???n s???a
	@RequestMapping("/product/edit/{id}")
	public String update(@PathVariable Long id, Model model, HttpSession httpSession) {
		Product product = productService.findById(id);
		ProductForm productForm = new ProductForm(product.getId(), product.getName(), product.getShortDescription(),
				product.getOldPrice(), product.getNewPrice(), null, product.getQuantity());
		model.addAttribute("productForm", productForm);
		httpSession.setAttribute("product", product);
		model.addAttribute("page", "product-edit.jsp");
		return "merchant/merchant-layout";
	}

// Th???c hi???n s???a product
	@PostMapping("/product/edit/save")
	public String editProduct(@ModelAttribute ProductForm productForm, HttpSession httpSession) throws IOException {
		System.out.println("eidt " + productForm);
		String fileName = new UploadFile().uploadFile(productForm.getImage(),
				((Product) httpSession.getAttribute("product")).getImage(),fileUpload);
		Product product = new Product(productForm.getId(), productForm.getName(), productForm.getShortDescription(),
				((Product) httpSession.getAttribute("product")).getNumberOrder(), productForm.getOldPrice(),
				productForm.getNewPrice(), fileName, productForm.getQuantity());
		product.setDeleteFlag(true);
		Merchant merchant = new Merchant();
		merchant.setId(((Merchant) httpSession.getAttribute("merchant")).getId());
		product.setMerchant(merchant);
		productService.update(product);
		Long merchantId = ((Merchant) httpSession.getAttribute("merchant")).getId();
		messagingTemplate.convertAndSend("/topic/product/" + merchantId,
				"Ng?????i b??n ???? s???a product c?? name: " + product.getName());
		return "redirect:/merchant/product/";
	}

// Th???c hi???n t??m ki???m product theo name g???n ????ng
	@GetMapping("/product/search")
	public String findProductByName(@RequestParam String name, @RequestParam(defaultValue = "0") int page, Model model,
			HttpSession httpSession) {

		int pageSize = 5; // s??? l?????ng ph???n t??? tr??n m???i trang
		List<Product> listProducts = productService
				.fAllByDeleFlagTAndMerAndNameContai(((Merchant) httpSession.getAttribute("merchant")).getId(), name);
		// t??nh to??n s??? trang c???n hi???n th???
		int totalPages = listProducts.size() / pageSize;
		if (listProducts.size() % pageSize > 0) {
			totalPages++;
		}

		model.addAttribute("products", new Page().paging(page, pageSize, listProducts));
		model.addAttribute("page", "product-list.jsp");
		model.addAttribute("nav", 3);
		model.addAttribute("totalPages", totalPages + 1);
		model.addAttribute("currentPage", page);
		return "merchant/merchant-layout";
	}

// Hi???n th??? ????n h??ng ??ang ch??? merchant x??c nh???n
	@GetMapping("/order")
	public String order(Model model, HttpSession httpSession) {
		List<Order> orders = orderService.findByFlagAndStatus(OrderStatus.MERCHANT_PENDING.toString());
		long merId = (long) ((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2 = orders.stream().filter(c -> c.getMerchant_id() == merId).collect(Collectors.toList());
		model.addAttribute("orders", orders2);
		model.addAttribute("page2", "order-pending.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 1);
		httpSession.setAttribute("a", 1);
		return "merchant/merchant-layout";
	}

// ??i???u h?????ng sang order 
	@GetMapping("/order/pending")
	public String orderP(Model model) {
		return "redirect:/merchant/order";
	}

// Th???c hi???n x??c nh???n cho ????n h??ng pending th??nh ng?????i b??n ???? nh???n 
	@GetMapping("/order/received/{id}")
	public String received(Model model, @PathVariable Long id, HttpSession httpSession) {
		Order order = orderService.findById(id);
		order.setStatus(OrderStatus.MERCHANT_RECEIVED.toString());
		orderService.update(order);
		List<Order> orders = orderService.findByFlagAndStatus(OrderStatus.MERCHANT_RECEIVED.toString());
		long merId = (long) ((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2 = orders.stream().filter(c -> c.getMerchant_id() == merId).collect(Collectors.toList());
		model.addAttribute("orders", orders2);
		model.addAttribute("page2", "order-received.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 2);
		httpSession.setAttribute("a", 3);
		httpSession.setAttribute("order", order);
		httpSession.setAttribute("time", new SimpleDateFormat("dd-M-yyyy hh:mm:ss").format(new Date()));
		orderService.send(order, order.getAppUser().getId());
		return "redirect:/jasper/report/"+id;
	}

// Hi???n th??? ????n h??ng ng?????i b??n ???? nh???n
	@GetMapping("/order/received")
	public String receivedP(Model model, HttpSession httpSession) {
		List<Order> orders = orderService.findByFlagAndStatus(OrderStatus.MERCHANT_RECEIVED.toString());
		long merId = (long) ((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2 = orders.stream().filter(c -> c.getMerchant_id() == merId).collect(Collectors.toList());
		model.addAttribute("orders", orders2);
		model.addAttribute("page2", "order-received.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 2);
		httpSession.setAttribute("a", 3);
		return "merchant/merchant-layout";
	}

// Hi???n th??? th??ng tin c???a order v??? product c?? trong ????, s??? l?????ng, ????n gi??, t???ng ti???n
	@GetMapping("/order/detail/{id}")
	public String detail(Model model, @PathVariable Long id, HttpSession httpSession) {
		List<OrderDetail> details = detailService.findByOrder(id);
		double sum = 0;
		for (OrderDetail orderDetail : details) {
			sum += orderDetail.getQuantity() * orderDetail.getProduct().getNewPrice();
		}
		httpSession.setAttribute("orderId", id);
		httpSession.setAttribute("sum", sum);
		model.addAttribute("sum", sum);
		model.addAttribute("oderDetail", details);
		model.addAttribute("page2", "order-detail.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		return "merchant/merchant-layout";
	}

// Th???c hi???n c???p nh???t ????n h??ng th??nh ng????i b??n t??? ch???i
	@GetMapping("/order/refuse/{id}")
	public String refuse(Model model, @PathVariable Long id) {
		Order order = orderService.findById(id);
		order.setStatus(OrderStatus.MERCHANT_REFUSE.toString());
		orderService.update(order);

		List<OrderDetail> details = detailService.findByOrder(id);
		for (OrderDetail orderDetail : details) {
			Product product = orderDetail.getProduct();
			product.setQuantity(product.getQuantity() + orderDetail.getQuantity());
			productService.update(product);
		}
		orderService.send(order, order.getAppUser().getId());
		return "redirect:/merchant/order";
	}

// Hi???n th??? ????n h??ng ???? nh???n, ???? t??? ch???i, ???? ?????t ????? th??nh l???ch s??? order
	@GetMapping("/order/history")
	public String history(Model model, HttpSession httpSession) {
		List<Order> orders = orderService.findAll();
		long merId = (long) ((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2 = orders.stream().filter(
				c -> ((c.getMerchant_id() == merId) && (c.getStatus().equals(OrderStatus.USER_RECEIVED.toString())
						|| c.getStatus().equals(OrderStatus.USER_REFUSE.toString())
						|| c.getStatus().equals(OrderStatus.MERCHANT_REFUSE.toString()))))
				.collect(Collectors.toList());
		model.addAttribute("orders", orders2);
		model.addAttribute("page2", "order-history.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 4);
		httpSession.setAttribute("a", 4);
		return "merchant/merchant-layout";
	}

// Hi???n th??? ????n h??ng ng?????i mua ???? nh???n 
	@GetMapping("/order/send")
	public String send(Model model, HttpSession httpSession) {
		List<Order> orders = orderService.findByFlagAndStatus(OrderStatus.USER_RECEIVED.toString());
		long merId = (long) ((Merchant) httpSession.getAttribute("merchant")).getId();
		List<Order> orders2 = orders.stream().filter(c -> c.getMerchant_id() == merId).collect(Collectors.toList());
		model.addAttribute("orders", orders2);
		model.addAttribute("page2", "order-send.jsp");
		model.addAttribute("page", "order-layout.jsp");
		model.addAttribute("nav", 2);
		model.addAttribute("nav2", 3);
		httpSession.setAttribute("a", 5);
		return "merchant/merchant-layout";
	}
}
