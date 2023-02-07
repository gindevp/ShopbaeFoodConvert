package shopbae.food.service.jasperReport;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

public class JasperReportImpl implements JasperReport {

	@Override
	public void generateReport(HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		// Prepare Jasper Report
        net.sf.jasperreports.engine.JasperReport jasperReport = JasperCompileManager.compileReport("src/main/resources/report.jrxml");

        // Fill report with data
        Map<String, Object> data = new HashMap<>();
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, data, new JREmptyDataSource());

        // Export report to PDF
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "inline; filename=report.pdf");
        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
    }
	
	
}
