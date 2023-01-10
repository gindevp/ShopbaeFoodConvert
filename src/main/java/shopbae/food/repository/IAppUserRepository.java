package shopbae.food.repository;

import java.util.List;


import shopbae.food.model.AppUser;
import shopbae.food.service.IGeneral;

public interface IAppUserRepository extends IGeneral<AppUser>{
	List<AppUser> findByName(String name);
}
