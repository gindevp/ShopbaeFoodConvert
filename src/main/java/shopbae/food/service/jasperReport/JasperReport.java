package shopbae.food.service.jasperReport;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

public interface JasperReport {
	List<Map<String, ?>> generateReport() throws Exception;
}
