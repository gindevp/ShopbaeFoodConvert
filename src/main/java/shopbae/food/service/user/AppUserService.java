package shopbae.food.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.AppUser;
import shopbae.food.repository.user.IAppUserRepository;

@Service
public class AppUserService implements IAppUserService {
	@Autowired
	IAppUserRepository appUserRepository;

	@Override
	public AppUser findById(Long id) {
		// TODO Auto-generated method stub
		return appUserRepository.findById(id);
	}

	@Override
	public void save(AppUser t) {
		// TODO Auto-generated method stub
		appUserRepository.save(t);
	}

	@Override
	public void update(AppUser t) {
		// TODO Auto-generated method stub
		appUserRepository.update(t);
	}

	@Override
	public void delete(AppUser t) {
		// TODO Auto-generated method stub
		appUserRepository.delete(t);
	}

	@Override
	public List<AppUser> findAll() {
		// TODO Auto-generated method stub
		return appUserRepository.findAll();
	}

	@Override
	public AppUser findByName(String name) {
		// TODO Auto-generated method stub
		return appUserRepository.findByName(name);
	}

	@Override
	public List<AppUser> getAllByStatus(String status) {
		// TODO Auto-generated method stub
		return appUserRepository.getAllByStatus(status);
	}


}
