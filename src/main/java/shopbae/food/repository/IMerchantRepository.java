package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.Account;
import shopbae.food.model.Merchant;
import shopbae.food.service.IGeneral;

public interface IMerchantRepository extends IGeneral<Merchant> {
	List<Merchant> findByName(String name);
	List<Merchant> getAllByMerchantStatus(String status);
	List<Merchant> findAllMerchantAndNameContainer(String name);
}
