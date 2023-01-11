package shopbae.food.repository;

import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shopbae.food.model.AccountRoleMap;
import shopbae.food.model.AppRoles;

@Repository
@Transactional(rollbackFor = Exception.class)
public class RoleRepository implements IRoleRepository{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public AppRoles findByName(String name) {
		Session session = this.sessionFactory.getCurrentSession();
		TypedQuery<AppRoles> query = session.createQuery("FROM roles a WHERE a.name = :name", AppRoles.class);
		query.setParameter("name", name);
		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public void setDefaultRole(Long accountId, Integer roleId) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("Call INSERT_ACCOUNT_ROLE(:account_id,:role_id)")
				.addEntity(AccountRoleMap.class);
		query.setParameter("account_id", accountId);
		query.setParameter("role_id", roleId);
		query.executeUpdate();
	}

}
