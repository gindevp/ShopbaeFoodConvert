package shopbae.food.service.order;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.Order;
import shopbae.food.repository.order.IOrderRepository;

@Service
public class OrderService implements IOrderService {
	@Autowired
	IOrderRepository orderRepository;

	@Override
	public Order findById(Long id) {
		return orderRepository.findById(id);
	}

	@Override
	public void save(Order t) {
		orderRepository.save(t);
	}

	@Override
	public void update(Order t) {
		orderRepository.update(t);
	}

	@Override
	public void delete(Order t) {
		orderRepository.delete(t);
	}

	@Override
	public List<Order> findAll() {
		return orderRepository.findAll();
	}

	@Override
	public List<Order> findByAppUserAndMer(Long userId, Long merId) {
		return orderRepository.findByAppUserAndMer(userId, merId);
	}

	@Override
	public List<Order> findByFlagAndStatus(String status) {
		return orderRepository.findByFlagAndStatus(status);
	}

	@Override
	public Serializable savee(Order t) {
		return orderRepository.savee(t);
	}

}
