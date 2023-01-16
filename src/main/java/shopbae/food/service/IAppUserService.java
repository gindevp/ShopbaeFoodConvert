
package shopbae.food.service;

import java.util.List;

import shopbae.food.model.AppUser;


public interface IAppUserService extends IGeneral<AppUser> {
	AppUser findByName(String name);
	List<AppUser> getAllByStatus(String status);
}
