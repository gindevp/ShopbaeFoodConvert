package shopbae.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.OrderDetail;

@Service
public class OrderDetailService implements IOrderDetailService{
@Autowired
IOrderDetailService orderDetailService;
	@Override
	public OrderDetail findById(Long id) {
		// TODO Auto-generated method stub
		return orderDetailService.findById(id);
	}

	@Override
	public void save(OrderDetail t) {
		// TODO Auto-generated method stub
		orderDetailService.save(t);
	}

	@Override
	public void update(OrderDetail t) {
		// TODO Auto-generated method stub
		orderDetailService.update(t);
	}

	@Override
	public void delete(OrderDetail t) {
		// TODO Auto-generated method stub
		orderDetailService.delete(t);
	}

	@Override
	public List<OrderDetail> findAll() {
		// TODO Auto-generated method stub
		return orderDetailService.findAll();
	}

	@Override
	public List<OrderDetail> findByOrder(Long id) {
		// TODO Auto-generated method stub
		return findByOrder(id);
	}

}
 