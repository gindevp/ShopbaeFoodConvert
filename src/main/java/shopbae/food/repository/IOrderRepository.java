package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.AppUser;
import shopbae.food.model.Order;
import shopbae.food.service.IGeneral;

public interface IOrderRepository extends IGeneral<Order>{
	 List<Order> findByAppUser(Long id);
}
