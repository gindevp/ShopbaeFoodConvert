package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.OrderDetail;
import shopbae.food.service.IGeneral;

public interface IOrderDetailRepository extends IGeneral<OrderDetail> {
	List<OrderDetail> findByOrder(Long id);
}
