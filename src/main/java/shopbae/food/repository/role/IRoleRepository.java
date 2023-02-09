package shopbae.food.repository.role;

import shopbae.food.model.AppRoles;

public interface IRoleRepository {
	AppRoles findByName(String name);

	void setDefaultRole(Long accountId, Long roleId);
}
