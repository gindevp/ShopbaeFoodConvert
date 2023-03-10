package shopbae.food.config;

import java.io.IOException;
import java.util.Locale;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "shopbae.food")
@EnableTransactionManagement
@PropertySource("classpath:upload_file.properties")
public class AppConfig implements WebMvcConfigurer {
	@Value("${file-upload}")
	private String fileUpload;
	@Autowired
	private IntercepterI18n i18n;
	@Autowired
	private Environment env;

	/**
	 * this method use for setting
	 */
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	/**
	 * this method use for setting
	 * 
	 * @return InternalResourceViewResolver
	 */
	@Bean
	public InternalResourceViewResolver getInternalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	/**
	 * this method use for setting
	 * 
	 * @param sessionFactory
	 * @return HibernateTransactionManager
	 */
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}

	/**
	 * this method use for setting
	 * 
	 * @return PersistenceExceptionTranslationPostProcessor
	 */
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}

	/**
	 * this method use for setting
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
		registry.addResourceHandler("/image/**").addResourceLocations("file:" + env.getProperty("file-upload"));

	}

	/**
	 * this method use for setting
	 * 
	 * @return CommonsMultipartResolver
	 * @throws IOException
	 */
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getResolver() throws IOException {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		// max la 52mb
		resolver.setMaxUploadSizePerFile(52428800);
		return resolver;
	}

	// Config i18n_springMVC start

	/**
	 * this method use for setting
	 * 
	 * @return MessageSource
	 */
	@Bean(name = "messageSource")
	public MessageSource getMessageSource() {
		ReloadableResourceBundleMessageSource ret = new ReloadableResourceBundleMessageSource();

		// Set the base name for the messages properties file.
		ret.setBasename("classpath:/i18n/messages");
		ret.addBasenames("classpath:application");
		ret.setDefaultEncoding("utf-8");

		return ret;
	}

	/**
	 * this method use for setting
	 */
	@Bean
	@Override
	public Validator getValidator() {
		LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
		bean.setValidationMessageSource(getMessageSource());
		return bean;
	}

	/**
	 * this method use for setting
	 * 
	 * @return CookieLLoaclResolver
	 */
	@Bean(name = "localeResolver")
	public CookieLocaleResolver getCookieLocaleResolver() {
		// Create a CookieLocaleResolver object.
		CookieLocaleResolver localeResolver = new CookieLocaleResolver();
		// Set cookie name
		localeResolver.setCookieName("myAppLocaleCookie");
		// Set default locale value.
		localeResolver.setDefaultLocale(Locale.US);
		// Set cookie max exist time.
		localeResolver.setCookieMaxAge(3600);

		return localeResolver;
	}

	/**
	 * this method use for setting
	 * 
	 * @return LocaleChangeInterceptor
	 */
	@Bean(name = "localeInterceptor")
	public LocaleChangeInterceptor getLocaleInterceptor() {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("language");
		return interceptor;
	}

	/*
	 * Also need to register above locale interceptor in spring then it will
	 * intercept user request url and parse out the lang query string to get user
	 * request locale.
	 */
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(getLocaleInterceptor());
		registry.addInterceptor(i18n);
	}

	// end I18n
}
