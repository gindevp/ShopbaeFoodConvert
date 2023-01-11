package shopbae.food.repository;

import shopbae.food.model.AppRoles;

public interface IRoleRepository{
	AppRoles findByName(String name);

	void setDefaultRole(Long accountId, Integer roleId);
}
