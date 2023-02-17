package shopbae.food.service.order;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import shopbae.food.model.Order;
import shopbae.food.model.dto.OrderStatusDTO;
import shopbae.food.repository.order.IOrderRepository;

@Service
public class OrderService implements IOrderService {
	@Autowired
	IOrderRepository orderRepository;
	@Autowired
	private MessageSource messageSource;
	@Autowired
	private SimpMessagingTemplate messagingTemplate;

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
		if (t.isFlag()) {
			OrderStatusDTO dto = new OrderStatusDTO();
			dto.setId(t.getId());
			String status = messageSource.getMessage(t.getStatus(), null, LocaleContextHolder.getLocale());
			dto.setStatus(status);
			messagingTemplate.convertAndSend("/topic/order", dto);
		}

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
