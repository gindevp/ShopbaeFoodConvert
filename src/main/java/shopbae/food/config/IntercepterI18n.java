package shopbae.food.config;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
@Component
public class IntercepterI18n implements HandlerInterceptor {
	/**
	 * this method use for setting
	 */
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("i18nIceptor");
        String lang = request.getParameter("language");
        Locale locale = LocaleContextHolder.getLocale();

        if (!StringUtils.isEmpty(lang)) {
            String[] language = lang.split("_");
            locale = new Locale(language[0], language[1]);
            LocaleContextHolder.setLocale(locale);
        }
        System.out.println(LocaleContextHolder.getLocale());
        return true;
    }
}
