package shopbae.food.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.model.Merchant;
import shopbae.food.model.Order;
import shopbae.food.model.OrderDetail;
import shopbae.food.model.Product;
import shopbae.food.service.orderDetail.OrderDetailService;

@Controller
@RequestMapping("/jasper")
public class JasperReportController {

	@Autowired
	OrderDetailService detailService;

    @GetMapping("/report")
    public String generateReport(ModelMap modelMap,HttpSession httpSession) throws Exception {
    	List<Map<String, ?>> list = new ArrayList<Map<String, ?>>();
    	Order order= (Order) httpSession.getAttribute("order");
    	List<OrderDetail> details= detailService.findByOrder(order.getId());
    	List<Product> products= new ArrayList<>();
    	for (OrderDetail orderDetail : details) {
    		Map<String, Object> m= new HashMap<String,Object>();
			products.add(orderDetail.getProduct());
			m.put("product_name", orderDetail.getProduct().getName());
    		m.put("product_price", orderDetail.getProduct().getNewPrice());
    		m.put("product_quantity", orderDetail.getQuantity());
    		m.put("product_totalPrice", orderDetail.getProduct().getNewPrice()*orderDetail.getQuantity());
    		list.add(m);
		}
    	Map<String, Object> m1= new HashMap<>();
    	m1.put("id_order",(Long) ((Order) httpSession.getAttribute("order")).getId());
    	m1.put("merchant_name",(String) ((Merchant) httpSession.getAttribute("merchant")).getName());
    	m1.put("merchant_phone", (String) ((Merchant) httpSession.getAttribute("merchant")).getPhone());
    	m1.put("sum",(Double) httpSession.getAttribute("sum"));
    	m1.put("time", (String) httpSession.getAttribute("time"));
    	System.out.println(m1);
    	
    	modelMap.put("param", m1);
    	modelMap.put("listProducts", list);
    	return "account/test/index";
    }
}
