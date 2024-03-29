package shopbae.food.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import shopbae.food.model.Account;
import shopbae.food.service.account.IAccountService;
import shopbae.food.service.cart.ICartService;
import shopbae.food.util.Auth;

@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private static final String ACCOUNT = "account";

    private static final String MERCHANT = "merchant";

    private static final String USER = "user";

    private static final String USER_ID = "userId";

    private static final String USERNAME = "username";

    private static final String AUTHORITIES = "authorities";

    @Autowired
    ICartService cartService;
    @Autowired
    private IAccountService accountService;

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
            throws IOException {
        System.out.println("auth");
        String targetUrl = determineTargetUrl(authentication);

        if (response.isCommitted()) {
            System.out.println("Can't redirect");
            return;
        }
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(1600);
        Account account = accountService.findByName(authentication.getName());
        session.setAttribute("ss", "true");
        session.setAttribute(ACCOUNT, account);
        if (account.getMerchant() != null) {
            session.setAttribute(MERCHANT, account.getMerchant());
        }
        if (account.getUser() != null) {
            if (session.getAttribute("merchant_old_id") != null) {
                Long merchant_old_id = (Long) session.getAttribute("merchant_old_id");
                Long product_old_id = (Long) session.getAttribute("product_old_id");
                targetUrl = "/merchantp/detail/" + merchant_old_id;
                cartService.addCart(product_old_id, account.getUser().getId());
                session.removeAttribute("merchant_old_id");
                session.removeAttribute("product_old_id");
                session.setAttribute("message", "da dang nhap");
                session.setAttribute("name", account.getUser().getName());
                session.setAttribute("avatar", account.getUser().getAvatar());
                session.setAttribute("role", "user");

            }
            session.setAttribute(USER, account.getUser());
            session.setAttribute(USER_ID, account.getUser().getId());
        }
        session.setAttribute(USERNAME, account.getUserName());
        session.setAttribute(AUTHORITIES, authentication.getAuthorities());

        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    /*
     * This method extracts the roles of currently logged-in user and returns
     * appropriate URL according to his/her role.
     */
    protected String determineTargetUrl(Authentication authentication) {

        String url = "";

        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

        List<String> roles = new ArrayList<String>();

        for (GrantedAuthority a : authorities) {
            roles.add(a.getAuthority());
        }
        if (isAdmin(roles)) {
            url = "/admin";
            return url;
        }

        if (isMerchant(roles)) {
            url = "/merchant";
            return url;
        }

        if (isUser(roles)) {
            url = "/home";
            return url;
        }

        return url;
    }

    private boolean isUser(List<String> roles) {
        if (roles.contains(Auth.ROLE_USER.toString())) {
            return true;
        }
        return false;
    }

    private boolean isAdmin(List<String> roles) {
        if (roles.contains(Auth.ROLE_ADMIN.toString())) {
            return true;
        }
        return false;
    }

    private boolean isMerchant(List<String> roles) {
        if (roles.contains(Auth.ROLE_MERCHANT.toString())) {
            return true;
        }
        return false;
    }

    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
        Account account = accountService.findByName(authentication.getName());
        if (account.getFailedAttempt() > 0) {
            accountService.resetFailedAttempts(account);
        }

        super.onAuthenticationSuccess(request, response, authentication);
    }

}
