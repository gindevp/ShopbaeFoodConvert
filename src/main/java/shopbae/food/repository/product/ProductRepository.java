package shopbae.food.repository.product;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Product;

@Repository
@Transactional
@EnableTransactionManagement
public class ProductRepository implements IProductRepository {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	@Override
	public Product findById(Long id) {
		return getSession().get(Product.class, id);
	}

	@Override
	public void save(Product t) {
		getSession().save(t);
	}

	@Override
	public void update(Product t) {
		getSession().update(t);
	}

	@Override
	public void delete(Product t) {
		getSession().delete(t);
	}

	@Override
	public List<Product> findAll() {
		return getSession().createQuery("FROM product", Product.class).getResultList();
	}

	@Override
	public Product findByName(String name) {
		return getSession().createQuery("FROM product a where a.name=" + name, Product.class).getSingleResult();
	}

	@Override
	public List<Product> getAllByDeleteFlagTrueAndMerchant(Long id) {
		return getSession().createQuery("From product a where a.deleteFlag = true and a.merchant =" + id, Product.class)
				.getResultList();
	}

	@Override
	public List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id, String name) {
		return getSession().createQuery("From product p where p.deleteFlag = true and p.merchant = " + id
				+ " and p.name like concat('%','" + name + "', '%')", Product.class).getResultList();
	}

}
