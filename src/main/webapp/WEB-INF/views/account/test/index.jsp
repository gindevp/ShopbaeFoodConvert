<%@page import="java.nio.file.Files"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.charset.StandardCharsets"%>
<%@ page contentType="application/pdf"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page import="net.sf.jasperreports.engine.data.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%
try {
	@SuppressWarnings("unchecked")
	List<Map<String, ?>> dataSource = (List<Map<String, ?>>) request.getAttribute("listProducts");
	@SuppressWarnings("unchecked")
	Map<String, Object> m1 = (Map<String, Object>) request.getAttribute("param");
	System.out.print("dataS " + dataSource);
	System.out.print("m1 " + m1);
	JRDataSource jrDataSource = new JRBeanCollectionDataSource(dataSource);
	String jrxmlFile = session.getServletContext().getRealPath("/report/report.jrxml");
	/* 	Path path= Paths.get(jrxmlFile);
		String s= Files.readString(path,StandardCharsets.UTF_8);
		InputStream input= new ByteArrayInputStream(s.getBytes(StandardCharsets.UTF_8)); */
	InputStream input = new FileInputStream(new File(jrxmlFile));
	JasperReport jasperReport = JasperCompileManager.compileReport(input);
	JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, m1, jrDataSource);

	String fileName = UUID.randomUUID().toString() + ".pdf";
	System.out.print(fileName);
	// Export PDF to the file path
	JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
	response.getOutputStream().flush();
	response.getOutputStream().close();
} catch (Exception e) {
	e.printStackTrace();
}
%>