package shopbae.food.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Account;
import shopbae.food.model.Product;
@Repository
@Transactional
@EnableTransactionManagement
public class ProductRepository implements IProductRepository{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Product findById(Long id) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.get(Product.class, id);
	}

	@Override
	public void save(Product t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(Product t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Product t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM product",Product.class).getResultList();
	}

	@Override
	public List<Product> findByName(String name) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM product a where a.name like concat('%','"+name+"','%')",Product.class).getResultList();
	}

	@Override
	public List<Product> getAllByDeleteFlagTrueAndMerchant(Long id) {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("From product a where a.delete_flag = true and a.merchant_id ="+id,Product.class).getResultList();
	}

	@Override
	public List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id, String name) {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("From Product p where p.delete_flag = true and p.merchant_id = "+id+" and p.name like concat('%','"+name+"', '%')",Product.class).getResultList();
	}

}
