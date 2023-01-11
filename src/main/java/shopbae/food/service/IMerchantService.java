package shopbae.food.service;

import java.util.List;


import shopbae.food.model.Merchant;

public interface IMerchantService extends IGeneral<Merchant> {
	List<Merchant> findByName(String name);
	List<Merchant> getAllByMerchantStatus(String status);
	List<Merchant> findAllMerchantAndNameContainer(String name);
}
