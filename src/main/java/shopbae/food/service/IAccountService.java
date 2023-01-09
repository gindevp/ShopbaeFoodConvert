package shopbae.food.service;

import java.util.List;

import shopbae.food.model.Account;

public interface IAccountService extends IGeneral<Account>{
	List<Account> findByName(String name);
}
