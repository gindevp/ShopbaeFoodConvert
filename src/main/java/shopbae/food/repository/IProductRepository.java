package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.Account;
import shopbae.food.model.Product;
import shopbae.food.service.IGeneral;

public interface IProductRepository extends IGeneral<Product> {
	List<Product> findByName(String name);
	List<Product> getAllByDeleteFlagTrueAndMerchant(Long id);
	List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id,String name);
}
