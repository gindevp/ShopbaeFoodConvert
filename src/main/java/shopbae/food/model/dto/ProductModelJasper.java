package shopbae.food.model.dto;

import java.util.ArrayList;
import java.util.List;

public class ProductModelJasper {
	public List<ProductJasper> findAll() {
		List<ProductJasper> jaspers= new ArrayList<>();
		jaspers.add(new ProductJasper("p1","name 1",5,10000));
		jaspers.add(new ProductJasper("p3","name 2",5,10000));
		jaspers.add(new ProductJasper("p4","name 3",5,10000));
		jaspers.add(new ProductJasper("p5","name 4",5,10000));
		jaspers.add(new ProductJasper("p6","name 45",5,10000));
		jaspers.add(new ProductJasper("p7","name 15",5,10000));
		return jaspers;
	}
}
