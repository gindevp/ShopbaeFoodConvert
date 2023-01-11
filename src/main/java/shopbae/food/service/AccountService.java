package shopbae.food.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import shopbae.food.model.Account;
import shopbae.food.model.AccountDetails;
import shopbae.food.repository.IAccountRepository;

@Service
public class AccountService implements IAccountService, UserDetailsService {
	@Autowired
	private IAccountRepository accountRepository;

	@Override
	public Account findById(Long id) {
		// TODO Auto-generated method stub
		return accountRepository.findById(id);
	}

	@Override
	public void save(Account t) {
		// TODO Auto-generated method stub
		accountRepository.save(t);
	}

	@Override
	public void update(Account t) {
		// TODO Auto-generated method stub
		accountRepository.update(t);
	}

	@Override
	public void delete(Account t) {
		// TODO Auto-generated method stub
		accountRepository.delete(t);
	}

	@Override
	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public Account findByName(String name) {
		// TODO Auto-generated method stub
		return accountRepository.findByName(name);
	}

	@Override
	public Long findIdUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return accountRepository.findIdUserByUserName(userName);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Account account = this.accountRepository.findByName(username);
		return AccountDetails.build(account);
	}

	@Override
	public boolean existsAccountByUserName(String username) {
		// TODO Auto-generated method stub
		return accountRepository.existsAccountByUserName(username);
	}

}
