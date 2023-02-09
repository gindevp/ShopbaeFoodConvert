package shopbae.food.repository.account;

import shopbae.food.model.Account;
import shopbae.food.service.IGeneral;

public interface IAccountRepository extends IGeneral<Account> {
	Account findByName(String name);

	Long findIdUserByUserName(String userName);

	boolean existsAccountByUserName(String username);
}
