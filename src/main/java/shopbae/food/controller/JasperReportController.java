package shopbae.food.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import shopbae.food.service.jasperReport.JasperReport;
import shopbae.food.service.jasperReport.JasperReportImpl;

@Controller
@RequestMapping("/jasper")
public class JasperReportController {
//	@Autowired
//    private JasperReport jasperReportService;

    @GetMapping("/report")
    public void generateReport(HttpServletResponse response) throws Exception {
        new JasperReportImpl().generateReport(response);
    }
}
