package shopbae.food.repository.merchant;

import java.util.List;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Merchant;

@Repository
@Transactional
@EnableTransactionManagement
public class MerchantRepository implements IMerchantRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Merchant findById(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(Merchant.class, id);
	}

	@Override
	public void save(Merchant t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(Merchant t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Merchant t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Merchant> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM merchant ", Merchant.class).getResultList();
	}

	@Override
	public Merchant findByName(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM merchant a where a.name =" + name, Merchant.class).getSingleResult();
	}

	@Override
	public List<Merchant> getAllByMerchantStatus(String status) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("From merchant a where a.status='" + status + "'", Merchant.class).getResultList();
	}

	@Override
	public List<Merchant> findAllMerchantAndNameContainer(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session
				.createQuery("From merchant a where a.status='active' and a.name like concat('%','" + name + "','%')",
						Merchant.class)
				.getResultList();
	}

	@Override
	public Merchant findByAccount(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		try {
			return session.createQuery("FROM merchant a where a.account =" + id, Merchant.class).getSingleResult();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
		
	}

}
