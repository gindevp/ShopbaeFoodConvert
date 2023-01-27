package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.Cart;
import shopbae.food.service.IGeneral;

public interface ICartRepository extends IGeneral<Cart>{
	List<Cart> findAllByUser(Long id);

   Cart findByProduct(Long id);

//    @Query(value = "select * from cart where product_id = ?1 and user_id= ?2", nativeQuery = true)
    Cart findByProductIdAndUserId(Long product_id, Long user_id);


//    @Query(value = "insert into product_cart(cart_id,product_id) values (?1,?2)", nativeQuery = true)
    void setProductCart(Long cart_id, Long product_id);


//    @Query(value = "update cart set quantity = ?1 where id=?2", nativeQuery = true)
    void updateQuantity(int quantity,Long cart_id);

    void deletesByUser(Long id);
}
