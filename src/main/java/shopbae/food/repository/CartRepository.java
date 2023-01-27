package shopbae.food.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.AppUser;
import shopbae.food.model.Cart;
import shopbae.food.model.Product;
import shopbae.food.model.ProductCartMap;

@Repository
@Transactional
@EnableTransactionManagement
public class CartRepository implements ICartRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Cart findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Cart.class, id);
	}

	@Override
	public void save(Cart t) {
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(Cart t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Cart t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Cart> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM cart ", Cart.class).getResultList();
	}

	@Override
	public List<Cart> findAllByUser(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM cart a where a.user =" + id, Cart.class).getResultList();
	}

	@Override
	public Cart findByProduct(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM cart a where a.product =" + id, Cart.class).getSingleResult();
	}

	@Override
	public Cart findByProductIdAndUserId(Long product_id, Long user_id) {
		try {
			Session session = sessionFactory.getCurrentSession();
			return session
					.createQuery("FROM cart a where a.user = " + user_id + " and a.product= " + product_id, Cart.class)
					.getSingleResult();
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}

	}

	@Override
	public void setProductCart(Long cart_id, Long product_id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = new Product();
		Cart cart = new Cart();
		cart.setId(cart_id);
		product.setId(product_id);
		session.save(new ProductCartMap(product, cart));
	}

	@Override
	public void updateQuantity(int quantity, Long cart_id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Cart cart = findById(cart_id);
		cart.setQuantity(quantity);
		cart.setTotalPrice(cart.getTotalPrice());
		session.update(cart);
	}

	@Override
	public void deletesByUser(Long id) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.getCurrentSession();
			session.createQuery("FROM cart a where a.user=" + id, Cart.class).getSingleResult();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
