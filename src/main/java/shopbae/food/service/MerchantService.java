package shopbae.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.Merchant;
import shopbae.food.repository.IMerchantRepository;
@Service
public class MerchantService implements IMerchantService {
	@Autowired
	private IMerchantRepository merchantRepository;

	@Override
	public Merchant findById(Long id) {
		// TODO Auto-generated method stub
		return merchantRepository.findById(id);
	}

	@Override
	public void save(Merchant t) {
		// TODO Auto-generated method stub
		merchantRepository.save(t);
	}

	@Override
	public void update(Merchant t) {
		// TODO Auto-generated method stub
		merchantRepository.update(t);
	}

	@Override
	public void delete(Merchant t) {
		// TODO Auto-generated method stub
		merchantRepository.delete(t);
	}

	@Override
	public List<Merchant> findAll() {
		// TODO Auto-generated method stub
		return merchantRepository.findAll();
	}

}
