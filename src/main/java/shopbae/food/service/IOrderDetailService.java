package shopbae.food.service;

import java.util.List;

import shopbae.food.model.OrderDetail;

public interface IOrderDetailService extends IGeneral<OrderDetail>{
	List<OrderDetail> findByOrder(Long id);
}
