package shopbae.food.service.jasperReport;

import javax.servlet.http.HttpServletResponse;

public interface JasperReport {
	void generateReport(HttpServletResponse response) throws Exception;
}
