package shopbae.food.repository.cart;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Cart;
import shopbae.food.model.Product;
import shopbae.food.model.ProductCartMap;

@Repository
@Transactional
@EnableTransactionManagement
public class CartRepository implements ICartRepository {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	@Override
	public Cart findById(Long id) {
		return getSession().get(Cart.class, id);
	}

	@Override
	public void save(Cart t) {
		getSession().save(t);
	}

	@Override
	public void update(Cart t) {
		getSession().update(t);
	}

	@Override
	public void delete(Cart t) {
		getSession().delete(t);
	}

	@Override
	public List<Cart> findAll() {
		return getSession().createQuery("FROM cart ", Cart.class).getResultList();
	}

	@Override
	public List<Cart> findAllByUser(Long id) {
		return getSession().createQuery("FROM cart a where a.deleteFlag=true and a.user =" + id, Cart.class)
				.getResultList();
	}

	@Override
	public Cart findByProduct(Long id) {
		return getSession().createQuery("FROM cart a where a.product =" + id, Cart.class).getSingleResult();
	}

	@Override
	public Cart findByProductIdAndUserId(Long product_id, Long user_id) {
		try {
			return getSession().createQuery(
					"FROM cart a where a.user = " + user_id + " and a.product= " + product_id + "and a.deleteFlag=true",
					Cart.class).getSingleResult();
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}

	}

	@Override
	public void setProductCart(Long cart_id, Long product_id) {
		Product product = new Product();
		Cart cart = new Cart();
		cart.setId(cart_id);
		product.setId(product_id);
		getSession().save(new ProductCartMap(product, cart));
	}

	@Override
	public void updateQuantity(int quantity, Long cart_id) {
		Cart cart = findById(cart_id);
		cart.setQuantity(quantity);
		cart.setTotalPrice(cart.getTotalPrice());
		getSession().update(cart);
	}

	@Override
	public void deletesByUser(Long id) {
		try {
			getSession().createQuery("UPDATE cart a SET a.deleteFlag=false WHERE a.user=" + id).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public Cart findByProductAndFlag(Long id) {
		return getSession().createQuery("FROM cart a where a.deleteFlag=true and a.product =" + id, Cart.class)
				.getSingleResult();
	}
}
