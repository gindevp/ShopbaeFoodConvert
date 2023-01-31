package shopbae.food.repository.order;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

import shopbae.food.model.AppUser;
import shopbae.food.model.Order;
import shopbae.food.service.IGeneral;

public interface IOrderRepository extends IGeneral<Order>{
	 List<Order> findByAppUserAndMer(Long userId,Long merId);
	 Serializable savee(Order t);
	 List<Order> findByFlagAndStatus(String status);
}
