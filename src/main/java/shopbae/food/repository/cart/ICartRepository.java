package shopbae.food.repository.cart;

import java.util.List;

import shopbae.food.model.Cart;
import shopbae.food.service.IGeneral;

public interface ICartRepository extends IGeneral<Cart> {
	List<Cart> findAllByUser(Long id);

	Cart findByProduct(Long id);

	Cart findByProductIdAndUserId(Long product_id, Long user_id);

	void setProductCart(Long cart_id, Long product_id);

	void updateQuantity(int quantity, Long cart_id);

	void deletesByUser(Long id);

	Cart findByProductAndFlag(Long id);
}
