package shopbae.food.repository;

import java.util.List;

import shopbae.food.model.AppUser;
import shopbae.food.service.IGeneral;

public interface IAppUserRepository extends IGeneral<AppUser> {
	AppUser findByName(String name);

	List<AppUser> getAllByStatus(String status);
}
