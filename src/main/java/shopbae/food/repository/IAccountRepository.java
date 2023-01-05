package shopbae.food.repository;

import org.springframework.stereotype.Repository;

import shopbae.food.model.Account;
import shopbae.food.service.IGeneral;

@Repository
public interface IAccountRepository extends IGeneral<Account>{

}
