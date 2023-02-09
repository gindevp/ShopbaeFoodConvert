package shopbae.food.service.product;

import java.util.List;

import shopbae.food.model.Product;
import shopbae.food.service.IGeneral;

public interface IProductService extends IGeneral<Product> {
	Product findByName(String name);

	List<Product> getAllByDeleteFlagTrueAndMerchant(Long id);

	List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id, String name);
}
