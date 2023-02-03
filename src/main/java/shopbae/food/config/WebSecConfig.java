package shopbae.food.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import shopbae.food.service.account.IAccountService;

@Configuration
@EnableWebSecurity
public class WebSecConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private CustomSuccessHandler customSuccessHandler;

	@Autowired
	private IAccountService accountService;

	@Autowired
	private CustomIdentityAuthenticationProvider customIdentityAuthenticationProvider;

	@Override
	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(customIdentityAuthenticationProvider);
//		auth.userDetailsService((UserDetailsService) accountService).passwordEncoder(passwordEncoder());
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
//		.antMatchers("/**").permitAll()
				.antMatchers("/login", "/register/**", "/home/**", "/static/**", "/merchantp/**",
						"/forgotpass/**", "/change-pass/**","/account/","/socket/**")
				.permitAll()
				.antMatchers("/admin/**").hasRole("ADMIN")
				.antMatchers("/user-info", "/cart/**").hasRole("USER")
				.antMatchers("/merchant/**").hasRole("MERCHANT")
				.antMatchers("/**").hasAnyRole("ADMIN")
				.and().formLogin().loginPage("/login")
				.usernameParameter("userName").successHandler(customSuccessHandler).and().logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout")).and().csrf().disable();

//		   http
//	        .sessionManagement(session -> session
//	            .sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
//	            .invalidSessionUrl("/login")
//	        );

		http.sessionManagement().maximumSessions(1).expiredUrl("/login?expired=true");

	}

}
