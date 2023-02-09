package shopbae.food.repository.product;

import java.util.List;
import shopbae.food.model.Product;
import shopbae.food.service.IGeneral;

public interface IProductRepository extends IGeneral<Product> {
	Product findByName(String name);

	List<Product> getAllByDeleteFlagTrueAndMerchant(Long id);

	List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id, String name);
}
