package shopbae.food.service.account;

import org.springframework.security.core.userdetails.UserDetails;

import shopbae.food.model.Account;
import shopbae.food.service.IGeneral;

public interface IAccountService extends IGeneral<Account> {
	Account findByName(String name);

	Long findIdUserByUserName(String userName);

	boolean existsAccountByUserName(String username);

	UserDetails loadUserByUsername(String username);
}
