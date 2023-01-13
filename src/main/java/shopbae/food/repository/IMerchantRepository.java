package shopbae.food.repository;

import java.util.List;
import shopbae.food.model.Merchant;
import shopbae.food.service.IGeneral;

public interface IMerchantRepository extends IGeneral<Merchant> {
	Merchant findByName(String name);

	List<Merchant> getAllByMerchantStatus(String status);

	List<Merchant> findAllMerchantAndNameContainer(String name);

	void saveMerchantToRegister(String address, String avatar, String name, String phone, String status,
			Long account_id);
}
