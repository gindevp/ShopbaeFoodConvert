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

	private Session getSession() {
		Session session = sessionFactory.getCurrentSession();
		return session;
	}

	@Override
	public Account findById(Long id) {
		return getSession().get(Account.class, id);
	}

	@Override
	public void save(Account t) {
		getSession().save(t);
	}

	@Override
	public void update(Account t) {
		getSession().update(t);
	}

	@Override
	public void delete(Account t) {
		getSession().delete(t);
	}

	@Override
	public List<Account> findAll() {
		return getSession().createQuery("FROM account ", Account.class).getResultList();
	}

	@Override
	public Account findByName(String name) {
		TypedQuery<Account> query = getSession().createQuery("FROM account a WHERE a.userName = :userName",
				Account.class);
		query.setParameter("userName", name);
		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public Long findIdUserByUserName(String userName) {
		TypedQuery<Account> query = getSession().createQuery("FROM account a WHERE a.userName = :userName",
				Account.class);
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
		try {
			if (findByName(username) == null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
