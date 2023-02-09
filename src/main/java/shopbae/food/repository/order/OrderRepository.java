package shopbae.food.repository.order;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import shopbae.food.model.Order;

@Repository
@Transactional
@EnableTransactionManagement
public class OrderRepository implements IOrderRepository {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	@Override
	public Order findById(Long id) {
		return getSession().get(Order.class, id);
	}

	@Override
	public void save(Order t) {
		getSession().save(t);
	}

	@Override
	public void update(Order t) {
		getSession().update(t);
	}

	@Override
	public void delete(Order t) {
		getSession().delete(t);
	}

	@Override
	public List<Order> findAll() {
		return getSession().createQuery("FROM orders a where a.flag=true", Order.class).getResultList();
	}

	@Override
	public List<Order> findByAppUserAndMer(Long userId, Long merId) {
		return getSession()
				.createQuery("FROM orders a where a.flag=true and a.appUser=" + userId + "and a.merchant_id=" + merId,
						Order.class)
				.getResultList();
	}

	@Override
	public Serializable savee(Order t) {
		return getSession().save(t);
	}

	@Override
	public List<Order> findByFlagAndStatus(String status) {
		return getSession().createQuery("FROM orders a where a.flag=true and a.status='" + status + "'", Order.class)
				.getResultList();
	}

}
