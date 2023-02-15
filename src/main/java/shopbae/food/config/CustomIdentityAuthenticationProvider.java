package shopbae.food.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import shopbae.food.model.Account;
import shopbae.food.util.*;
import shopbae.food.service.account.IAccountService;

@Component
public class CustomIdentityAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	private IAccountService accountService;
	
	UserDetails isValidUser(String username, String password) {
		Account account = accountService.findByName(username);
		if (account != null && username.equalsIgnoreCase(account.getUserName())
				&& passwordEncoder.matches(password, account.getPassword())) {

			UserDetails user = accountService.loadUserByUsername(username);

			return user;
		}
		return null;
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();

		UserDetails userDetails = isValidUser(username, password);

		if (userDetails != null) {
			Account account = accountService.findByName(username);
			
			if (account.getMerchant() != null||account.getUser() != null) {
				if (AccountStatus.PENDING.toString().equals(account.getMerchant().getStatus())) {
					throw new BadCredentialsException(AccountStatus.PENDING.toString());
//					System.out.println(LocaleContextHolder.getLocale());
//					throw new BadCredentialsException(messageSource.getMessage("greeting", null,LocaleContextHolder.getLocale()));
				}
				if (AccountStatus.BLOCK.toString().equals(account.getMerchant().getStatus())) {
					throw new BadCredentialsException(AccountStatus.BLOCK.toString());
				}
				if (AccountStatus.REFUSE.toString().equals(account.getMerchant().getStatus())) {
					throw new BadCredentialsException(AccountStatus.REFUSE.toString());
				}
			}

			return new UsernamePasswordAuthenticationToken(username, password, userDetails.getAuthorities());
		} else {
			throw new BadCredentialsException(AccountStatus.ERORR_UP.toString());
		}
	}

	@Override
	public boolean supports(Class<?> authenticationType) {
		return authenticationType.equals(UsernamePasswordAuthenticationToken.class);
	}

}