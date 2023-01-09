package shopbae.food.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import shopbae.food.model.Account;
import shopbae.food.service.IGeneral;


public interface IAccountRepository extends IGeneral<Account>{
	List<Account> findByName(String name);
}
