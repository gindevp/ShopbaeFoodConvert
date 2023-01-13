
package shopbae.food.service;

import shopbae.food.model.AppUser;

public interface IAppUserService extends IGeneral<AppUser> {
	AppUser findByName(String name);

	void saveUserToRegister(String address, String avatar, String name, String phone, String status, Long account_id);
}
