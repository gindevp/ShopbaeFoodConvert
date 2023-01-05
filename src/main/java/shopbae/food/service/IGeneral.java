package shopbae.food.service;
import java.util.List;

public interface IGeneral<T> {

	T findById(Long id);
	void save(T t);
	void update(T t);
	void delete(T t);
	List<T> findAll();
}