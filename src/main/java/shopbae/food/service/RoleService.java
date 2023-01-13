package shopbae.food.service;

import org.springframework.beans.factory.annotation.Autowired;

import shopbae.food.model.AppRoles;
import shopbae.food.repository.IRoleRepository;

public class RoleService implements IRoleService {
	@Autowired
	private IRoleRepository roleRepository;

	@Override
	public AppRoles findByName(String name) {
		// TODO Auto-generated method stub
		return roleRepository.findByName(name);
	}

	@Override
	public void setDefaultRole(Long accountId, Integer roleId) {
		// TODO Auto-generated method stub
		roleRepository.setDefaultRole(accountId, roleId);
	}

}
