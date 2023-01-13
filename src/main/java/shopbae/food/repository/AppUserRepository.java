package shopbae.food.repository;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.AppUser;

@Repository
@Transactional
@EnableTransactionManagement
public class AppUserRepository implements IAppUserRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public AppUser findById(Long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(AppUser.class, id);
	}

	@Override
	public void save(AppUser t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(AppUser t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(AppUser t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<AppUser> findAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM appuser ", AppUser.class).getResultList();
	}

	@Override
	public AppUser findByName(String name) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM appuser a where a.name =" + name, AppUser.class).getSingleResult();
	}

	@Override
	public void saveUserToRegister(String address, String avatar, String name, String phone, String status,
			Long account_id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("Call INSERT_APPUSER(:address ,:avatar,:name,:phone,:status, :account_id)")
				.addEntity(AppUser.class);
		query.setParameter("address", address);
		query.setParameter("avatar", avatar);
		query.setParameter("name", name);
		query.setParameter("phone", phone);
		query.setParameter("status", status);
		query.setParameter("account_id", account_id);
		query.executeUpdate();
	}

}
