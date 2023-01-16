package shopbae.food.service;

import shopbae.food.model.AppRoles;

public interface IRoleService {
	AppRoles findByName(String name);

	void setDefaultRole(Long accountId, Long roleId);
}
