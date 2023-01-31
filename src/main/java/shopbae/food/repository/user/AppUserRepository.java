package shopbae.food.repository.user;

import java.util.List;



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
	public List<AppUser> getAllByStatus(String status) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("From appuser a where a.status='" + status + "'", AppUser.class).getResultList();
	}


}
