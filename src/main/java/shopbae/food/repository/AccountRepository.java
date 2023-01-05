package shopbae.food.repository;

import java.util.List;

import javax.persistence.Query;

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
public class AccountRepository implements IAccountRepository{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Account findById(Long id) {
		Session session= sessionFactory.getCurrentSession();
		System.out.println(session.get(Account.class, id));
		return session.get(Account.class, id);
	}

	@Override
	public void save(Account t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		String hql = "INSERT INTO Account(1L,'ddddddfd',true,'sdf','hsf','084')";
	Query query = session.createQuery(hql);
	int result = query.executeUpdate();
	System.out.println("Rows affected: " + result);
	}

	@Override
	public void update(Account t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.update(t);
	}

	@Override
	public void delete(Account t) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		session.delete(t);
	}

	@Override
	public List<Account> findAll() {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("FROM account",Account.class).getResultList();
	}

}
