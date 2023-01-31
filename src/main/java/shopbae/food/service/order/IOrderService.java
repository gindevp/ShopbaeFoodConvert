package shopbae.food.service.order;

import java.io.Serializable;
import java.util.List;

import shopbae.food.model.Order;
import shopbae.food.service.IGeneral;

public interface IOrderService extends IGeneral<Order>{
	List<Order> findByAppUserAndMer(Long userId,Long merId);
	List<Order> findByFlagAndStatus(String status);
	Serializable savee(Order t);
}
