package shopbae.food.service;

import java.util.List;


import shopbae.food.model.Product;

public interface IProductService extends IGeneral<Product>{
	List<Product> findByName(String name);
}
