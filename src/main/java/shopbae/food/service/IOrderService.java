package shopbae.food.service;

import java.util.List;

import shopbae.food.model.Order;

public interface IOrderService extends IGeneral<Order>{
	List<Order> findByAppUser(Long id);
}
