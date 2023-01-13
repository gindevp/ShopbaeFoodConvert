package shopbae.food.service;

import java.util.List;

import shopbae.food.model.Merchant;

public interface IMerchantService extends IGeneral<Merchant> {
	Merchant findByName(String name);

	List<Merchant> getAllByMerchantStatus(String status);

	List<Merchant> findAllMerchantAndNameContainer(String name);

	void saveMerchantToRegister(String address, String avatar, String name, String phone, String status,
			Long account_id);
}
