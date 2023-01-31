package shopbae.food.repository.order;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.AppUser;
import shopbae.food.model.Order;
import shopbae.food.model.Product;
@Repository
@Transactional
@EnableTransactionManagement
public class OrderRepository implements IOrderRepository{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Order findById(Long id) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.get(Order.class, id);
	}

	@Override
	public void save(Order t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(Order t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Order t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM orders a where a.flag=true",Order.class).getResultList();
	}

	@Override
	public List<Order> findByAppUserAndMer(Long userId,Long merId) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM orders a where a.flag=true and a.appUser="+ userId+"and a.merchant_id="+merId,Order.class).getResultList();
	}

	@Override
	public Serializable savee(Order t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.save(t);
	}

	@Override
	public List<Order> findByFlagAndStatus(String status) {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM orders a where a.flag=true and a.status='"+ status+"'",Order.class).getResultList();
	}
	

}
