package shopbae.food.service;

import java.util.List;
import java.util.Optional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.AppUser;
import shopbae.food.model.Cart;
import shopbae.food.model.Product;
import shopbae.food.repository.ICartRepository;
@Service
public class CartService implements ICartService{
@Autowired
ICartRepository cartRepository;
	@Override
	public Cart findById(Long id) {
		// TODO Auto-generated method stub
		return cartRepository.findById(id);
	}

	@Override
	public void save(Cart t) {
		// TODO Auto-generated method stub
		cartRepository.save(t);
	}

	@Override
	public void update(Cart t) {
		// TODO Auto-generated method stub
		cartRepository.update(t);
	}

	@Override
	public void delete(Cart t) {
		// TODO Auto-generated method stub
		cartRepository.delete(t);
	}

	@Override
	public List<Cart> findAll() {
		// TODO Auto-generated method stub
		return cartRepository.findAll();
	}

	@Override
	public List<Cart> findAllByUser(Long id) {
		// TODO Auto-generated method stub
		return cartRepository.findAllByUser(id);
	}

	@Override
	public Cart findByProduct(Long id) {
		// TODO Auto-generated method stub
		return findByProduct(id);
	}

	@Override
	public Cart findByProductIdAndUserId(Long product_id, Long user_id) {
		// TODO Auto-generated method stub
		return findByProductIdAndUserId(product_id, user_id);
	}

	@Override
	public void setProductCart(Long cart_id, Long product_id) {
		// TODO Auto-generated method stub
		cartRepository.setProductCart(cart_id, product_id);
	}

	@Override
	public void updateQuantity(int quantity, Long cart_id) {
		// TODO Auto-generated method stub
		cartRepository.updateQuantity(quantity, cart_id);
	}

	@Override
	public void deletesByUser(Long id) {
		// TODO Auto-generated method stub
		cartRepository.deletesByUser(id);
	}

	@Override
	public void removeAll() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Cart findCartById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cart updateCart(Long id, Cart cart) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addToCart(Cart cart) {
		// TODO Auto-generated method stub
		Optional<Cart> cartOptional = Optional.ofNullable(cartRepository.findByProductIdAndUserId(cart.getProduct().getId(), cart.getUser().getId()));
        if (cartOptional.isPresent()) {
            this.updateQuantityCart(cart.getProduct().getId(), cart.getUser().getId());
        } else {
            int quantity = 1;
            cart.setQuantity(quantity);
            this.saveCart(quantity, cart.getPrice(), cart.getUser().getId(), cart.getProduct().getId(), cart.getTotalPrice());
        }
	}
	public void saveCart(int quantity, double price, Long userID, Long productId, double totalPrice) {
		Cart cart= new Cart();
		cart.setQuantity(quantity);
		cart.setPrice(price);
		AppUser appUser= new  AppUser();
		appUser.setId(userID);
		cart.setUser(appUser);
		Product product= new Product();
		product.setId(productId);
		cart.setProduct(product);
		cart.setTotalPrice(totalPrice);
        cartRepository.save(cart);
        Optional<Cart> cart1 = Optional.ofNullable(cartRepository.findByProductIdAndUserId(productId, userID));
        this.setProductCart(cart1.get().getId(), productId);
    }
	private void updateQuantityCart(Long id, Long id2) {
		// TODO Auto-generated method stub
		 Optional<Cart> cart = Optional.ofNullable(cartRepository.findByProductIdAndUserId(id, id2));
	        int quantity = cart.get().getQuantity() + 1;
	        cartRepository.updateQuantity(quantity, cart.get().getId());
	}
	@Override
	public Cart findByProductAndFlag(Long id) {
		return cartRepository.findByProductAndFlag(id);
	}
}
