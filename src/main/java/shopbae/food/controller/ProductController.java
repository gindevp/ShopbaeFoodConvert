package shopbae.food.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import shopbae.food.model.Account;
import shopbae.food.model.Product;
import shopbae.food.model.dto.ProductForm;
import shopbae.food.service.IProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private IProductService productService;
	@Value("${file-upload}")
	private String fileUpload;

	@RequestMapping("/")
	public String product(Model model) {
		model.addAttribute("products",productService.findAll());
		return "merchant/merchant-page";
	}

	@RequestMapping("/add")
	public String productAdd(Model model) {
		model.addAttribute("productForm",new ProductForm());
		return "merchant/product-add";
	}

	@PostMapping("/save")
	public ModelAndView saveProduct(@ModelAttribute ProductForm productForm) {
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
		productService.save(product);
		ModelAndView modelAndView = new ModelAndView("merchant/merchant-page");
		modelAndView.addObject("products",productService.findAll());
		modelAndView.addObject("message", "Created new product success !");
		return modelAndView;
	}
	@RequestMapping("/delete/{id}")
	  public String doDeleter(@PathVariable Long id, Model model) {
		  Product a= new Product();
		  a.setId(id);
		  a.setDeleteFlag(false);
	    productService.update(a);
	    model.addAttribute("products", productService.findAll());
	    return "redirect:/merchant/";
	  }
	@RequestMapping("/edit/{id}")
	  public String update(@PathVariable Long id, Model model) {
	    Product product = productService.findById(id);
	    ProductForm productForm= new ProductForm(product.getId(), product.getName(), product.getShortDescription(), product.getNewPrice(), product.getOldPrice(),null);
	    model.addAttribute("productForm", productForm);
	    return "merchant/product-edit";
	  }
	@PostMapping("/edit/save")
	public ModelAndView editProduct(@ModelAttribute ProductForm productForm) {
		System.out.println("eidt "+ productForm);
		MultipartFile multipartFile = productForm.getImage();
		String fileName = multipartFile.getOriginalFilename();
		try {
			FileCopyUtils.copy(productForm.getImage().getBytes(), new File(fileUpload + fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		Product product = new Product(productForm.getId(),productForm.getName(), productForm.getShortDescription(),
				productForm.getNewPrice(), productForm.getOldPrice(), fileName);
		productService.update(product);
		ModelAndView modelAndView = new ModelAndView("merchant/merchant-page");
		modelAndView.addObject("products",productService.findAll());
		modelAndView.addObject("message", "Created new product success !");
		return modelAndView;
	}
	@GetMapping("/search")
	  public String findProductByName(@RequestParam String name, Model model) {
	    List<Product> product = productService.findByName(name);
	    model.addAttribute("products", product);
	    return "merchant/merchant-page";
	  }
}
