
package shopbae.food.service.user;

import java.util.List;

import shopbae.food.model.AppUser;
import shopbae.food.service.IGeneral;

public interface IAppUserService extends IGeneral<AppUser> {
	AppUser findByName(String name);

	List<AppUser> getAllByStatus(String status);
}
