package shopbae.food.service.role;

import shopbae.food.model.AppRoles;

public interface IRoleService {
	AppRoles findByName(String name);

	void setDefaultRole(Long accountId, Long roleId);
}
