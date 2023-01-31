package shopbae.food.service.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.Product;
import shopbae.food.repository.product.IProductRepository;

@Service
public class ProductService implements IProductService {
	@Autowired
	private IProductRepository productRepository;

	@Override
	public Product findById(Long id) {
		// TODO Auto-generated method stub
		return productRepository.findById(id);
	}

	@Override
	public void save(Product t) {
		// TODO Auto-generated method stub
		productRepository.save(t);
	}

	@Override
	public void update(Product t) {
		// TODO Auto-generated method stub
		productRepository.update(t);
	}

	@Override
	public void delete(Product t) {
		// TODO Auto-generated method stub
		productRepository.delete(t);
	}

	@Override
	public List<Product> findAll() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}

	@Override
	public Product findByName(String name) {
		// TODO Auto-generated method stub
		return productRepository.findByName(name);
	}

	@Override
	public List<Product> getAllByDeleteFlagTrueAndMerchant(Long id) {
		// TODO Auto-generated method stub
		return productRepository.getAllByDeleteFlagTrueAndMerchant(id);
	}

	@Override
	public List<Product> fAllByDeleFlagTAndMerAndNameContai(Long id, String name) {
		// TODO Auto-generated method stub
		return productRepository.fAllByDeleFlagTAndMerAndNameContai(id, name);
	}

}