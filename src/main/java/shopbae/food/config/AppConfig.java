package shopbae.food.config;

import java.io.IOException;
import java.util.Locale;

import org.hibernate.SessionFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
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
public class AppConfig implements WebMvcConfigurer, ApplicationContextAware{
	@Value("${file-upload}")
    private String fileUpload;
	private ApplicationContext applicationContext;

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		// TODO Auto-generated method stub
		configurer.enable();;
	}
	@Bean
	public InternalResourceViewResolver getInternalResourceViewResolver() {
		InternalResourceViewResolver resolver= new  InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		// TODO Auto-generated method stub
		this.applicationContext = applicationContext;
	}
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}
	
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	    registry.addResourceHandler("/image/**")
	            .addResourceLocations("file:" + fileUpload);

	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getResolver() throws IOException {
	    CommonsMultipartResolver resolver = new CommonsMultipartResolver();
	    //max la 52mb
	    resolver.setMaxUploadSizePerFile(52428800);
	    return resolver;
	}
	
	//Cấu hình i18n_springMVC start
	@Bean(name = "messageSource")
    public MessageSource getMessageSource() {
        ReloadableResourceBundleMessageSource ret = new ReloadableResourceBundleMessageSource();

        // Set the base name for the messages properties file. 
        ret.setBasename("/i18n/messages");

        ret.setDefaultEncoding("utf-8");

        return ret;
    }
	@Bean(name = "localeResolver")
    public CookieLocaleResolver getCookieLocaleResolver(){
        // Create a CookieLocaleResolver object.
        CookieLocaleResolver localeResolver = new CookieLocaleResolver();
        // Set cookie name
        localeResolver.setCookieName("myAppLocaleCookie");
        // Set default locale value.
        localeResolver.setDefaultLocale(Locale.ENGLISH);
        // Set cookie max exist time.
        localeResolver.setCookieMaxAge(3600);

        return localeResolver;
    }
	@Bean(name="localeInterceptor")
    public LocaleChangeInterceptor getLocaleInterceptor(){
        LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
        interceptor.setParamName("language");
        return interceptor;
    }

    /* Also need to register above locale interceptor in spring then it will intercept user request url and parse out the lang query string to get user request locale.*/
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(getLocaleInterceptor());
    }
    
    // end I18n
}
