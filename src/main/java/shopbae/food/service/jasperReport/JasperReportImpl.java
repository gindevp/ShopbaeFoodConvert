package shopbae.food.service.jasperReport;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import net.sf.jasperreports.data.DataSourceCollection;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import shopbae.food.model.dto.ProductJasper;
import shopbae.food.model.dto.ProductModelJasper;
@Service
public class JasperReportImpl implements JasperReport {

	@Override
	public List<Map<String, ?>> generateReport() throws Exception {
//		// TODO Auto-generated method stub
//		// Prepare Jasper Report
//        net.sf.jasperreports.engine.JasperReport jasperReport = JasperCompileManager.compileReport("src/main/resources/report.jrxml");
//
//        // Fill report with data
//        Map<String, Object> data = new HashMap<>();
//        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, data, new JREmptyDataSource());
//
//        // Export report to PDF
//        response.setContentType("application/pdf");
//        response.setHeader("Content-Disposition", "inline; filename=report.pdf");
//        final OutputStream outputStream = response.getOutputStream();
//        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);
	return findAll();
    }
	public List<Map<String, ?>> findAll() {
		List<Map<String, ?>> list = new ArrayList<Map<String, ?>>();
		ProductModelJasper jasper= new  ProductModelJasper();
		for (ProductJasper p : jasper.findAll()) {
			Map<String, Object> m= new HashMap<String,Object>();
			m.put("sum", p.getId());
			m.put("product_name", p.getName());
			m.put("product_price", p.getPrice());
			m.put("product_quantity", p.getQuantity());
			list.add(m);
		}
		return list;
	}
	
}
