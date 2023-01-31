package shopbae.food.repository.account;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.Account;

@Repository
@Transactional
@EnableTransactionManagement
public class AccountRepository implements IAccountRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Account findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Account.class, id);
	}

	@Override
	public void save(Account t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(t);
	}

	@Override
	public void update(Account t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Account t) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Account> findAll() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM account ", Account.class).getResultList();
	}

	@Override
	public Account findByName(String name) {
		Session session = this.sessionFactory.getCurrentSession();
		TypedQuery<Account> query = session.createQuery("FROM account a WHERE a.userName = :userName", Account.class);
		query.setParameter("userName", name);
		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public Long findIdUserByUserName(String userName) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		TypedQuery<Account> query = session.createQuery("FROM account a WHERE a.userName = :userName", Account.class);
		query.setParameter("userName", userName);
		try {
			Account account = query.getSingleResult();
			return account.getId();
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public boolean existsAccountByUserName(String username) {
		// TODO Auto-generated method stub
		try {
			if (findByName(username) == null ) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

}
