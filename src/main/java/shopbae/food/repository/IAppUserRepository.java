package shopbae.food.repository;

import shopbae.food.model.AppUser;
import shopbae.food.service.IGeneral;

public interface IAppUserRepository extends IGeneral<AppUser> {
	AppUser findByName(String name);

	void saveUserToRegister(String address, String avatar, String name, String phone, String status, Long account_id);
}
