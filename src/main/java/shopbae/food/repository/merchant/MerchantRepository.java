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

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	@Override
	public Merchant findById(Long id) {
		return getSession().get(Merchant.class, id);
	}

	@Override
	public void save(Merchant t) {
		getSession().save(t);
	}

	@Override
	public void update(Merchant t) {
		getSession().update(t);
	}

	@Override
	public void delete(Merchant t) {
		getSession().delete(t);
	}

	@Override
	public List<Merchant> findAll() {
		return getSession().createQuery("FROM merchant ", Merchant.class).getResultList();
	}

	@Override
	public Merchant findByName(String name) {
		return getSession().createQuery("FROM merchant a where a.name =" + name, Merchant.class).getSingleResult();
	}

	@Override
	public List<Merchant> getAllByMerchantStatus(String status) {
		return getSession().createQuery("From merchant a where a.status='" + status + "'", Merchant.class)
				.getResultList();
	}

	@Override
	public List<Merchant> findAllMerchantAndNameContainer(String name) {
		return getSession()
				.createQuery("From merchant a where a.status='active' and a.name like concat('%','" + name + "','%')",
						Merchant.class)
				.getResultList();
	}

	@Override
	public Merchant findByAccount(Long id) {
		try {
			return getSession().createQuery("FROM merchant a where a.account =" + id, Merchant.class).getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

}
