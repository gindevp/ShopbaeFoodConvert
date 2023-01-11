package shopbae.food.service;

import java.util.List;


import shopbae.food.model.Product;

public interface IProductService extends IGeneral<Product>{
	List<Product> findByName(String name);
	List<Product> getAllByDeleteFlagTrueAndMerchant(Long id);
	List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id,String name);
}
