package shopbae.food.repository.orderDetail;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Merchant;
import shopbae.food.model.OrderDetail;
@Repository
@Transactional
@EnableTransactionManagement
public class OrderDetailRepository implements IOrderDetailRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public OrderDetail findById(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(OrderDetail.class, id);
	}

	@Override
	public void save(OrderDetail t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(OrderDetail t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(OrderDetail t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<OrderDetail> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM order_detail ", OrderDetail.class).getResultList();
	}

	@Override
	public List<OrderDetail> findByOrder(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM order_detail a where a.order= "+id, OrderDetail.class).getResultList();
	}

}
