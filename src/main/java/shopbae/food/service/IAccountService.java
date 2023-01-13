package shopbae.food.service;

import shopbae.food.model.Account;

public interface IAccountService extends IGeneral<Account>{
	Account findByName(String name);
	Long findIdUserByUserName(String userName);
	boolean existsAccountByUserName(String username);
}
 