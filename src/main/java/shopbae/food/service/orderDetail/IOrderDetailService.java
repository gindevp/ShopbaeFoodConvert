package shopbae.food.service.orderDetail;

import java.util.List;

import shopbae.food.model.OrderDetail;
import shopbae.food.service.IGeneral;

public interface IOrderDetailService extends IGeneral<OrderDetail>{
	List<OrderDetail> findByOrder(Long id);
}
