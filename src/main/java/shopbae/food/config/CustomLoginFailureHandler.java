package shopbae.food.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import shopbae.food.model.Account;
import shopbae.food.service.account.AccountService;
import shopbae.food.util.AccountStatus;
 
@Component
public class CustomLoginFailureHandler extends SimpleUrlAuthenticationFailureHandler {
	public static final int MAX_FAILED_ATTEMPTS = 3;
    @Autowired
    private AccountService accountService;
     
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException exception) throws IOException, ServletException {
        String userName = request.getParameter("userName");
        Account account = accountService.findByName(userName);
         
        if (account != null) {
        	boolean hasError = false;
        	if (account.getMerchant() != null&& !hasError) {
				if (AccountStatus.PENDING.toString().equals(account.getMerchant().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.PENDING.toString());
//					System.out.println(LocaleContextHolder.getLocale());
//					throw new BadCredentialsException(messageSource.getMessage("greeting", null,LocaleContextHolder.getLocale()));
				}
				if (AccountStatus.BLOCK.toString().equals(account.getMerchant().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.BLOCK.toString());
				}
				if (AccountStatus.REFUSE.toString().equals(account.getMerchant().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.REFUSE.toString());
				}
				
			}
			if (account.getUser() != null&& !hasError) {
				if (AccountStatus.PENDING.toString().equals(account.getUser().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.PENDING.toString());
//					System.out.println(LocaleContextHolder.getLocale());
//					throw new BadCredentialsException(messageSource.getMessage("greeting", null,LocaleContextHolder.getLocale()));
				}
				if (AccountStatus.BLOCK.toString().equals(account.getUser().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.BLOCK.toString());
				}
				if (AccountStatus.REFUSE.toString().equals(account.getUser().getStatus())) {
					hasError = true;
					exception = new LockedException(AccountStatus.REFUSE.toString());
				}
			
			}
            if (!account.isAccountNonLocked()&& !hasError) {
                if (account.getFailedAttempt() < MAX_FAILED_ATTEMPTS - 1) {
                	if(account.getFailedAttempt() == 0) {
						exception = new LockedException("2_time");
					}
					if(account.getFailedAttempt() == 1) {
						exception = new LockedException("1_time");
					}
                    accountService.increaseFailedAttempts(account);
                } else {
                    accountService.lock(account);
                    exception = new LockedException("block_user_time");
                }
            } else if (account.isAccountNonLocked()) {
                if (accountService.unlockWhenTimeExpired(account)) {
                    exception = new LockedException("un_block_user_time");
                }
            }
             
        }else {
        	exception = new LockedException(AccountStatus.ERORR_UP.toString());
		}
         
        super.setDefaultFailureUrl("/login?error");
        super.onAuthenticationFailure(request, response, exception);
    }
 
}