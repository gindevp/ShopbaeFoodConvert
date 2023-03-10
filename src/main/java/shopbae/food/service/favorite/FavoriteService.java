package shopbae.food.service.favorite;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shopbae.food.model.Favorite;
import shopbae.food.repository.favorite.IFavoriteRepository;
@Service
public class FavoriteService implements IFavoriteService{
	@Autowired
	private IFavoriteRepository favoriteRepository;
	@Override
	public Favorite findById(Long id) {
		// TODO Auto-generated method stub
		return favoriteRepository.findById(id);
	}

	@Override
	public void save(Favorite t) {
		// TODO Auto-generated method stub
		 favoriteRepository.save(t);
	}

	@Override
	public void update(Favorite t) {
		// TODO Auto-generated method stub
		favoriteRepository.update(t);
	}

	@Override
	public void delete(Favorite t) {
		// TODO Auto-generated method stub
		favoriteRepository.delete(t);
	}

	@Override
	public List<Favorite> findAll() {
		// TODO Auto-generated method stub
		return favoriteRepository.findAll();
	}

}
