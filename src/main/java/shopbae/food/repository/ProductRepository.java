package shopbae.food.repository;

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

}
