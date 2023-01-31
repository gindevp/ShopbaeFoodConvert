package shopbae.food.service.merchant;

import java.util.List;

import shopbae.food.model.Merchant;
import shopbae.food.service.IGeneral;

public interface IMerchantService extends IGeneral<Merchant> {
	Merchant findByName(String name);

	List<Merchant> getAllByMerchantStatus(String status);

	List<Merchant> findAllMerchantAndNameContainer(String name);

	Merchant findByAccount(Long id);
}