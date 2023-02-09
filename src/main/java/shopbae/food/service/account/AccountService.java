package shopbae.food.service.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import shopbae.food.model.Account;
import shopbae.food.model.AccountDetails;
import shopbae.food.repository.account.IAccountRepository;

@Service
public class AccountService implements IAccountService, UserDetailsService {
	@Autowired
	private IAccountRepository accountRepository;

	@Override
	public Account findById(Long id) {
		return accountRepository.findById(id);
	}

	@Override
	public void save(Account t) {
		accountRepository.save(t);
	}

	@Override
	public void update(Account t) {
		accountRepository.update(t);
	}

	@Override
	public void delete(Account t) {
		accountRepository.delete(t);
	}

	@Override
	public List<Account> findAll() {
		return accountRepository.findAll();
	}

	@Override
	public Account findByName(String name) {
		return accountRepository.findByName(name);
	}

	@Override
	public Long findIdUserByUserName(String userName) {
		return accountRepository.findIdUserByUserName(userName);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = this.accountRepository.findByName(username);
		return AccountDetails.build(account);
	}

	@Override
	public boolean existsAccountByUserName(String username) {
		return accountRepository.existsAccountByUserName(username);
	}

}
